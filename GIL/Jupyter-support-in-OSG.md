---
title: "Global Infrastructure Laboratory: Options for Jupyter Support in OSG"
date: 2021-03-31T15:15:26+10:00
featured: true
excerpt_separator: <!--more-->
weight: 4
---

##Summary of GIL Discussion of Options for Jupyter Support in OSG

GIL conducted an open dicussion with the entire staff@opensciencegrid.org mailing list on March 9, 2021. 
The team went through the document below and concluded the following.

A. We do not want to support option 1. below. i.e. we do not want to support notebooks as jobs on OSG. There is not enough value to be gained given the complexity and thus cost to support something like this. At least not in the foreseeable future.

B. We see value in supporting option 2 below, even if we do not support quasi-realtime functionality. I.e. even if all we supported was a jupyter notebook terminal from which somebody could do everything they presently do with the ssh-login, it would be a worthwhile addition. Such an addition might lead us to embrace “non-terminal” notebook functionality over time. E.g. Ilya mentioned integration with Rucio commands, Miron mentioned possibly having graphical displays of progress of workflows towards completion, etc. etc.

C. We see value in 2 below from two perspectives: 
OSG Open Pool single researcher support, i.e. us as a “research computing provider”, as well as providing documentation for how campuses can support their users on the notebook environment that they support for them with OSG as a “notebook backend batch system”.

D. We agreed that what exactly we will support along these lines, and when is now a management decision about effort. In particular, it seems unlikely that we have the freedom to support anything along these lines until we have replaced the effort we recently lost due to staff departures. 

##GIL Presentation Document

First, we have to decide what it means.
There are two interpretations:

- a.Launching a Jupyter notebook on a OSG worker node through a OSG-managed interface
- b. Allow an already running Jupyter notebook to submit OSG jobs

One can of course combine the two, but the two problems are mostly orthogonal.

Both will require pseudo-instant access to compute resources, although the type and amount may differ between the two classes.

**1. Scheduling a Jupyter notebook on a OSG worker node**

Jupyter notebooks are mostly used for interactive analysis. As such, users are likely to want a single process that does all the work. Which implies that they would want to run on a single physical node (since OSG does not really support MPI or alike).

Assuming we can get pseudo-instant access to worker node resources (see below), there are three technical steps to consider:

- a. Hosting the JupyterLab launcher WebSite
- b. Execution work environment (e.g. what libraries to include alongside Juyter itself)
- c. Firewall issues
- d. Persistency of notebook across session boundaries

**1.1. Hosting JupyterLab**

There are many instances of JupyterLab being deployed in scientific circles, so it is assumed this is a non-issue. It is a Web portal, and authentication can be managed through CILogon, like the PRP does.
I am told HTCondor is a supported backend, so that should make integration with the OSG stack easy. Brian B. mentioned he has a credentials manager for Jupyter, too.
The portal itself is very lightweight, and could be hosted pretty much anywhere, including the OSG k8s cluster.

**1.2. Execution work environment**

The job that is executed by the JupyterLab will of course have to contain the Jupyter server itself. But that is not enough… all the software a user needs also must be present.
CVMFS makes this a little easier, but does not solve all the problems, since Jupyter needs to be running in the right environment. 
With CVMFS, assuming we let the user either pick the container or the modules to load a job startup, we could mount the Jupyter software inside the container and launch that instance. The major likely problem is picking the version that is compatible with the container in use; at this point in time, we have several CentOS and Ubuntu flavors being used. So we would like need more than one Juypter setup to cover them all.

**1.3. Firewall issues**
Once the Jupyter “job” is deployed, it starts a service that is listening for requests. I.e. incoming connectivity is required.
Two options here:
- 1. Should we just restrict ourselves to the locations that allow this? What fraction of OSG resources currently allows it? Do we even have means to ask that at job submission time?
- 2. Implement some sort of port forwarding solution. There are several places that do that, including PRP and SDSC, but they require a persistent service on a bastion node. Would that be an option for OSG sites?

Then there is the problem of network security; the default JupyterLab connection is http, not https. Https is likely doable, but one would need to manage the host certificates… Using custom CA and a CDN-like reverse proxy is probably the best solution; SDSC is using this approach (still in beta, though, as far as I understand).

**1.4 Notebook persistency**

It is quite common for notebook users to expect that their notebooks are persistent. I.e. wherever they left off at the end of one session is where they can restart the next time they come around. A usable notebook environment on OSG would require a mechanism for a user to re-start a notebook as they left it last time they worked with it. This has storage implications, and introduces state into OSG in ways that we don’t have for any jobs we have today. A “notebook job” is thus fundamentally different than any other job we currently have on OSG.

**2. Launching OSG jobs from a Jupyter notebook**

The opposite problem is allowing for a Jupyter notebook to launch OSG jobs.
Here the problems are mostly:
- 1. Ephemeral nature of the notebooks
- 2. Authentication
- 3. HTCondor libraries
- 4. Marrying interactive nature of Jupyter with Batch nature of OSG
- 5. Where is the Jupyter notebook running


Jupyter notebooks are ephemeral by nature; they run as long as the user actively interacts with them, but they can disappear at any time. So they are not a good candidate for hosting a HTCondor schedd (there may also be security implications). We thus have to assume that the schedd is hosted external to the notebook itself.
We will thus need strong authentication. Standard OSG credentials should work.
The absence of any server/daemon code will also make HTConor software distribution simpler, as we only need the client libraries and cmdtools. Helper wrappers too be used in the notebook would be desirable for ease of use, but are not a hard requirement.

A major question is how will users make use of the OSG-provisioned resources. While a Jupyter notebook could be simply a “OSG batch client”, it would probably not be a major usability benefit for the users. To be blunt, the OSG high throughput computing environment was never meant to have “quasi-realtime” response characteristics that is expected from an interactive environment. This is discussed in more details in the next section!  

Finally, the Jupyter notebooks can run pretty much anywhere, including dedicated OSG resources (e.g. the OSG k8s cluster), (university) login nodes, OSG worker nodes or user laptops. It should really not matter, although setup and support level may vary.

**3. Providing pseudo-instant access to OSG worker node resources**

Jupyter notebooks are usually associated with interactive use. Fast access to OSG resources is thus essential for any associated use. Tens of seconds of wait is likely acceptable (assuming that most interactive notebook requests are much faster because they are executed locally on the computer that hosts the notebook) but tens of minutes is not; we call it here “pseudo-interactive”. 
HTCondor has three mechanisms to deliver pseudo-interactive access:
- a. Preemption
- b. Sleeper slots
- c. Idled slots

OSG has always had preemption as a first-class concept. However, it was mostly a provider tool, not a scheduling tool. OSG could extend it to the scheduling domain to achieve pseudo-interactive semantics. One just has to be careful to keep the pseudo-interactive load a small fraction of the total request, as it both reduces the batch-level resource availability and incurs badput.

Idle slots are of course the ideal venue for pseudo-interactive jobs. They are however very expensive, as any idle time is effectively badput. And the only real advantage over preemption is that it does not disrupt jobs with external state.

Sleeper slots are a cheap alternative to idle slots, but they are only useful for very spiky jobs with modest memory needs. Nevertheless, whenever applicable, they should be considered.

All of the above solutions have in common that HTCondor was never meant to schedule in realtime. The negotiator typically has scheduling cycles of order minutes, to ten minutes. Within a scheduling cycle it has strategies to schedule vast numbers of identical jobs, but that only guarantees high throughput, and not short latency. We might be able to configure HTCondor to work in a regime that is more realtime, but that would have to be tested and explored carefully. 

A possible alternative solution to this problem is to make master-worker tools designed for low latency response, e.g. dask, a first class citizen in OSG. The concept here would be a “notebook session”. At the beginning of the session, the user starts up “worker jobs”. The master stays on the submit host, i.e. with the schedd. As the user aggregates more workers their interactive throughput accelerates. The total number of workers could be either user controlled, or autoscaling, i.e. system controlled. This would play nicely with pre-emption as the workers could easily come and go without this being visible to the user. We have seen users implement prototypes of this by themselves on OSG using tools like dask. Fully supporting this seems a potentially worthwhile addition to OSG. If OSG wanted to add this functionality then maybe the right starting point would be an evaluation of how much effort is needed to support it as a general feature for the Open Science Pool.

An additional consideration is the typical “duty cycle” of a notebook user. In contrast to batch computing where the duty cycle is essentially 100%, an interactive user wants to spend most of their time thinking, rather than computing. An “ideal” notebook session thus has a time structure of many very short (less than 10 second) compute activities, interspersed with human thinking time that may be larger than the time spent on compute activities. In addition, notebook users are notoriously fickle. They “walk away” from their notebooks, do something else, get coffee, and expect the notebooks to still be fully active and ready when they come back. Interactive is thus inherently correlated with inactive. 

There is thus a fundamental tension between interactive small computing footprint activities, and interactively submitting batch activities that are large and have long latencies. The exact meaning of “pseudo” in pseudo-interactive thus implies a challenge in expectation management for the facilitators if OSG chose to support it.




