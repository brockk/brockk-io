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
I wrote the bootcamp programme to teach technical skills to new biostatisticians at the Cancer Research UK Clinical Trials Unit, University of Birmingham. 
Sessions are presented as [`learnr`](https://rstudio.github.io/learnr/) tutorials and packaged as an R-package called `bootcamp` [hosted on GitHub](https://github.com/brockk/bootcamp).

To install the package on your computer, run 

`devtools::install_github('brockk/bootcamp')`

in R.

## Running bootcamp tutorials
You do not have to install `bootcamp` to use it, however.
The tutorials are installed on a public RStudio Cloud instance at:

https://rstudio.cloud/project/454702

You are free to run them there. 
Look for the Run.R file.

There are sessions on:

* using git
* dplyr
* ggplot2
* markdown
* rmarkdown
* subgroup analyses in clinical trials
* hierarchical models
* Continual Reassessment Method (CRM) for dose-finding
* Bayesian models in [Stan](https://mc-stan.org/)
* and more.

Further details are available at https://github.com/brockk/bootcamp.
Please note, the `bootcamp` package is not on CRAN.

Happy learning.
Kristian Brock
