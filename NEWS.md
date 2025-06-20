# lgrExtra 0.1.0

* Add AppenderDynatrace
* Add AppenderPool (thx @jimbrig)
* add AppenderAWSCloudWatchLog for logging to [AWS CloudWatch](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html) (#9) (thx @DyfanJones)


# lgrExtra 0.0.9

* Fixes for tests related to recent changes in data.table 1.16.0


# lgrExtra 0.0.8

* Support functions for index names and index mappings in AppenderElasticSearch


# lgrExtra 0.0.7

* Rebuild docs for R 4.2.0


# lgrExtra 0.0.6

* add AppenderElasticSearch for logging to ElasticSearch (#5)


# lgrExtra 0.0.5

* Migration of experimental Appenders from [lgr](https://s-fleck.github.io/lgr/)

* `AppenderDbi`: The default setting for buffer_size has been changed to `0`. 
  This means every log event is written directly to the target database. If you
  want performance improvements, set the buffer to a nonzero value. 

* Removed `AppenderRjdbc`

* `AppenderGmail` is now compatible with gmailr 1.0.0
