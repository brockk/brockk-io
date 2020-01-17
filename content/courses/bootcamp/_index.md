---
date: "2019-12-28"
draft: false
lastmod: "2019-12-28"
linktitle: bootcamp
menu:
  example:
    name: bootcamp
    weight: 1
summary: A programme to teach technical skills to new biostatisticians at the Cancer Research UK Clinical Trials Unit, University of Birmingham. Sessions are presented as learnr tutorials.
title: bootcamp
toc: true
type: docs
weight: 1
---

## Introduction
I lead the bootcamp programme to teach technical skills to new biostatisticians at the Cancer Research UK Clinical Trials Unit, University of Birmingham. 
The programme was delivered for the first time during Sep-Dec 2019, consisting of 42 hours of tuition delivered over 21 sessions by 10 members of CRCTU's Biostatistics team.
Sessions were taught in computer laboratories and material was example-based so attendees devoted a lot of time to implementing what they were learning.

A cornerstone of the programme was to teach methods for repeatable research, like using statistical software to automatically create reports and source control software to manage mission-critical code. 
The course also covered modern statistical approaches to common yet sometimes thorny tasks like dose-finding, sub-group analyses, Bayesian analysis, and modelling of repeated measures.

Bootcamp was primarily aimed at new recruits but statisticians with many years' experience also attended to develop their technical skills.
Sessions were presented by members of the team in their particular field of expertise, creating an environment where the team educated itself.
In some sessions, even the professors of biostatistics featured amongst the attendees.

The programme will be implemented again to train recruits in 2020, and expanded to cover further trials topics.


## Material

Sessions are presented as [`learnr`](https://rstudio.github.io/learnr/) tutorials and packaged as an R-package called `bootcamp` [hosted on GitHub](https://github.com/brockk/bootcamp).

To install the package on your computer, run 

`devtools::install_github('brockk/bootcamp')`

in R.

## Running bootcamp tutorials

### Locally
To run a tutorial locally, you use a command like:

`learnr::run_tutorial('intro', package = 'bootcamp')`

You can substitute `intro` above for:

- `bootcamp`
- `intro`
- `folders`
- `git`
- `ggplot2`
- `markdown`
- `rmarkdown`
- `snapshots`
- `tidyverse`
- `models`
- `repeatedmeasures`
- `subgroups`
- `stan`

### On RStudio Cloud
You do not have to install `bootcamp` to use it, however.
The tutorials are installed on a public RStudio Cloud instance at:

https://rstudio.cloud/project/454702

You are free to run them there. 
Look for the Run.R file.

Further details are available at https://github.com/brockk/bootcamp.
Please note, the `bootcamp` package is not on CRAN.

Happy learning.
Kristian Brock
