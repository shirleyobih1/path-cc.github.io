---
title: A100 MIG support in OSG, with emphasis on IceCube
layout: sub-page
date: 2021-9-27
excerpt: |
    This document provides an assessment of the feasibility to use the NVIDIA A100 GPU Multi Instance Graphics (MIG) capabilities inside OSG, with a particular emphasis on IceCube. MIG allows an A100 GPU to be split in several partitions that can be assigned to independent compute jobs. (MIG is also available on the NIVIDA A30 GPUs, but we currently have no HW to test).
---

**by Igor Sfiligoi - University of California San Diego, as of Sept 27th 2021**

### Objective

This document provides an assessment of the feasibility to use the NVIDIA A100 GPU Multi Instance Graphics (MIG) capabilities inside OSG, with a particular emphasis on IceCube. MIG allows an A100 GPU to be split in several partitions that can be assigned to independent compute jobs. (MIG is also available on the NIVIDA A30 GPUs, but we currently have no HW to test).

### Executive summary
As of HTCondor version 9.0.6, all OSG infrastructure properly supports NVIDIA A100 GPUs that were split in multiple MIG partitions. This includes host-level HTCondor managing the GPU scheduling, glideinWMS-based pilot overlays and GRACC accounting.

It should be further noted that HTCondor will not actively split any A100 GPU, just use the existing MIG partitions. Any splitting has to be performed by a privileged user before HTCondor is started.

If dynamic partitioning of A100 GPUs is desired, that should become a feature request to the HTCondor team, as I am unaware of any current plans for such support.

### Detailed description

In order for IceCube jobs to use a GPU, HTCondor must detect it and advertise it in the job environment through the CUDA_VISIBLE_DEVICES variable.
While using MIG partitions does not require any change from the applications, listing all the MIG partitions requires a different API compared to just listing the GPUs. Before HTCondor version 9.0.6, that was not working correctly.

Starting with HTCondor 9.0.6, which was released on the HTCondor UW main page on Sept 27th and in OSG upcoming-testing repository on Sept 28th. For my tests I used the OSG release at host level, while glideinWMS pilots were using the UW-provided version.

The A100 GPUs were sourced from the Google Cloud Platform, using the SDSC-run OSG CE we had setup for IceCube Cloud runs. A specially configured glideinWMS factory and frontend were used to force the use of 9.0.6 HTCondor in pilots.

I tested with 1, 2 and A100 16 GPUs per (virtual) node. I partitioned the A100 GPUs in either 3 or 7 MIG partitions, started the host HTCondor and let IceCube jobs run to completion. Everything worked fine from 3 to 112 MIG partitions per node.

The accounting information has been correctly propagated to GRACC, with each MIG partition accounted as a separate GPU.
To the best of my knowledge, HTCondor does not have any support for changing the partitioning in the A100 GPU. All the partitioning was manually done by me, as the sysadmin, before starting HTCondor at host level.

Note that several tests were ran with a pre-release version of 9.0.6, but one final test was ran with the officially release packages, too.

### Appending – Test setup details
I used the same Cloud CE setup we put in place earlier in the year, and which is described in <https://arxiv.org/abs/2107.03963>.

The worker nodes were the A2 GCP instances.
<https://cloud.google.com/blog/products/compute/a2-vms-with-nvidia-a100-gpus-are-ga>

Each instances comes to live with A100 GPUs with MIG disabled. One thus has to first enable MIG, which requires a reboot, before proceeding with MIG partitioning, as explained by the NVIDIA documentation:
<https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#enable-mig-mode>

Here are the explicit steps:

```
# enable MIG
for ((i=0; $i<$N; i=$i+1)); do nvidia-smi -i $i -mig 1; done
# at least on GCP, a reboot is also required
reboot

# MIG partitioning into 7 slices
for ((i=0; $i<$N; i=$i+1)); do \
    nvidia-smi mig \
        -cgi 1g.5gb,1g.5gb,1g.5gb,1g.5gb,1g.5gb,1g.5gb,1g.5gb -C -i $i ; \
done
```


### Acknowledgements
This work was partially funded by NSF grants OAC-1941481, OAC-2030508, OAC-1826967 and OAC-1541349.
