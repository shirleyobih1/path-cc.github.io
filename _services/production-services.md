---
title: "Production Services"
date: 2018-11-28T15:15:26+10:00
featured: true
excerpt_separator: <!--more-->
weight: 3
---

Production Services maintains services essential to science on the Open Science Grid. Compute Management for sharing of computing resources, provisioning pools of computing resources, job execution management. Data Management services for serving and pre-placing data in support of workflows. Additionally, services such as identity management, monitoring, and accounting enhance and secure the other services.
<!--more-->

Production Services are grouped into **Compute Management** for and **Data Management** services.  Additionally, production services maintain identity management, monitoring, and accounting services to augment the compute and data capabilities.

## Compute Management

Services to manage compute include:

* **Submission endpoints** for providing researchers access to the shared compute power enabled by the OSG. 
* **Resource pools** for aggregating resources on behalf of an organization.  
* **Resource Provisioning** and Annex components for provisioning resources – from hosted CEs, XD machines, or cloud capacity – into the resource pools.
* **Compute Entry points** for contributing resources via the scheduler on a campus cluster into a resource pool, using the HTCondor-CE software (a special configuration of HTCSS).

## Data Management
Services to manage data are:

* **Distributed data caches** provide on-demand data movement to jobs.  A data cache is located near (in network terms) compute resources and manages the usage of WAN bandwidth to mitigate latency impact. For workloads with high locality of reference, caches allow for data reuse and reduction of total WAN bandwidth and load on data origins.

* **Data placement services** allowing an organization to maintain a catalog of its files, organize files into datasets, establish placement policies, and orchestrate transfers with an external service.

* **Research software distribution** allowing organizations to publish software or containers and, within minutes, have them propagated across the compute federation.

## Peripheral services
Services which augment the above services.

* **Accounting and Monitoring service** to track consumed resources (e.g, CPU and GPU hours) on the Open Science Grid.

* **Identity Management** is used to centrally manage access to resources.

