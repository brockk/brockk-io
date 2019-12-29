---
date: "2019-12-27"
external_link: ""
image:
  caption: Photo by rawpixel on Unsplash
  focal_point: Smart
links:
- icon: twitter
  icon_pack: fab
  name: Follow
  url: https://twitter.com/CatchTwentyToo
slides: example
summary: _trialr_ is an R package implementing Bayesian clinical trial methods in Stan.
tags:
- Bayes
title: trialr
url_code: "https://github.com/brockk/trialr"
url_pdf: "https://cran.r-project.org/web/packages/trialr/trialr.pdf"
url_slides: ""
url_video: ""
---

`trialr` is an R package that implements Bayesian clinical trial design in [Stan](https://mc-stan.org/), a modern enviroment for probabilistic programming that implements Hamiltonian Monte Carlo Markov Chain sampling.
Bayesian models are relatively abundant in early phase clinical trials where information is scarce and sensible inference is required practically from the moment the trial begins.

`trialr` implements:

* the Contimual Reassessment Method (CMR) for toxicity-based dose-finding;
* the time-to-event CRM for late-onset toxicity in dose-finding;
* the EffTox for toxicity- and efficacy-based dose-finding;
* Wason & Seaman's Augmented Binary method for fusing continuous and binary outcomes in phase II;
* a hierarchical model of binary responses on related subgroups;
* and more.

trialr is available on CRAN and is listed on my GitHub page. 
There is a manuscript currently under peer-review (pre-print linked below) and it has been used to analyse outcomes in a forthcoming set of clinical trial results.

CRAN listing

* [https://cran.r-project.org/web/packages/trialr/index.html](https://cran.r-project.org/web/packages/trialr/index.html)

Source code

* [https://github.com/brockk/trialr](https://github.com/brockk/trialr)

Documentation

* [https://brockk.github.io/trialr/](https://brockk.github.io/trialr/)

