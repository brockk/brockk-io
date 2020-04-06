---
date: "2020-04-06"
external_link: ""
image:
  caption: Robina Weermeijer on Unsplash
  focal_point: Smart
links:
- icon: twitter
  icon_pack: fab
  name: Follow author
  url: https://twitter.com/CatchTwentyToo
summary: PePS2 is a phase II trial of pembrolizumab in performance status 2 non-small-cell lung cancer patients.
tags:
- Bayes
- PhaseII
title: The PePS2 Trial
url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""
---


### Summary
PePS2 is a phase II trial of pembrolizumab in performance status 2 (PS2) non-small-cell lung cancer (NSCLC) patients.
It is run by the [Cancer Research UK Clinical Trials Unit](https://www.birmingham.ac.uk/research/activity/mds/trials/crctu/).

PePS2 is an important trial to me because I developed the analysis model as part of my PhD thesis and worked on the trial from almost the very beginning.
I published a trial design paper and am glad to say that the trial results are currently under peer review.
The investigators and I hope this trial will provide much-needed and much-sought evidence on the merits of giving this PD-L1 blockade drug to PS2 NSCLC patients

### Design
I became involved in PePS2 shortly after joining the trials unit in 2014.
The trial called for a design that evaluated co-primary response and toxicity outcomes.
Naturally, this suggests a Bryant & Day optimal design.
However, published data in performance status 0 & 1 NSCLC patients showed that the PD-L1 tumour proportion score biomarker was strongly predictive of response.
There was also evidence that first-line patients did better than subsequent-line patients.
We expected each of these variables to remain predictive in the performance status 2 population and wanted to stratify the analysis by these variables.
Unfortunately, Bryant & Day's design assumes an homogeneous population so does not admit explanatory variables.

I happened to be working on a dose-finding trial at the time that used the EffTox design of Thall & Cook (2004) to appraise joint efficacy and toxicity rates at different doses of experimental agents.
It struck me on a cycle home that the EffTox design could be adjusted with variables reflecting PD-L1 and line-of-therapy status in place of dose to study our co-primary outcomes whilst adjusting for our putative predictive factors.
I worked up the design as part of my PhD, eventually published a design paper, and used the model to conduct a Bayesian analysis of the trial outcomes.

### Results
The results for PePS2 were published in March 2020 in Lancet Respiratory Medicine.
There are links below.

