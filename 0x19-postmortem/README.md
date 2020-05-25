# Project 0x19.

# Postmortem

![Image of postmortem](https://github.com/leocjj/holberton-system_engineering-devops/blob/master/0x19-postmortem/portmortem.jpeg)
###### source: https://dzone.com/articles/automated-root-cause-analysis

## Issue Summary

    The server was dowed by approximately half and hour after a new configuration made by an engineer while deploying a new feature, from 00:25 to 00:55 EST Saturday 05-24-2020.

    The main webserver was impacted so the main web page of the company was inaccessible during this period. Application server wan not affected but according to logs just 3% of users do.

    The root cause was a typo in the name of a file in a config file of the webserver.


## Timeline
 format: time - keep it short, 1 or 2 sentences) must contain:
* when was the issue detected
* how was the issue detected (monitoring alert, an engineer noticed something, a customer complained…)
* actions taken (what parts of the system were investigated, what were the assumption on the root cause of the issue)
* misleading investigation/debugging paths that were taken
* which team/individuals was the incident escalated to
* how the incident was resolved

## Root cause and resolution

### Root cause
### Resolution
detail how the issue was fixed

## Corrective and preventative measures
### can be improved/fixed
broadly speaking
### a list of tasks to address the issue
(be very specific, like a TODO, example: patch Nginx server, add monitoring on server memory…)



400 to 600 words


## Author

* **Leonardo Calderon J.** - *Initial work* - [LeoCJJ](https://github.com/leocjj)
05/24/2020

