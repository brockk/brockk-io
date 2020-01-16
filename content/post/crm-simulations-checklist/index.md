---
title: CRM Simulation Checklist
author: 
  - admin
date: '2020-01-15'
slug: crm-simulations-checklist
categories: []
tags:
  - DoseFinding
  - CRM
subtitle: ''
summary: ''
authors: []
lastmod: '2020-01-15T05:39:45Z'
featured: no
image:
  caption: 'Photo by : [Glenn Carstens-Peters on Unsplash](https://unsplash.com/photos/RLw-UC03Gwc)'
  focal_point: ''
  preview_only: no
projects: []
---

During 2019, I was working on simulations using CRM designs in several different trials.
I found I would frequently get the designs mixed up:

> "We are targeting 20% toxicity in this trial, right? No, that was the other trial...we are targeting 33% here..."

Similarly, once or twice, I got to the stage where I wanted to run simulations only to discover we had not specified some important design aspect, like when the trial should stop.
To bring all the pertinent information to the fore, I wrote a checklist.
I would take the list and fill it out for each trial to ensure I had all the right information before I started simulating.

Download the checklist as [PDF](/doc/CrmSimulationChecklist-1.0.pdf), [editable Word version](/doc/CrmSimulationChecklist-1.0.docx), or [completed example](/doc/CrmSimulationChecklist-Example-1.0.pdf).


# Checklist

### 1. Doses under investigation?
Put simply, which doses are you investigating?
And how many are there?
Let's refer to the number of doses as $n$.
For the plain vanilla CRM, the doses should be fully orderable, meaning it should be possible to unambiguously state that $a > b$ or $a < b$ for each pair of doses $a, b$.
Incidentally, this is also true of the 3+3.
It is easy to inadvertently violate the _total orderability_ rule when you have combinations (e.g. is 10mg A + 10mb B a greater or lesser dose than 5mg A + 20mg B?) or when you are varying doses and frequencies (e.g. is 20mg of A each day a greater or lesser dose than 100mg of A once per week?).



### 2. Target toxicity level?
What probability of dose-limiting toxicity are you targeting?
CRM and 3+3 are toxicity-chasing designs - they will escalate dose until toxicity is seen.
There must be a rationale for why escalation is anticipated to be beneficial to the patient.
So what probability of toxicity are you targeting?
If it is hard to specify an acceptable target, or the target is very low, that might be a sign that CRM and 3+3 are not suitable approaches.


### 3. Skeleton?
What is your _a-priori_ expectation of the rate of toxicity at each dose?
This should be a monotonically-increasing vector of probabilities of length $n$.


### 4. Starting dose?
Which dose will you start at? 
Having a dose or two to de-escalate to might be preferable in case your toxicity expectations are wrong.


### 5. Model type?
There have been various suggestions to model the dose-toxicity curve.
Will you use the empiric approach, or a one parameter logisitic approach, etc?


### 6. Model parameters?
Different model types require different parameters and hyperparameters.
E.g. the empiric model shifts the skeleton up and down as DLT outcomes are evaluated in patients, using a single parameter, often called $\beta$.
That parameter needs a prior distribution.
The default prior on $\beta$ in [dfcrm](https://cran.r-project.org/package=dfcrm) is $\beta \sim N(0, 1.34)$.
I will let you research why.


### 7. How to select dose?
Will you select the dose with estimated DLT probability closest to the target?
Or closest to target without exceeding the target?
Will you permit skipping doses in escalation?
How about de-escalation?


### 8. When to stop?
Trials end[^1] - when will your trial end?
What is the maximum sample size?
Do you have a stopping rule for excess toxicity?
Do you want to evaluate a minimum number of patients at the candidate dose before you stop?
Also, check that these constraints do not contradict one another!


### 9. Length of DLT assessment window?
How long is the DLT assessment window?


## If using non-time-to-event method:

### 10. How to select cohort size?
Commonly, designs have used fixed cohort sizes of three.
But perhaps you want to use flexible cohort sizes of 2-5 patients, depending on the times at which the patients arrive?
How will you simulate this?


## If using time-to-event method:

### 11. How to calculate weight of observation?
Under the Time-to-Event CRM (TITE-CRM), censored observations of non-DLT are weighted somewhere between 0 and 1.
Logically, the weight should be a non-decreasing function of the length of follow-up.
If DLT is experienced, the weight should be 1.
Several weight functions have been proposed.
A simple option is linear, i.e. 50% of the evaluation period without DLT is considered to be 0.5 non-DLT events.


## For simulation:

### 12. What is assumed true Prob(DLT)?
The key simulation parameter, what is the true probability of DLT at each dose?
It will be tempting to choose a true dose-DLT curve that looks similar to your skeleton but do not stop there.
Naturally, a thorough simulation study will look at many true dose-DLT curves, with the sought dose appearing at different positions.
If you have a rule for early stopping, you might want to consider a scenario where the true DLT probabilities are all too high.


## For simulation using time-to-event method:

### 13. What is time between patient arrivals?
When simulating using the TITE-CRM method, you will need to randomly sample patient arrival times. 
For memoryless waiting times, the exponential distribution would do the job.


### 14. What is time between patient arrivals?
Generally in simulation, you sample whether toxicity will happen in a patient given their assigned dose and the associated probability of DLT using a random draw from a Bernoulli distribution.
Once you have established that toxicity occurs in a given patient, you will need to sample the time of the DLT. 
How will you do that?
You might assume a constant hazard, for example, and thus use an exponential distribution.
Obviously, if a patient does not experience DLT then their DLT time is infinite.



# Availability of software
Having made all these choices (and it is exhausting to even think of all these things), you then have to find or write code to make it happen.
You may find you do not have the time or programming skill to write exactly what you want and opt for an off-the-shelf solution.
Each of [dfcrm](https://cran.r-project.org/package=dfcrm), [bcrm](https://cran.r-project.org/package=bcrm), and [crmPack](https://cran.r-project.org/package=crmPack) offer methods for simulating CRM trials, and my very own [trialr]({{< ref "/project/trialr/index.md" >}}) will have CRM simulation methods soon.
However, each differs in what they offer (that feels like a blog post for another day).
You may discover that no off-the-shelf package does exactly what you want and find yourself tweaking your choices above in light of what is feasible.
It is an iterative process.



### Read more
Graham Wheeler and co-authors [^2] wrote a tutorial for designing dose-finding trials using the CRM.
You can read more about that article [here]({{< ref "/publication/crm-tutorial/index.md" >}}).



### Footnotes
[^1]: even [STAMPEDE](http://www.stampedetrial.org/), one imagines.

[^2]: Wheeler, G.M., Mander, A.P., Bedding, A., Brock, K., Cornelius, V., Grieve, A.P., Jaki, T., Love, S.B., Odondi, L., Weir, C.J., Yap, C., Bond, S.J., 2019. How to design a dose-finding study using the continual reassessment method. BMC Medical Research Methodology 19. https://doi.org/10.1186/s12874-018-0638-z
