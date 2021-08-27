---
title: 'FAQ'
layout: sub-page
---

{% capture content %}

### What hardware resources are available through the credit accounts?

The dedicated PATh resources that power the capacity credit accounts are expected to consist of:
- Compute servers with up to 128 AMD ‘Milan’ cores, 1.6TB of NVMe, and 512 GB RAM.
- Compute servers with up to 64 AMD ‘Milan’ cores, 1.6TB of NVMe, and 512 GB RAM
- GPU servers with up to 4 A100s, 1.6TB of NVMe, and 512 GB RAM.
- Nearline storage of up to 20TB of NVMe per job.

The dedicated PATh resources will be distributed across 3 sites; credits 
for dedicated resources can be used at a PATh access point.  

### Can HTC workloads access other resources? 

Workloads placed on the PATh Access Points can harness resources pools 
beyond the credit-based dedicated resources.  For example, the [Open Science 
Pool (OSPool)](https://opensciencegrid.org/about/open_science_pool/) capacity consists of aggregated opportunistic resources across
about 50 sites on a fairshare basis.  PIs can also utilize their [XRAC](https://portal.xsede.org/my-xsede#/guest) or
[Frontera](https://www.tacc.utexas.edu/systems/frontera) allocations through Access Points.

### What workloads run well on HTC? 

Requests should be for workloads that are amenable to the distributed high 
throughput computing services provided by PATh; to help the evaluation, information
about HTC workloads should include the following information:

1.	Expected number of self-contained tasks per ensemble?  (Each task can be packaged into one or more batch job)
2.	What are the resource requirements for each task type in the ensemble?  For example, what are the requirements for cores, memory, wall-time, and scratch space?
3.	Expected number of ensembles?
4.	Expected input and output data requirements for each task type?
5.	Expected number and size of shared input files within an ensemble?  How many times are each file read per ensemble?

### What about Containers? 

The dedicated PATh resources support the ability to execute software within 
containers or portable, self-contained applications.

### How can I “test drive” the HTC services? 

A strength of the PATh Access Point is users can get started without any 
credits through using the [OSPool’s](https://opensciencegrid.org/about/open_science_pool/) opportunistic resources.  We encourage 
users to contact [support@osg-htc.org](mailto:support@osg-htc.org) to get started on an Access Point today.

### What Data Services does PATh provide? 

Users place data at the PATh Access Point; this can be moved to computing by:
- Specifying the data as input or output to jobs, triggering a built-in file transfer mechanism, or
- Placing the data in an associated “origin” server and accessing it through the
  [Open Science Data
  Federation](https://opensciencegrid.org/docs/data/stashcache/overview/) set of caches.

Given the distributed nature of the hardware, there is no global shared filesystem.

### Can I get help estimating my HTC needs? 

PATh research facilitators are available to help explain the above concepts 
and discuss how a workload can be adapted to run on PATh.  Please contact 
[credit-accounts@path-cc.io](mailto:credit-accounts@path-cc.io) with questions about PATh resources, using HTC, 
or estimating credit needs.

__PATh has more scheduling flexibility for smaller jobs; hence, there’s an 
escalating charge in credits for larger jobs in our [2022 charge listing](/charges).__

{% endcapture %}

{% capture content %}
{% include markdown-container.html %}
{% endcapture %}
{% include body-container.html %}