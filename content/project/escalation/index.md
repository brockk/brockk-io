---
date: "2020-04-11"
external_link: ""
image:
  caption: 'Photo by [Michael Prewett on Unsplash](https://unsplash.com/photos/edb3L9iGyaA)'
  focal_point: Smart
links:
- icon: twitter
  icon_pack: fab
  name: Follow
  url: https://twitter.com/CatchTwentyToo
summary: _escalation_ is an R package for dose-escalation clinical trials, providing a consistent, extensible, modular approach.
tags:
- DoseFinding
title: The escalation package
url_code: "https://github.com/brockk/escalation"
url_pdf: "https://cran.r-project.org/web/packages/escalation/escalation.pdf"
url_slides: ""
url_video: ""
---

_escalation_ is an R package for dose-escalation clinical trials, providing a consistent, extensible, modular approach.

It largely uses existing R implementations of popular dose-finding designs, including the continual reassessment method (CRM) design from the `dfcrm` package, the Bayesian optimal interval (BOIN) design from the `BOIN` package, and the perennial 3+3.

`escalation` bestows these model-fitting functions with a common interface.
This allows the provision of add-on behaviours that affect the way that doses are selected, or trial stopping decisions are made.
For example, it is simple to compose a CRM design that will not skip doses and will stop once a recommended dose has been given to $n$ patients; or a BOIN design that will demand that a certain dose is tested sufficiently before stopping is countenanced; and so on.
Functions are provided to run simulations and enumerate all possible future dose paths.
See related blog posts or the package documentation site for many illustrative examples.

CRAN listing

* [https://cran.r-project.org/package=escalation](https://cran.r-project.org/package=escalation)

Source code

* [https://github.com/brockk/escalation](https://github.com/brockk/escalation)

Documentation

* [https://brockk.github.io/escalation/](https://brockk.github.io/escalation/)

