# Docker JMeter 2.12 with plugins 1.2.0 for non-gui use

## Contains

* JMeter 2.12
* JMeterPlugins-Standard 1.2.0
* JMeterPlugins-Extras 1.2.0
* JMeterPlugins-ExtrasLibs 1.2.0
* user.properties


### Usage for child layer

  FROM rdpanek/jmeter:2.12

### Build
  `git clone https://github.com/scalanova/docker_jmeter.git`

  `make build`

### run test
  `make test testPlan.jmx`

### output

#### testPlan.jmx.jtl (csv)
```
timeStamp;elapsed;label;responseCode;threadName;success;bytes;grpThreads;allThreads;Latency;SampleCount;ErrorCount;IdleTime
22:59:55;889;HTTP Request;200;threads 1-1;true;2884;10;10;889;1;0;0
22:59:55;1205;HTTP Request;200;threads 1-3;true;2884;10;10;1195;1;0;0
22:59:55;1201;HTTP Request;200;threads 1-5;true;2884;10;10;1201;1;0;0
22:59:55;1249;HTTP Request;200;threads 1-2;true;2884;10;10;1245;1;0;0
22:59:55;1260;HTTP Request;200;threads 1-4;true;2884;10;10;1251;1;0;0
```

#### testPlan.jmx.log
```
2014/11/18 22:59:57 INFO  - jmeter.threads.JMeterThread: Thread finished: threads 1-3
2014/11/18 22:59:58 INFO  - jmeter.threads.JMeterThread: Stopping because end time detected by thread: threads 1-5
2014/11/18 22:59:58 INFO  - jmeter.threads.JMeterThread: Thread finished: threads 1-5
2014/11/18 22:59:58 INFO  - jmeter.threads.JMeterThread: Stopping because end time detected by thread: threads 1-6
2014/11/18 22:59:58 INFO  - jmeter.threads.JMeterThread: Thread finished: threads 1-6
```

## Changelog
- 2.12 JMeter added ( image [rdpanek/jmeter](https://registry.hub.docker.com/u/rdpanek/jmeter/) )
