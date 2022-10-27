---
title: "Production Services"
featured: true
excerpt: |
  The Production Services team, as part of the Fabric of Capacity Services
  (FoCaS), maintains services essential to delivering science using OSG resources.  The _Compute Management_ services allow for sharing of computing resources, provisioning pools of computing resources, job execution management. _Data
  Management_ services provide for serving and pre-placing data in support of
  workflows. Additionally, services such as identity management, monitoring, and
  accounting enhance and secure the fabric.
weight: 3
---

{{ page.excerpt }}

## Compute Management

The compute management services allow the science and engineering community to
turn the _raw computing capacity_ found in clusters across the nation's
universities and labs into _effective capacity_ for science.

The computing services provided by PATh include:

* **Submission endpoints** for providing researchers access to the shared
  compute power enabled by the OSG.  This includes the centrally-managed
  [OSG Connect](https://connect.osg-htc.org/), targeting PI-driven groups.
* Overlay **resource pools** for aggregating resources from the distributed
  infrastructure on behalf of an organization.  
* **Resource Provisioning** for acquiring resources – from
  [hosted CEs](https://opensciencegrid.org/docs/compute-element/hosted-ce/),
  [XD machines](https://www.xsede.org/), or cloud capacity – into the resource
  pools.
* **Compute Entry points** for contributing resources via a scheduler (such as
  SLURM, HTCondor, or PBS) on a campus cluster into a resource pool, using the
  [HTCondor-CE](http://htcondor-ce.org/) software (a special configuration of
  HTCSS).

## Data Management

PATh delivers data management services in order to support the workflows running
on the national infrastructure.  Services include:

* [**Distributed data caches**](https://opensciencegrid.org/docs/data/stashcache/overview/) provide on-demand data movement to jobs.  A data cache is located
  near (in network terms) compute resources and manages the usage of WAN
  bandwidth to mitigate latency impact. For workloads with high locality of
  reference, caches allow for data reuse and reduction of total WAN bandwidth
  and load on data origins.

* **Data placement services** allowing an organization to maintain a catalog of
  its files, organize files into datasets, establish placement policies, and
  orchestrate transfers with an external service.

* **Research software distribution** allowing organizations to
  [publish software](https://opensciencegrid.org/docs/data/external-oasis-repos/)
  or containers and, within minutes, have them propagated across the compute
  federation.
