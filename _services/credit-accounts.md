---
title: "Credit Accounts"
date: 2021-07-26T14:11:26+10:00
featured: true
excerpt: |
    The Partnership to Advance Throughput Computing (PATh) project is funded by the
    NSF to advance High Throughput Computing (HTC) and its impact on research and
    education. To achieve this goal, PATh operates a fabric of capacity services
    that ranges from Research Computing Facilitation, to Access Points capable of
    managing distributed HTC workloads. Starting January 2022, PATh will add to its
    fabric of services support for capacity credit accounts.
weight: 3
published: true
---

The [Partnership to Advance Throughput Computing (PATh)](/) 
project is funded by the NSF to advance 
[High Throughput Computing (HTC)](https://research.cs.wisc.edu/htcondor/htc.html) 
and its impact on research and
education. To achieve this goal, PATh operates a fabric of capacity services
that range from Research Computing Facilitation, to Access Points capable of
managing distributed HTC workloads. Starting January 2022, PATh will add 
support for capacity credit accounts. These accounts will
provide dedicated HTC computing resources and storage capacity for scholars with 
HTC workloads. NSF will deposit credit into these accounts
when funding a proposal that includes a request for credits.

A team of PATh Facilitators is available to guide PIs in effectively using PATh-supported
Access Points to manage their HTC workloads that utilize their credits; training
and documentation materials are also available. Access Points provide a rich set
of capabilities for managing workloads that consist of individual jobs, sets of
jobs, or complex workflows of jobs (e.g. directed acyclic graphs, 'DAGs'). Further, PIs can utilize access
points to perform data placement and data caching through the [Open Science Data
Federation](https://opensciencegrid.org/docs/data/stashcache/overview/).

The two PATh partners – the [OSG Consortium](https://osg-htc.org) and the [UW-Madison Center for High
Throughput Computing (CHTC)](https://chtc.cs.wisc.edu/) – have a long track record of turning the potential
of distributed HTC into scientific discovery in a broad range of domains.
Information about how research efforts, ranging from a single PI to international
collaboration, leveraged the power of our HTC services are documented in our
collection of [science stories](/news/htc-in-support-of-science/). 

## FAQs

##### What hardware resources are available through PATh credit accounts?

Dedicated PATh resources that power the capacity credit accounts are expected to consist of:
- Compute servers with up to 128 AMD ‘Milan’ cores, 1.6TB of NVMe, and 512 GB RAM.
- Compute servers with up to 64 AMD ‘Milan’ cores, 1.6TB of NVMe, and 512 GB RAM
- Compute servers with 68 Intel Knights Landing cores and 96GB of RAM.
- Compute servers with 48 Intel Xeon Skylake cores and 192GB of RAM.
- GPU servers with up to 4 A100s, 1.6TB of NVMe, and 512 GB RAM.
- Nearline storage of up to 20TB of NVMe per job.

PATh resources will be distributed across four sites. Credits
for dedicated resources can be used via a PATh Access Point.

Given that the PATh system is designed for HTC, there is no inter-node networking, 
and multi-node (HPC) jobs are not supported. It is often possible to break up large jobs to run efficiently 
with an HTC approach. See "What workloads run well on PATh resources?", below, for more details.

##### Are PATh dedicated resources part of the Open Science Pool?

PATh dedicated resources are distinct from the [Open Science Pool (OSPool)](https://opensciencegrid.org/about/open_science_pool/), is which is composed of in-kind and mostly opportunitistic resources that can interrupt jobs at any time.

The _dedicated_ PATh-managed resources are funded by NSF and accessible via the PATh 
credit account system, such that PATh-managed resources support longer runtimes and larger jobs
(in terms of number of CPU cores, RAM) than the OSPool's opportunitic resources support.

##### Can I access other resources in combination with PATh resources?

Workloads placed on a PATh Access Point can harness resources pools
beyond credit-based dedicated resources, perhaps for different phases of an overall workflow.  For example, the [Open Science
Pool (OSPool)](https://opensciencegrid.org/about/open_science_pool/) capacity consists of aggregated opportunistic resources across
about 60 sites on a fair-share basis for relevant workloads.  PIs can also utilize their [XRAC](https://portal.xsede.org/my-xsede#/guest) or
[Frontera](https://www.tacc.utexas.edu/systems/frontera) allocations through PATh Access Points.

While PATh resources explicitly support work that can be run with HTC approaches, 
the integration of these other resources can allow phases within a workflow to 
run on resources designed for other, non-HTC job requirements (e.g. multi-node HPC jobs).

##### What workloads run well on PATh resources?

Requests should be for workloads that are amenable to the distributed high
throughput computing services provided by PATh. Work that can be run in the 
form of numerous, self-contained jobs (each with their own input and output) 
is best supported on PATh resources. We're happy to help you figure out whether  
large jobs can be broken up to run efficiently on PATh resources, by using an HTC approach.

Workloads of numerous jobs requiring fewer per-job CPU cores, GPUs, and/or memory
will achieve the best overall throughput, and will require fewer credits. 
Please see our [2022 Charge Listing](/credit-account-charges) for more details.

To inform the evaluation of credit requests, information about proposed HTC workloads should include 
the following information:

1.	Expected number of self-contained tasks per ensemble?  (Each task can be packaged into one or more batch jobs)
2.	What are the per-task resource requirements for each ensemble?  For example, what are the requirements for cores, memory, wall-time, and scratch space?
3.	Expected per-task input and output data requirements for each ensemble?
4.	Expected number and size of shared input files within an ensemble?  Which inputs are common across tasks within and across ensembles?
5.	Number of different ensembles?

##### What about Software?

The dedicated PATh resources support the ability to execute software via Docker or Singularity
containers or via portable, self-contained applications (e.g. statically-compiled binaries, conda environments, etc.). 
While multi-node jobs are not supported by PATh hardware, MPI-dependent software can be supported via containers
(to achieve multi-core parallelism within a single node).

##### How can I “test drive” the HTC services?

A strength of the PATh Access Point is that users can get started without any
credits by testing work on the [OSPool’s](https://opensciencegrid.org/about/open_science_pool/) opportunistic resources, via the OSG Connect Service and Access Points.  We encourage
users to contact [support@osg-htc.org](mailto:support@osg-htc.org) to get started on an Access Point, today!

##### What Data Services does PATh provide?

Users place data at the PATh Access Point; this can be moved to computing by:
- Specifying the data as input or output to jobs, triggering a built-in file transfer mechanism, or
- Placing the data in an associated “origin” server and accessing it through the
  [Open Science Data
  Federation](https://opensciencegrid.org/docs/data/stashcache/overview/) set of caches.

Given the distributed nature of the hardware, there is no global shared filesystem.

##### Can I get help estimating my HTC needs?

PATh Research Computing Facilitators are available to help explain the above concepts
and discuss how a workload can be adapted to run on PATh.  Please contact
[credit-accounts@path-cc.io](mailto:credit-accounts@path-cc.io) with questions about PATh resources, using HTC,
or estimating credit needs.

The PATh system's HTC resource management (via HTCondor) is designed differently 
than in traditional HPC Clusters.  For example, PATh has more
scheduling flexibility for smaller jobs, resulting in an escalating charge in credits for larger jobs.

Please see our [2022 Charge Listing](/credit-account-charges) for more details.

##### Where is the dedicated hardware located?

There are currently five locations that are expected to have dedicated hardware during 2022:

* University of Nebraska-Lincoln's [Holland Computing Center](https://hcc.unl.edu)
* University of Wisconsin - Madison's [Center for High Throughput Computing](https://chtc.cs.wisc.edu)
* Syracuse University's [Research Computing](https://researchcomputing.syr.edu/)
* University of California San Diego's [San Diego Supercomputing Center](https://www.sdsc.edu/)
* University of Texas at Austin's [Texas Advanced Computing Center](https://www.tacc.utexas.edu/)

Additionally, there will be one location, to be confirmed, embedded in the nation's R&E network infrastructure backbone.

Compute and GPU credits are good at all sites.  By default, jobs may go to any location but users can add specific
restrictions to target a single location.  For example, jobs may be restricted to San Diego because they need to
access a dataset at that location.

