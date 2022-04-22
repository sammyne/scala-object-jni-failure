# Scala Object JNI Failure

This repository demonstrates the failure of binding JNI method to Scala's Object.

## Environment
- scala 2.12.15
- gcc 9.4.0
- make 4.2.1
- ubuntu 20.04

## Reproduction

### With static method of Java class
```bash
bash check-ok.sh
```

It works with output as 
```bash
hello world from C
```

### With method of Scala object
```bash
bash check-err.sh
```

It failed with output as

```bash
Exception in thread "sbt-bg-threads-1" java.lang.UnsatisfiedLinkError: HelloWorld$.hi()V
        at HelloWorld$.hi(Native Method)
        at Main$.delayedEndpoint$Main$1(Main.scala:3)
        at Main$delayedInit$body.apply(Main.scala:1)
        at scala.Function0.apply$mcV$sp(Function0.scala:39)
        at scala.Function0.apply$mcV$sp$(Function0.scala:39)
        at scala.runtime.AbstractFunction0.apply$mcV$sp(AbstractFunction0.scala:17)
        at scala.App.$anonfun$main$1(App.scala:76)
        at scala.App.$anonfun$main$1$adapted(App.scala:76)
        at scala.collection.IterableOnceOps.foreach(IterableOnce.scala:563)
        at scala.collection.IterableOnceOps.foreach$(IterableOnce.scala:561)
        at scala.collection.AbstractIterable.foreach(Iterable.scala:926)
        at scala.App.main(App.scala:76)
        at scala.App.main$(App.scala:74)
        at Main$.main(Main.scala:1)
        at Main.main(Main.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:498)
        at sbt.Run.invokeMain(Run.scala:143)
        at sbt.Run.execute$1(Run.scala:93)
        at sbt.Run.$anonfun$runWithLoader$5(Run.scala:120)
        at sbt.Run$.executeSuccess(Run.scala:186)
        at sbt.Run.runWithLoader(Run.scala:120)
        at sbt.Defaults$.$anonfun$bgRunTask$6(Defaults.scala:1983)
        at sbt.Defaults$.$anonfun$termWrapper$2(Defaults.scala:1922)
        at scala.runtime.java8.JFunction0$mcV$sp.apply(JFunction0$mcV$sp.java:23)
        at scala.util.Try$.apply(Try.scala:213)
        at sbt.internal.BackgroundThreadPool$BackgroundRunnable.run(DefaultBackgroundJobService.scala:369)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:748)
```
