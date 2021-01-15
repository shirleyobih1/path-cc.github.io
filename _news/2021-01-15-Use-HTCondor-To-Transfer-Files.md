---
title: "How to Transfer 460 Terabytes? A File Transfer Case Study" 
date: 2021-01-15T12:00:00+00:00
publish: true
--- 

When Greg Daues at the <a href="https://resources.istcoalition.org/national-center-for-supercomputing-applications" target="_blank">National Center for Supercomputing Applications (NCSA)</a> needed to transfer 460 Terabytes of NCSA files from <a href="https://in2p3.cnrs.fr/en/node/11" target="_blank">the National Institute of Nuclear and Particle Physics (IN2P3)</a> in Lyon, France to Urbana, Illinois, for a project they were working with <a href="https://www.fnal.gov/" target="_blank">FNAL</a>, <a href="https://cc.in2p3.fr/en/" target="_blank">CC-IN2P3</a> and the <a href="https://www.lsst.org/" target="_blank">Rubin Data Production team</a>, he turned to the <a href="https://research.cs.wisc.edu/htcondor/" target="_blank">HTCondor High Throughput system</a>, not to run computationally intensive jobs, as many do, but to manage the hundreds of thousands of I/O bound transfers.

<h2>The Data</h2>

IN2P3 made the data available via https, but the number of files and their total size made the management of the transfer an engineering challenge.  There were two kinds of files to be transferred, with 3.5 million files with a median size of roughly 100 Mb, and another 3.5 million smaller files, with a median size of about 10 megabytes.  Total transfer size is roughly 460 Terabytes.

<h2>The Requirements</h2>

The requirement for this transfer was to reliably transfer all the files in a reasonably performant way, minimizing the human time to set up, run, and manage the transfer.  Note the noni-goal of optimizing for the fastest possible transfer time -- reliability and minimizing the human effort take priority here.  Reliability, in this context implies:

Failed transfers are identified and re-run (with millions of files, a failed transfer is almost inevitable)
Every file will get transferred
The operation will not overload the sender, the receiver, or any network in between

<h2>The Inspiration</h2>

Daues presented unrelated work at the <a href="https://research.cs.wisc.edu/htcondor/HTCondorWeek2017/" target="_blank">2017 HTCondor Week workshop</a>.  At this workshop, he heard about the work of Phillip Papodopolous at UCSD, and his international Data Placement Lab (iDPL).   iDPL used HTCondor jobs solely for transferring data between international sites.  Daues re-used and adapted some of these ideas for NCSA’s needs.

<h2>The Solution</h2>
First, Daues installed a <a href="https://hub.docker.com/r/htcondor/mini" target="_blank">“mini-condor”</a>, an HTCondor pool entirely on one machine, with an access point and eight execution slots on that same machine.  Then, given a single large file containing the names of all the files to transfer, he ran the Unix split command to create separate files with either 50 of the larger files, or 200 of the smaller files.  Finally, using the HTCondor submit file command 

Queue filename matching files *.txt

the condor_submit command creates one job per split file, which runs the wget2 command and passes the list of filenames to wget2.  The HTCondor access point can handle tens of thousands of idle jobs, and will schedule these jobs on the eight execution slots.  While more slots would yield more overlapped i/o, eight slots were chosen to throttle the total network bandwidth used.  Over the course of days, this machine with eight slots maintained roughly 600 MB/seconds.

*(Note that the machine running HTCondor did not crash during this run, but if it had, all the jobs, after submission, were stored reliably on the local disk, and at such time as the crashed machine restarted, and the init program restarted the HTCondor system, all interrupted jobs would be restarted, and the process would continue without human intervention.)*
