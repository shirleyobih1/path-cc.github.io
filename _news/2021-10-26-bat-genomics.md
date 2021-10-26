---
title: "80,000 jobs, 40 billion base pairs, and 20 bats –– all in 4 weeks" 
date: 2021-10-26T12:00:00+00:00
excerpt: An evolutionary biologist at the AMNH used HTC services provided by the OSG to unlock a genomic basis for convergent evolution in bats.
image_src: images/news/bat-genomics-Ariadna.jpeg
image_alt: Ariadna Morales
--- 

***An evolutionary biologist at the AMNH used HTC services provided by the OSG to unlock a genomic basis for convergent evolution in bats.***

By Josephine Watkins

<figure class="figure float-right" style="margin-left: 1em">
  <img src="{{site.baseurl}}/images/news/bat-genomics-Ariadna.jpeg" class="figure-img img-fluid rounded" alt="Ariadna Morales" width="350px">
  <figcaption class="figure-caption">Ariadna Morales (Credit: AMNH) <br/></figcaption>
</figure>

Ariadna Morales, a Gerstner postdoctoral fellow at the American Museum of Natural History (AMNH) from 2018 to 2020, used the fabric of services provided by the OSG 
consortium to single-handedly tackle her most computationally-intensive project yet. In only 4 weeks, she ran 80,000 jobs to analyze 20 bat genomes –– a task that 
would have taken over 4 months to complete, even on the AMNH’s significant local resources. Managing her computational workload through an AMNH local access point 
that harnessed the distributed high-throughput computing (HTC) capacity of the [Open Science Pool](https://opensciencegrid.org/about/open_science_pool/) (OSPool), Morales was able to complete a project that typically 
would require a team of researchers and far more time.

[Morales](https://www.amnh.org/research/staff-directory/ariadna-morales) is an evolutionary biologist, though she enthusiastically refers to herself as a “bat biologist”. Her research at the AMNH focused on Myotis, the largest 
genus of bats whose species span all continents except Antarctica. Despite this broad geographic distribution, these different Myotis species use the same foraging 
strategies to catch insects, their favorite meal. 

This phenomenon of similar traits independently evolving in different species is known as convergent evolution, and was the focus of Morales’s project at the AMNH. 
By analyzing the genomes of different Myotis species, she hoped to confirm whether the same genes were being used for the same purposes, despite the fact that 
these species have been isolated from each other for millions of years.

“It’s very interesting to study the genetic mechanisms that led to developing the traits that help bats catch insects, like longer feet or hairy wings,” Morales 
explains. “We don’t know if the same genes were used and simply turned on and off depending on environmental pressures, or if different regions of the genome 
evolved to have the same function.”

The answers to her questions were buried within the bat genome, a string of over 2 billion base pairs. This number isn’t all that remarkable from genomic 
perspectives, but it becomes colossal in the world of data-processing. Describing the scope of this challenge, Morales reasons, “If we put the genome together, 
the letters could probably go to the moon and back. Analyzing that in a single analysis is not even possible.” 

Morales was able to work with Sajesh Singh, who manages research computing at AMNH and has worked closely with OSG staff ever since the two organizations began 
collaborating in 2019. Reflecting on the impacts of this collaboration, Singh remarks: “​​Since partnering with the OSG, AMNH has been able to provide computing 
resources to its researchers that have allowed them to reduce the time needed to complete their computational work down from years to weeks in some instances.”

And Morales’s project was no exception. With Singh’s help, Morales split her gigantic genomic datasets into manageable pieces and moved her work to the local OSG 
access point at the AMNH, where her jobs could be easily managed as a large HTC workload on the OSPool’s tremendous capacity.

A vast majority of the jobs were genome assemblies, in which Morales used the genome of a closely-related bat species to construct the Myotis genome. Each of these 
genomic regions contained about 10,000 base pairs and ran for approximately one hour on a single CPU, simultaneously accessing thousands of concurrent cores across 
the OSPool. One of the features offered by the local AMNH access point –– the [HTCondor](https://research.cs.wisc.edu/htcondor/) job scheduler –– queued and managed Morales’s jobs, allowing her to begin 
annotating and analyzing the bat genomes and drastically reducing Morales’s time to results. 

Ultimately, this made it possible for Morales to conduct different types of analyses that strengthened support for her findings, like analyzing the genomes of 
other non-Myotis bats that have been studied by other scientists. This allowed her to extend the scope of her own research and also compare her results to other 
researcher’s data. 

In her time at AMNH, Morales used nearly 23,000 core hours across the OSPool, and her collection of analyzed genomes served as strong evidence that the different 
foraging strategies evolved independently in Myotis. Morales had uncovered genomic evidence of convergent evolution. 

Her project was unique for several reasons. Most genomic research is done in controlled laboratory settings using humans, mice, or flies as a model organism. 
Researchers begin with one population, which they divide in different environments to study how specific traits change over time.

With Myotis, everything that’s traditionally manipulated by researchers in the laboratory has already occurred. Originating in Asia, these bats spread to Europe and
eventually to the Americas before they began to independently evolve different foraging strategies millions of years ago. These circumstances make Myotis the 
perfect model to study convergent evolution, as Morales phrases it, through “a more realistic perspective of what’s happening in nature.”

While the model organism Morales used was unique, the tools that she integrated and the analyses she conducted are generalizable. Having previously worked with 
salamanders, ants, and penguins; she reasons, “the good thing is that almost all the tools we use can be applied to other organisms, including humans.”

Morales has moved onto a new position since her time at the AMNH, but HTC is still an important aspect of her work. She’s now a postdoctoral fellow at the 
[LOEWE Center for Translational Biodiversity Genomics](https://tbg.senckenberg.de/) in Frankfurt, Germany, where she’s analysing the genomes of bats who could be potential reservoirs of SARS-CoV2
as part of the [Bat1K Project](https://bat1k.com/). Applying similar strategies that she used at the AMNH, she’s looking for genetic signatures that could be linked to higher 
coronavirus resistance. Describing the impacts of HTC on this work, Morales reflects: “Being able to have the results in just a couple of weeks or in a couple of 
days is amazing. With the COVID-19 project, this really matters for informing the research of other groups.”

At the AMNH, Morales belonged to a handful of researchers who were using the services provided by the OSG to transform their work. But beyond the AMNH’s historic 
walls, Morales is part of a growing global community of researchers who are leveraging HTC to better understand the genomes of an array of species –– bats are just 
the beginning.
