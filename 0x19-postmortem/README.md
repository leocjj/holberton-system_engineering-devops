# Project 0x19.

# Postmortem

![Image of postmortem](https://github.com/leocjj/holberton-system_engineering-devops/blob/master/0x19-postmortem/portmortem.jpeg)
###### source: https://dzone.com/articles/automated-root-cause-analysis

## Issue Summary

    The server was dowed by approximately half an hour after a new configuration made by an engineer while deploying a new feature, from 00:25 to 00:55 EST Saturday 05-24-2020.

    The main webserver was impacted so the main web page of the company was inaccessible during this period. Application server wan not affected but according to logs just 3% of users do.

    The root cause was a typo in the name of a file in a config file of the webserver.


## Timeline

* 00:20 new config file for web server was finished
* 00:22 new config file was uploaded
* 00:23 web server was restarted
* 00:25 the engineer in charge try to see the main web page and realize that the server was downed.
* 00:26 technicians started to verify every line of the new config line. The old file wasn't restored to avoid additional impact because nobody knew what was going on.
* 00:46 all line was verified but the initial focus was on the content of related files linked to the config file.
* 00:48 after a complete revision, the root cause wasn't found so engineer in charge requested a typo review of the file.
* 00:50 typo was found almost at the end of the file.
* 00:52 typo was corrected and uploaded.
* 00:53 web server was restarted.
* 00:55 the engineer in charge try to see the main web page and realize that everything was working fine.


## Root cause and resolution

### Root cause

Misspelling word in a config file due to human error.
No tests were performed for the final part of the config file.

### Resolution
* Config file was typo corrected in line number 78, the extension file had the last letter repeated.


## Corrective and preventative measures

### Can be improved/fixed
* New config file was reviewed twice after the server was up.
* Config files must be fully tested line by line so new protocol for this task is proposed for approval (see attachment).

### A list of tasks to address the issue
* To patch webserver config file.
* Add new monitoring tasks on the server.
* New config file review performed by a new team.


## Author

* **Leonardo Calderon J.** - *Initial work* - [LeoCJJ](https://github.com/leocjj)
05/24/2020

