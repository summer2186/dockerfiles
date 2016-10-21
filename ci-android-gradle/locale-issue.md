# locale issue

this docker image defale locale is :

```shell
LANG=
LANGUAGE=
LC_CTYPE="POSIX"
LC_NUMERIC="POSIX"
LC_TIME="POSIX"
LC_COLLATE="POSIX"
LC_MONETARY="POSIX"
LC_MESSAGES="POSIX"
LC_PAPER="POSIX"
LC_NAME="POSIX"
LC_ADDRESS="POSIX"
LC_TELEPHONE="POSIX"
LC_MEASUREMENT="POSIX"
LC_IDENTIFICATION="POSIX"
LC_ALL=
```

when complie some jars, maybe get an exception:

```shell
:app:compileReleaseJavaWithJavac FAILED

FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':app:compileReleaseJavaWithJavac'.
> Could not expand ZIP '/root/***/app/libs/imsdk.jar'.
```

the stacktrace is:

```shell
* Exception is:
org.gradle.api.tasks.TaskExecutionException: Execution failed for task ':app:compileReleaseJavaWithJavac'.
        at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.executeActions(ExecuteActionsTaskExecuter.java:69)
        at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.execute(ExecuteActionsTaskExecuter.java:46)
        at org.gradle.api.internal.tasks.execution.PostExecutionAnalysisTaskExecuter.execute(PostExecutionAnalysisTaskExecuter.java:35)
        at org.gradle.api.internal.tasks.execution.SkipUpToDateTaskExecuter.execute(SkipUpToDateTaskExecuter.java:66)
        at org.gradle.api.internal.tasks.execution.ValidatingTaskExecuter.execute(ValidatingTaskExecuter.java:58)
        at org.gradle.api.internal.tasks.execution.SkipEmptySourceFilesTaskExecuter.execute(SkipEmptySourceFilesTaskExecuter.java:52)
        at org.gradle.api.internal.tasks.execution.SkipTaskWithNoActionsExecuter.execute(SkipTaskWithNoActionsExecuter.java:52)
        at org.gradle.api.internal.tasks.execution.SkipOnlyIfTaskExecuter.execute(SkipOnlyIfTaskExecuter.java:53)
        at org.gradle.api.internal.tasks.execution.ExecuteAtMostOnceTaskExecuter.execute(ExecuteAtMostOnceTaskExecuter.java:43)
        at org.gradle.execution.taskgraph.DefaultTaskGraphExecuter$EventFiringTaskWorker.execute(DefaultTaskGraphExecuter.java:203)
        at org.gradle.execution.taskgraph.DefaultTaskGraphExecuter$EventFiringTaskWorker.execute(DefaultTaskGraphExecuter.java:185)
        at org.gradle.execution.taskgraph.AbstractTaskPlanExecutor$TaskExecutorWorker.processTask(AbstractTaskPlanExecutor.java:66)
        at org.gradle.execution.taskgraph.AbstractTaskPlanExecutor$TaskExecutorWorker.run(AbstractTaskPlanExecutor.java:50)
        at org.gradle.execution.taskgraph.DefaultTaskPlanExecutor.process(DefaultTaskPlanExecutor.java:25)
        at org.gradle.execution.taskgraph.DefaultTaskGraphExecuter.execute(DefaultTaskGraphExecuter.java:110)
        at org.gradle.execution.SelectedTaskExecutionAction.execute(SelectedTaskExecutionAction.java:37)
        at org.gradle.execution.DefaultBuildExecuter.execute(DefaultBuildExecuter.java:37)
        at org.gradle.execution.DefaultBuildExecuter.access$000(DefaultBuildExecuter.java:23)
        at org.gradle.execution.DefaultBuildExecuter$1.proceed(DefaultBuildExecuter.java:43)
        at org.gradle.execution.DryRunBuildExecutionAction.execute(DryRunBuildExecutionAction.java:32)
        at org.gradle.execution.DefaultBuildExecuter.execute(DefaultBuildExecuter.java:37)
        at org.gradle.execution.DefaultBuildExecuter.execute(DefaultBuildExecuter.java:30)
        at org.gradle.initialization.DefaultGradleLauncher$4.run(DefaultGradleLauncher.java:153)
        at org.gradle.internal.Factories$1.create(Factories.java:22)
        at org.gradle.internal.progress.DefaultBuildOperationExecutor.run(DefaultBuildOperationExecutor.java:91)
        at org.gradle.internal.progress.DefaultBuildOperationExecutor.run(DefaultBuildOperationExecutor.java:53)
        at org.gradle.initialization.DefaultGradleLauncher.doBuildStages(DefaultGradleLauncher.java:150)
        at org.gradle.initialization.DefaultGradleLauncher.access$200(DefaultGradleLauncher.java:32)
        at org.gradle.initialization.DefaultGradleLauncher$1.create(DefaultGradleLauncher.java:98)
        at org.gradle.initialization.DefaultGradleLauncher$1.create(DefaultGradleLauncher.java:92)
        at org.gradle.internal.progress.DefaultBuildOperationExecutor.run(DefaultBuildOperationExecutor.java:91)
        at org.gradle.internal.progress.DefaultBuildOperationExecutor.run(DefaultBuildOperationExecutor.java:63)
        at org.gradle.initialization.DefaultGradleLauncher.doBuild(DefaultGradleLauncher.java:92)
        at org.gradle.initialization.DefaultGradleLauncher.run(DefaultGradleLauncher.java:83)
        at org.gradle.launcher.exec.InProcessBuildActionExecuter$DefaultBuildController.run(InProcessBuildActionExecuter.java:99)
        at org.gradle.tooling.internal.provider.ExecuteBuildActionRunner.run(ExecuteBuildActionRunner.java:28)
        at org.gradle.launcher.exec.ChainingBuildActionRunner.run(ChainingBuildActionRunner.java:35)
        at org.gradle.launcher.exec.InProcessBuildActionExecuter.execute(InProcessBuildActionExecuter.java:48)
        at org.gradle.launcher.exec.InProcessBuildActionExecuter.execute(InProcessBuildActionExecuter.java:30)
        at org.gradle.launcher.exec.ContinuousBuildActionExecuter.execute(ContinuousBuildActionExecuter.java:81)
        at org.gradle.launcher.exec.ContinuousBuildActionExecuter.execute(ContinuousBuildActionExecuter.java:46)
        at org.gradle.launcher.exec.DaemonUsageSuggestingBuildActionExecuter.execute(DaemonUsageSuggestingBuildActionExecuter.java:51)
        at org.gradle.launcher.exec.DaemonUsageSuggestingBuildActionExecuter.execute(DaemonUsageSuggestingBuildActionExecuter.java:28)
        at org.gradle.launcher.cli.RunBuildAction.run(RunBuildAction.java:43)
        at org.gradle.internal.Actions$RunnableActionAdapter.execute(Actions.java:173)
        at org.gradle.launcher.cli.CommandLineActionFactory$ParseAndBuildAction.execute(CommandLineActionFactory.java:239)
        at org.gradle.launcher.cli.CommandLineActionFactory$ParseAndBuildAction.execute(CommandLineActionFactory.java:212)
        at org.gradle.launcher.cli.JavaRuntimeValidationAction.execute(JavaRuntimeValidationAction.java:35)
        at org.gradle.launcher.cli.JavaRuntimeValidationAction.execute(JavaRuntimeValidationAction.java:24)
        at org.gradle.launcher.cli.ExceptionReportingAction.execute(ExceptionReportingAction.java:33)
        at org.gradle.launcher.cli.ExceptionReportingAction.execute(ExceptionReportingAction.java:22)
        at org.gradle.launcher.cli.CommandLineActionFactory$WithLogging.execute(CommandLineActionFactory.java:205)
        at org.gradle.launcher.cli.CommandLineActionFactory$WithLogging.execute(CommandLineActionFactory.java:169)
        at org.gradle.launcher.Main.doAction(Main.java:33)
        at org.gradle.launcher.bootstrap.EntryPoint.run(EntryPoint.java:45)
        at org.gradle.launcher.bootstrap.ProcessBootstrap.runNoExit(ProcessBootstrap.java:55)
        at org.gradle.launcher.bootstrap.ProcessBootstrap.run(ProcessBootstrap.java:36)
        at org.gradle.launcher.GradleMain.main(GradleMain.java:23)
Caused by: org.gradle.api.GradleException: Could not expand ZIP '/root/***/app/libs/imsdk.jar'.
        at org.gradle.api.internal.file.archive.ZipFileTree.visit(ZipFileTree.java:98)
        at org.gradle.api.internal.file.collections.FileTreeAdapter.visit(FileTreeAdapter.java:109)
        at org.gradle.api.internal.file.AbstractFileTree$FilteredFileTreeImpl.visit(AbstractFileTree.java:141)
        at org.gradle.api.internal.tasks.compile.incremental.jar.DefaultJarSnapshotter.createSnapshot(DefaultJarSnapshotter.java:45)
        at org.gradle.api.internal.tasks.compile.incremental.jar.DefaultJarSnapshotter.createSnapshot(DefaultJarSnapshotter.java:40)
        at org.gradle.api.internal.tasks.compile.incremental.jar.CachingJarSnapshotter$1.create(CachingJarSnapshotter.java:45)
        at org.gradle.api.internal.tasks.compile.incremental.jar.CachingJarSnapshotter$1.create(CachingJarSnapshotter.java:43)
        at org.gradle.api.internal.tasks.compile.incremental.jar.DefaultJarSnapshotCache$2.create(DefaultJarSnapshotCache.java:59)
        at org.gradle.api.internal.tasks.compile.incremental.jar.DefaultJarSnapshotCache$2.create(DefaultJarSnapshotCache.java:57)
        at org.gradle.api.internal.cache.MinimalPersistentCache.get(MinimalPersistentCache.java:66)
        at org.gradle.api.internal.tasks.compile.incremental.jar.DefaultJarSnapshotCache.get(DefaultJarSnapshotCache.java:57)
        at org.gradle.api.internal.tasks.compile.incremental.jar.DefaultJarSnapshotCache.get(DefaultJarSnapshotCache.java:33)
        at org.gradle.api.internal.tasks.compile.incremental.jar.CachingJarSnapshotter.createSnapshot(CachingJarSnapshotter.java:43)
        at org.gradle.api.internal.tasks.compile.incremental.jar.JarClasspathSnapshotFactory.createSnapshot(JarClasspathSnapshotFactory.java:42)
        at org.gradle.api.internal.tasks.compile.incremental.jar.JarClasspathSnapshotMaker.maybeInitialize(JarClasspathSnapshotMaker.java:62)
        at org.gradle.api.internal.tasks.compile.incremental.jar.JarClasspathSnapshotMaker.storeJarSnapshots(JarClasspathSnapshotMaker.java:43)
        at org.gradle.api.internal.tasks.compile.incremental.IncrementalCompilationFinalizer.execute(IncrementalCompilationFinalizer.java:47)
        at org.gradle.api.internal.tasks.compile.incremental.IncrementalCompilationFinalizer.execute(IncrementalCompilationFinalizer.java:24)
        at org.gradle.api.tasks.compile.JavaCompile.performCompilation(JavaCompile.java:163)
        at org.gradle.api.tasks.compile.JavaCompile.compile(JavaCompile.java:127)
        at com.android.build.gradle.tasks.factory.AndroidJavaCompile.compile(AndroidJavaCompile.java:49)
        at org.gradle.internal.reflect.JavaMethod.invoke(JavaMethod.java:75)
        at org.gradle.api.internal.project.taskfactory.AnnotationProcessingTaskFactory$IncrementalTaskAction.doExecute(AnnotationProcessingTaskFactory.java:245)
        at org.gradle.api.internal.project.taskfactory.AnnotationProcessingTaskFactory$StandardTaskAction.execute(AnnotationProcessingTaskFactory.java:221)
        at org.gradle.api.internal.project.taskfactory.AnnotationProcessingTaskFactory$IncrementalTaskAction.execute(AnnotationProcessingTaskFactory.java:232)
        at org.gradle.api.internal.project.taskfactory.AnnotationProcessingTaskFactory$StandardTaskAction.execute(AnnotationProcessingTaskFactory.java:210)
        at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.executeAction(ExecuteActionsTaskExecuter.java:80)
        at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.executeActions(ExecuteActionsTaskExecuter.java:61)
        ... 57 more
Caused by: org.gradle.api.GradleException: Could not copy zip entry /root/***/app/libs/imsdk.jar!com/tencent/TIMConversation$?.class to '/root/***/app/build/tmp/expandedArchives/imsdk.jar_bx321a59xlag40biry9f8e8v6/com/tencent/TIMConversation$?.class'.
        at org.gradle.api.internal.file.AbstractFileTreeElement.copyTo(AbstractFileTreeElement.java:79)
        at org.gradle.api.internal.file.archive.ZipFileTree$DetailsImpl.getFile(ZipFileTree.java:130)
        at org.gradle.api.internal.tasks.compile.incremental.analyzer.ClassFilesAnalyzer.visitFile(ClassFilesAnalyzer.java:49)
        at org.gradle.api.internal.tasks.compile.incremental.jar.DefaultJarSnapshotter$1.visitFile(DefaultJarSnapshotter.java:50)
        at org.gradle.api.internal.file.AbstractFileTree$FilteredFileTreeImpl$1.visitFile(AbstractFileTree.java:150)
        at org.gradle.api.internal.file.archive.ZipFileTree.visit(ZipFileTree.java:91)
        ... 84 more
Caused by: org.gradle.internal.nativeintegration.filesystem.FileException: Could not set file mode 644 on '/root/***/app/build/tmp/expandedArchives/imsdk.jar_bx321a59xlag40biry9f8e8v6/com/tencent/TIMConversation$?.class'.
        at org.gradle.internal.nativeintegration.filesystem.services.GenericFileSystem.chmod(GenericFileSystem.java:81)
        at org.gradle.api.internal.file.AbstractFileTreeElement.copyTo(AbstractFileTreeElement.java:76)
        ... 89 more
Caused by: net.rubygrapefruit.platform.NativeException: Could not set UNIX mode on /root/***/app/build/tmp/expandedArchives/imsdk.jar_bx321a59xlag40biry9f8e8v6/com/tencent/TIMConversation$?.class: could not convert string to current locale
        at net.rubygrapefruit.platform.internal.DefaultPosixFiles.setMode(DefaultPosixFiles.java:41)
        at org.gradle.internal.nativeintegration.filesystem.services.NativePlatformBackedChmod.chmod(NativePlatformBackedChmod.java:33)
        at org.gradle.internal.nativeintegration.filesystem.services.GenericFileSystem.chmod(GenericFileSystem.java:79)
        ... 90 more


BUILD FAILED

```

the simple solution is :

```shell
export LC_ALL=en_US.UTF-8
```

but when you use this image to run this command, you will get a error:

```shell
-bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8): No such file or directory
```

you should run this commands first:

```shell
apt-get update && apt-get install -y locales
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales && \
    /usr/sbin/update-locale LANG=en_US.UTF-8
```
