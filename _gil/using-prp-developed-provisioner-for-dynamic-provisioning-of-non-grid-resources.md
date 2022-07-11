---
title: Using PRP-developed provisioner for dynamic provisioning of non-Grid resources
layout: markdown
date: 2022-06-30
excerpt: |
    The OSPool has mostly been relying in GlideinWMS for the provisioning of its execute resources. While that worked reasonably well for Grid-type resources, it currently lacks support for many non-Grid resource types, including Kubernetes and Lancium. Adding support for those kind of resources to GlideinWMS would require a non-trivial amount of work, so an alternative approach was investigated.
---

**by Igor Sfiligoi - University of California San Diego**

### Executive summary

The OSPool has mostly been relying in GlideinWMS for the provisioning of its execute resources. While that worked reasonably well for Grid-type resources, it currently lacks support for many non-Grid resource types, including Kubernetes and Lancium. Adding support for those kind of resources to GlideinWMS would require a non-trivial amount of work, so an alternative approach was investigated.

The team in charge of the Pacific Research Platform (PRP), and follow-up grants, has developed a Kubernetes-based provisioner for HTCondor pilots, which has proven to be usable for IceCube. We first extended that to serving PRP Kubernetes-based resources for OSPool users, with full integration of the official OSG backfill container image. With that POC being successful, we then implemented the Lancium interface in the PRP-provisioner, and have been able to show a successful POC there, too.

The PRP-provisioner is based on the same “constant pressure” logic as GlideiNWMS, but it is drastically simplified, with no external software dependencies. This allows for rapid adoption of new APIs, as long as they provide a queuing system. The downside of the simplicity is the lack of clear separation of frontend and factory operations that GlideinWMS provides, but we believe this is not a problem in the case of the OSPool, where both sides are operated by the PATh personnel.

### OSPool and GlideinWMS limits

The OSPool has mostly been relying in GlideinWMS [[1]][source1] for the provisioning of its execute resources. But the GlideinWMS factory relies heavily on HTCondor-C for its operation, and Condor-C currently has no support for either Kubernetes or Lancium. An initial investigation indicated that it would not be trivial to extend HTCondor to support those resources.

### The PRP-provisioner

The Kubernetes-based PRP has long supported OSG science communities with opportunistic compute cycles. While the initial implementation relied on a OSG CE in front of a shared HTCondor setup, the lack of user transparency at Kubernetes level led them to implement a direct, Kubernetes-native HTCondor pilot provisioner [[2,3]][source2].

The PRP-developed provisioner is very simple by design and heavily borrows from the core GlideinWMS logic, i.e. the constant pressure concept. It consists of an infinite loop that periodically queries both the HTCondor system and the Kubernetes system, and maintains a modest level of pending Kubernetes pods for as long as there are HTCondor jobs waiting for resources. The job resource requests are passed down to the Kubernetes pods, allowing for optimal placement in the Kubernetes pool.

The software is implemented as a single python process, using the Kubernetes and HTCondor python libraries, and is optimized for deployment inside the Kubernetes pool itself. Using external deployment is however possible, as long as the target Kubernetes pool is accessible remotely.

The PRP-provisioner distribution also provides a HTCondor pilot container image that provides the essential functionality. The PRP-provisioner, with the provided pilot image, has been used by IceCube for many months in 2022 on both PRP on-prem Kubernetes and Google’s GKE.

The OSPool has a much more sophisticated pilot configuration expectation, so we adopted the OSG-provided backfill container image when using the PRP-provisioner to serve resources to the OSPool. While it did take a little bit of integration effort, the necessary changes were minimal [[4]][source4].

The PRP-provisioner has been used to serve PRP Kubernetes-based resources since May 2022, with no major problems encountered.

### Extending to Lancium

Lancium uses a proprietary API for the provisioning of its resources and recommends the use of their Command-Line-Interface (cli) [[5]][source5] for most of the interactions. The API is container based and revolves around the concept of a queue of jobs. And while the API provides the option of requesting an arbitrary amount of resources, it internally enforces a fixed CPU-to-memory ratio.

The Lancium API can be considered a simplified subset of the Kubernetes API, and it happens to be enough for the PRP-provisioner needs. We thus implemented a python library that wraps the Lancium cli, and integrated it with the rest of the PRP-provisioner logic [[6]][source6].

The fixed CPU-to-memory ratio made the push to HTCondor job requirements impractical, so we further augmented the PRP-provisioner logic to support partitionable pilot jobs. This version has been used since June 2022 to serve Lancium resources to OSPool users, with no major problems encountered.

### Operational considerations

Since each provisioner operates as an all-in-one service, the provisioning and matching policy has to be implemented in each and every provisioner instance. This includes the frontend-equivalent and factory-equivalent configuration.

This should not be a problem when supporting a single logical HTCondor pool, like OSPool, but could lead to combinatorial problems if many sites support many independent HTCondor pools. We choose not to further explore that problem, as it is beyond the scope of the GIL responsibilities.

#### References

1. I. Sfiligoi, D. C. Bradley, B. Holzman, P. Mhashilkar, S. Padhi and F. Wurthwein, "The Pilot Way to Grid Resources Using glideinWMS," 2009 WRI World Congress on Computer Science and Information Engineering, 2009, pp. 428-432, <http://doi.org/10.1109/CSIE.2009.950>{: #source1 }
1. PRP Provisioner, <https://github.com/sfiligoi/prp-htcondor-portal/tree/main/provisioner>{: #source2 }
1. I. Sfiligoi, T. DeFanti and F. Würthwein, “Auto-scaling HTCondor pools using Kubernetes compute resources” <https://doi.org/10.48550/arXiv.2205.01004>{: #source3 }
1. OSPool Provisioner Pilot Image, <https://github.com/sfiligoi/prp-htcondor-portal/tree/main/wn-osgvo/image>{: #source4 }
1. Lancium CLI, <https://lancium.github.io/compute-api-docs/lancium_cli.html#lancium-compute-cli>{: #source5 }
1. Lancium-based Provisioner, <https://github.com/sfiligoi/lancium-htcondor-portal>{: #source6 }

[source1]: #source1
[source2]: #source2
[source3]: #source3
[source4]: #source4
[source5]: #source5
[source6]: #source6