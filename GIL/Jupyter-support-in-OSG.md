---
title: "Global Infrastructure Laboratory: Options for Jupyter Support in OSG"
date: 2021-03-31T15:15:26+10:00
featured: true
excerpt_separator: <!--more-->
weight: 4
---

# Summary of GIL Discussion of Options for Jupyter Support in OSG

GIL conducted an open dicussion with the entire OSG staff@opensciencegrid.org mailing list on March 9, 2021. 
The team reviewed the [proposal document](https://docs.google.com/document/d/1d7-x5Kh6IayZR5BYQduhYf__5mFUckvMN0xBJ9iD1G0/) and concluded the following:

> A. We do not want to support notebooks as jobs on OSG (Option 1 in the document). There is not enough value to be gained given the complexity and thus cost to support something like this. At least not in the foreseeable future.

> B. We see value in supporting jupyter notebooks as an access point for batch computing on OSG (Option 2 in the document), even if we do not support quasi-realtime functionality. I.e. even if all we supported was a jupyter notebook terminal from which somebody could do everything they presently do with the ssh-login, it would be a worthwhile addition. Such an addition might lead us to embrace “non-terminal” notebook functionality over time. E.g. integration with Rucio commands, or possibly having graphical displays of progress of workflows towards completion, etc. etc. might be possible future enhancements.

> C. We see value in jupyter notebook as an access point from two perspectives. OSG Open Pool single researcher support, i.e. us as a “research computing provider”, as well as providing documentation for how campuses can support their users on the notebook environment that they support for them with OSG as a “notebook backend batch system”.

> D. We agreed that what exactly we will support along these lines, and when is now a management decision about effort. In particular, it seems unlikely that we have the freedom to support anything along these lines until we have replaced the effort we recently lost due to staff departures. 




