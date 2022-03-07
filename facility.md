---
layout: table-of-contents
title: The PATh Facility
tagline: Facility
table_of_contents:
    - name: Using PATh Facilities
      href: '#using-path-facilities'
      children:
        - name: Solicitations
          href: '#solicitations'
        - name: Dear Colleague Letter
          href: '#dear-colleague-letter'
    - name: Facility Description
      href: '#facility-description'
description: The PATh facilities consist of dedicated, distributed computational resources composed of over 20,000 cores and 2 dozen A100 GPUs across 6 different sites.
---


The PATh team is constructing a dedicated, distributed computational resources composed of over 20,000 cores and 2 dozen A100 GPUs across 6 different sites.  This facility will be available to researchers starting in spring 2022.

## Using PATh Facilities

Users of the facility will receive [credit accounts](/services/credit-accounts/) directly from the NSF which they can utilize to run high throughput computing workflows.  The NSF is making credits available through a number of mechanisms, including:


- **Solicitations**: The 2021 [CSSI solicitation](https://www.nsf.gov/pubs/2021/nsf21617/nsf21617.pdf) included a mechanism to request credits as part of the project proposal. 
{: #solicitations}
- **2022 Dear Colleague’s Letter Pilot project**: For participating programs, the NSF [22-051 DCL](https://www.nsf.gov/pubs/2022/nsf22051/nsf22051.jsp) provides a mechanism where existing PIs can email their program officer with a request for credits. 
{: #dear-colleague-letter}

The PATh team is here to help!  As part of the consulting services offered to any researcher, our team can help you decompose your workload to ensembles of jobs and generate resource estimates for the various tasks in the ensemble.  Please reach out to [credit-accounts@path-cc.io](mailto:credit-accounts@path-cc.io) to initiate your consult.

## Facility Description

The PATh facility consists of the following sites and resources:

- Lincoln, Nebraska: University of Nebraska Lincoln’s Holland Computing Center will host 32 machines with 64 AMD EPYC cores (AMD 7513), 1.6TB of NVMe, and 512 GB RAM each.  One machine will have 4 A100 GPUs, 1.6TB of NVMe, and 512 GB RAM.
- Syracuse, New York: Syracuse University’s Research Computing group will host 32 machines with 64 AMD EPYC cores (AMD 7513), 1.6TB of NVMe, and 512 GB RAM each.  One machine will have 4 A100 GPUs, 1.6TB of NVMe, and 512 GB RAM.
- Miami, Florida: Florida International University’s AMPATH network will host PATh equipment in their Miami interchange point.  This will consist of 4 machines with 64 AMD EPYC cores (AMD 7513), 1.6TB of NVMe, and 512 GB RAM each.  One machine will have 4 A100 GPUs, 1.6TB of NVMe, and 512 GB RAM
- San Diego, California: An additional 2 racks will be added to the Expanse resource at San Diego Supercomputing Center (SDSC), usable via the PATh credit accounts.  Each rack will hold 16 A100 devices not part of the original Expanse design.  Availability is expected in early summer 2022.
- Madison, Wisconsin: University of Wisconsin-Madison’s Center for High Throughput Computing will serve as a staging ground for the resources destined for Lincoln, Syracuse, and Miami prior to shipment to their final destinations.  Four machines will be kept at Madison, primarily for debugging and testing purposes.
- Austin, Texas: PATh has received a large allocation in the recently-upgraded Stampede2 resource at the Texas Advanced Computing Center (TACC); this allocation will be reachable via PATh computing credits.  Stampede2’s new resources include 224 dual-socket Intel Xeon Platinum 8380 CPUs (40 cores each).

The hosts destined for Lincoln, Syracuse, and Miami are currently being tested at Madison; availability is expected in late spring 2022.
