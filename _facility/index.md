---
layout: table-of-contents
title: The PATh Facility
tagline: Facility
table_of_contents:
    - name: Accessing the PATh Facility
      href: '#accessing-the-path-facility'
      children:
        - name: Solicitations
          href: '#solicitations'
        - name: Dear Colleague Letter
          href: '#dear-colleague-letter'
    - name: Facility Description
      href: '#facility-description'
description: The PATh Facility is a national-scale distributed High Throughput Computing resource to deliver computational capacity to NSF researchers through dHTC.
below_table_of_contents: |
    <h3>Have PATh Credits?</h3>
    <div>
        <a class="btn btn-primary" href="registration.html">Register Now</a>
    </div>
---


The PATh Facility is a purpose-built, national-scale distributed High Throughput Computing (dHTC) resource meant to deliver computational capacity to NSF researchers.

The PATh Facility is part of a pilot project funded by the NSF Office of Advanced Cyberinfrastructure.  NSF-funded researchers **[can apply](https://www.nsf.gov/pubs/2022/nsf22051/nsf22051.jsp) to request credits for the PATh facility.**  The facility aims to demonstrate the value of dedicated, distributed resources to the NSF Science and Engineering community.

The facility aims to empower researchers through the use of high throughput computing techniques and, as it is completed during 2022, will be spread across six physical sites.  Unique aspects of the facility include:

   * Emphasis on workloads organized into ensembles of many tasks.  The PATh facility makes its greatest impact when users have a large number (tens of thousands through millions) of individual batch jobs.
   * Due to its national, distributed nature, _multi-node MPI job capabilities_ are not offered (single-node MPI works well).  The PATh facility provides a "scale out" resource, not "scale up".
   * Similarly, the job scheduler handles the movement of input data to the worker node and output back to the [Access Point](https://osg-htc.org/services/access-point.html).  This provides the facility with the ability to manage data movement and the flexibility to move jobs to a wider variety of sites. _There is no shared filesystem between the access point and worker node_.

Common examples of HTC workloads include parameter sweeps, Monte-Carlo simulations, or processing of thousands of data sets where each data set can be processed by an independent job.

## Accessing the PATh Facility

Users of the facility will receive [credit accounts](/services/credit-accounts/) directly from the NSF which they can utilize to run high throughput computing workflows.  The NSF is making credits available through a number of mechanisms, including:

- **Solicitations**: The 2021 [CSSI solicitation](https://www.nsf.gov/pubs/2021/nsf21617/nsf21617.pdf) included a mechanism to request credits as part of the project proposal. 
{: #solicitations}
- **Pilot for the Allocation of High-Throughput Computing Resources (HTC)**: The NSF provides a mechanism where existing PIs can apply for credits as a supplement to an existing award or as part of a new award.  See the [Dear Colleague Letter 22-051](https://www.nsf.gov/pubs/2022/nsf22051/nsf22051.jsp) for more information on the pilot.
{: #dear-colleague-letter}

The PATh team is here to help!  As part of the consulting services offered to any researcher, our team can help you decompose your workload to ensembles of jobs and generate resource estimates for the various tasks in the ensemble.  Please reach out to [credit-accounts@path-cc.io](mailto:credit-accounts@path-cc.io) to initiate your consult.


<div class="row justify-content-center py-3 pb-4">
    <div class="col-12 col-sm-10 col-md-8">
        <figure>
            <img class="img-fluid" src="/images/PATh_Facility_Preview.jpg" alt="Image of the PATh Servers" />
            <figcaption class="p-1 bg-light">PATh facility worker nodes destined for Syracuse University Research Computing</figcaption>
        </figure>
    </div>
</div>


## Facility Description

The PATh Facility is under construction; the first resources came online in spring 2022 and it will continue to expand through the year; it will eventually consist of about 30,000 cores and 3 dozen A100 GPUs.  The facility includes the following sites and resources:

- *Lincoln, Nebraska*: University of Nebraska Lincoln’s [Holland Computing Center](https://hcc.unl.edu/) will host 32 machines with 64 AMD EPYC cores (AMD 7513), 1.6TB of NVMe, and 256 GB RAM each.  One machine will have 4 A100 GPUs, 1.6TB of NVMe, and 512 GB RAM.
- *Syracuse, New York*: Syracuse University’s [Research Computing](https://researchcomputing.syr.edu/) group will host 32 machines with 64 AMD EPYC cores (AMD 7513), 1.6TB of NVMe, and 256 GB RAM each.  One machine will have 4 A100 GPUs, 1.6TB of NVMe, and 512 GB RAM.
- *Miami, Florida*: Florida International University’s [AMPATH](https://ampath.net/) network will host PATh equipment in their Miami interchange point.  This will consist of 4 machines with 64 AMD EPYC cores (AMD 7513), 1.6TB of NVMe, and 256 GB RAM each.  One machine will have 4 A100 GPUs, 1.6TB of NVMe, and 512 GB RAM
- *San Diego, California*: An additional 2 racks will be added to the [Expanse resource](https://www.sdsc.edu/support/user_guides/expanse.html) at [San Diego Supercomputing Center](https://www.sdsc.edu/) (SDSC), usable via the PATh credit accounts.  Each rack will hold 16 A100 devices not part of the original Expanse design.  Availability is expected in early summer 2022.
- *Madison, Wisconsin*: University of Wisconsin-Madison’s [Center for High Throughput Computing](https://chtc.cs.wisc.edu/) will serve as a staging ground for the resources destined for Lincoln, Syracuse, and Miami prior to shipment to their final destinations.  Four machines will be kept at Madison, primarily for debugging and testing purposes.
- *Austin, Texas*: PATh has received a large allocation in the recently-upgraded [Stampede2](https://www.tacc.utexas.edu/-/nsf-extends-lifespan-of-tacc-s-stampede2-supercomputer-through-june-2023) resource at the [Texas Advanced Computing Center](https://tacc.utexas.edu) (TACC); this allocation will be reachable via PATh computing credits.  Stampede2’s new resources include 224 dual-socket Intel Xeon Platinum 8380 CPUs (40 cores each).

The hosts destined for Lincoln, Syracuse, and Miami are currently being tested at Madison; availability is expected in late spring 2022.
