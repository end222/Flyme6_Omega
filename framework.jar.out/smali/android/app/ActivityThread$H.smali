.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BACKGROUND_VISIBLE_BEHIND_CHANGED:I = 0x94

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CANCEL_VISIBLE_BEHIND:I = 0x93

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    .line 1296
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$H;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private maybeSnapshot()V
    .locals 8

    .prologue
    .line 1696
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1699
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1700
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1702
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1703
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1704
    const-string/jumbo v5, "ActivityThread"

    const-string/jumbo v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    return-void

    .line 1707
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1708
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_1

    .line 1709
    const-string/jumbo v5, "ActivityThread"

    const-string/jumbo v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    return-void

    .line 1713
    :cond_1
    const/4 v5, 0x1

    .line 1712
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1717
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 1695
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void

    .line 1714
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1715
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1349
    sget-boolean v0, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-eqz v0, :cond_0

    .line 1403
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1350
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1351
    :pswitch_1
    const-string/jumbo v0, "ACT-LAUNCH_ACTIVITY"

    return-object v0

    .line 1352
    :pswitch_2
    const-string/jumbo v0, "ACT-PAUSE_ACTIVITY"

    return-object v0

    .line 1353
    :pswitch_3
    const-string/jumbo v0, "ACT-PAUSE_ACTIVITY_FINISHING"

    return-object v0

    .line 1354
    :pswitch_4
    const-string/jumbo v0, "ACT-STOP_ACTIVITY_SHOW"

    return-object v0

    .line 1355
    :pswitch_5
    const-string/jumbo v0, "ACT-STOP_ACTIVITY_HIDE"

    return-object v0

    .line 1356
    :pswitch_6
    const-string/jumbo v0, "ACT-SHOW_WINDOW"

    return-object v0

    .line 1357
    :pswitch_7
    const-string/jumbo v0, "ACT-HIDE_WINDOW"

    return-object v0

    .line 1358
    :pswitch_8
    const-string/jumbo v0, "ACT-RESUME_ACTIVITY"

    return-object v0

    .line 1359
    :pswitch_9
    const-string/jumbo v0, "SEND_RESULT"

    return-object v0

    .line 1360
    :pswitch_a
    const-string/jumbo v0, "ACT-DESTROY_ACTIVITY"

    return-object v0

    .line 1361
    :pswitch_b
    const-string/jumbo v0, "BIND_APPLICATION"

    return-object v0

    .line 1362
    :pswitch_c
    const-string/jumbo v0, "EXIT_APPLICATION"

    return-object v0

    .line 1363
    :pswitch_d
    const-string/jumbo v0, "ACT-NEW_INTENT"

    return-object v0

    .line 1364
    :pswitch_e
    const-string/jumbo v0, "BDC-RECEIVER"

    return-object v0

    .line 1365
    :pswitch_f
    const-string/jumbo v0, "SVC-CREATE_SERVICE"

    return-object v0

    .line 1366
    :pswitch_10
    const-string/jumbo v0, "SVC-SERVICE_ARGS"

    return-object v0

    .line 1367
    :pswitch_11
    const-string/jumbo v0, "SVC-STOP_SERVICE"

    return-object v0

    .line 1368
    :pswitch_12
    const-string/jumbo v0, "CONFIGURATION_CHANGED"

    return-object v0

    .line 1369
    :pswitch_13
    const-string/jumbo v0, "CLEAN_UP_CONTEXT"

    return-object v0

    .line 1370
    :pswitch_14
    const-string/jumbo v0, "GC_WHEN_IDLE"

    return-object v0

    .line 1371
    :pswitch_15
    const-string/jumbo v0, "SVC-BIND_SERVICE"

    return-object v0

    .line 1372
    :pswitch_16
    const-string/jumbo v0, "SVC-UNBIND_SERVICE"

    return-object v0

    .line 1373
    :pswitch_17
    const-string/jumbo v0, "SVC-DUMP_SERVICE"

    return-object v0

    .line 1374
    :pswitch_18
    const-string/jumbo v0, "LOW_MEMORY"

    return-object v0

    .line 1375
    :pswitch_19
    const-string/jumbo v0, "ACT-ACTIVITY_CONFIGURATION_CHANGED"

    return-object v0

    .line 1376
    :pswitch_1a
    const-string/jumbo v0, "ACT-RELAUNCH_ACTIVITY"

    return-object v0

    .line 1377
    :pswitch_1b
    const-string/jumbo v0, "PROFILER_CONTROL"

    return-object v0

    .line 1378
    :pswitch_1c
    const-string/jumbo v0, "CREATE_BACKUP_AGENT"

    return-object v0

    .line 1379
    :pswitch_1d
    const-string/jumbo v0, "DESTROY_BACKUP_AGENT"

    return-object v0

    .line 1380
    :pswitch_1e
    const-string/jumbo v0, "SUICIDE"

    return-object v0

    .line 1381
    :pswitch_1f
    const-string/jumbo v0, "REMOVE_PROVIDER"

    return-object v0

    .line 1382
    :pswitch_20
    const-string/jumbo v0, "ENABLE_JIT"

    return-object v0

    .line 1383
    :pswitch_21
    const-string/jumbo v0, "DISPATCH_PACKAGE_BROADCAST"

    return-object v0

    .line 1384
    :pswitch_22
    const-string/jumbo v0, "SCHEDULE_CRASH"

    return-object v0

    .line 1385
    :pswitch_23
    const-string/jumbo v0, "DUMP_HEAP"

    return-object v0

    .line 1386
    :pswitch_24
    const-string/jumbo v0, "DUMP_ACTIVITY"

    return-object v0

    .line 1387
    :pswitch_25
    const-string/jumbo v0, "SLEEPING"

    return-object v0

    .line 1388
    :pswitch_26
    const-string/jumbo v0, "SET_CORE_SETTINGS"

    return-object v0

    .line 1389
    :pswitch_27
    const-string/jumbo v0, "UPDATE_PACKAGE_COMPATIBILITY_INFO"

    return-object v0

    .line 1390
    :pswitch_28
    const-string/jumbo v0, "TRIM_MEMORY"

    return-object v0

    .line 1391
    :pswitch_29
    const-string/jumbo v0, "DUMP_PROVIDER"

    return-object v0

    .line 1392
    :pswitch_2a
    const-string/jumbo v0, "UNSTABLE_PROVIDER_DIED"

    return-object v0

    .line 1393
    :pswitch_2b
    const-string/jumbo v0, "REQUEST_ASSIST_CONTEXT_EXTRAS"

    return-object v0

    .line 1394
    :pswitch_2c
    const-string/jumbo v0, "TRANSLUCENT_CONVERSION_COMPLETE"

    return-object v0

    .line 1395
    :pswitch_2d
    const-string/jumbo v0, "INSTALL_PROVIDER"

    return-object v0

    .line 1396
    :pswitch_2e
    const-string/jumbo v0, "ON_NEW_ACTIVITY_OPTIONS"

    return-object v0

    .line 1397
    :pswitch_2f
    const-string/jumbo v0, "CANCEL_VISIBLE_BEHIND"

    return-object v0

    .line 1398
    :pswitch_30
    const-string/jumbo v0, "BACKGROUND_VISIBLE_BEHIND_CHANGED"

    return-object v0

    .line 1399
    :pswitch_31
    const-string/jumbo v0, "ENTER_ANIMATION_COMPLETE"

    return-object v0

    .line 1350
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x1040

    const/4 v10, 0x1

    const/4 v2, 0x0

    const-wide/16 v12, 0x40

    .line 1462
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1688
    :goto_0
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread$H;->handleFlymeMessage(Landroid/os/Message;)V

    sget-boolean v0, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$H;->isDebuggableMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1689
    const-string/jumbo v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " handled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1690
    const-string/jumbo v2, ": "

    .line 1689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1690
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1690
    const-string/jumbo v2, " / "

    .line 1689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1690
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :pswitch_1
    const-string v0, "activityStart"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/app/ActivityThread$ActivityClientRecord;

    .local v9, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v9, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v9, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v9, v3}, Landroid/app/ActivityThread;->-wrap11(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v9    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2
    const-string v0, "activityRestart"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/app/ActivityThread$ActivityClientRecord;

    .restart local v9    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v9}, Landroid/app/ActivityThread;->-wrap15(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v9    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_3
    const-string v0, "activityPause"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    move v3, v10

    :goto_1
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 1481
    iget v5, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move v5, v10

    .line 1480
    :goto_2
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V

    .line 1482
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1483
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_1
    move v3, v2

    .line 1480
    goto :goto_1

    :cond_2
    move v5, v2

    .line 1481
    goto :goto_2

    .line 1486
    :pswitch_4
    const-string/jumbo v0, "activityPause"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1487
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    move v3, v10

    :goto_3
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 1488
    iget v5, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    move v5, v10

    :goto_4
    move v2, v10

    .line 1487
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V

    .line 1489
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_3
    move v3, v2

    .line 1487
    goto :goto_3

    :cond_4
    move v5, v2

    .line 1488
    goto :goto_4

    .line 1492
    :pswitch_5
    const-string/jumbo v0, "activityStop"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1493
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v10, v2}, Landroid/app/ActivityThread;->-wrap20(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1494
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1497
    :pswitch_6
    const-string/jumbo v0, "activityStop"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1498
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityThread;->-wrap20(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1499
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1502
    :pswitch_7
    const-string/jumbo v0, "activityShowWindow"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1503
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v1, v0, v10}, Landroid/app/ActivityThread;->-wrap24(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1504
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1507
    :pswitch_8
    const-string/jumbo v0, "activityHideWindow"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1508
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v1, v0, v2}, Landroid/app/ActivityThread;->-wrap24(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1509
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1512
    :pswitch_9
    const-string/jumbo v0, "activityResume"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1513
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_5

    move v2, v10

    :cond_5
    invoke-virtual {v1, v0, v10, v2, v10}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZ)V

    .line 1514
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1517
    :pswitch_a
    const-string/jumbo v0, "activityDeliverResult"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1518
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ResultData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap16(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    .line 1519
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1522
    :pswitch_b
    const-string/jumbo v0, "activityDestroy"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1523
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_6

    .line 1524
    :goto_5
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 1523
    invoke-static {v1, v0, v10, v3, v2}, Landroid/app/ActivityThread;->-wrap5(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    .line 1525
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_6
    move v10, v2

    .line 1523
    goto :goto_5

    .line 1528
    :pswitch_c
    const-string/jumbo v0, "bindApplication"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1529
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/app/ActivityThread$AppBindData;

    .line 1530
    .local v7, "data":Landroid/app/ActivityThread$AppBindData;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v7}, Landroid/app/ActivityThread;->-wrap1(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 1531
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1534
    .end local v7    # "data":Landroid/app/ActivityThread$AppBindData;
    :pswitch_d
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_7

    .line 1535
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 1537
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1540
    :pswitch_e
    const-string/jumbo v0, "activityNewIntent"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1541
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap12(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    .line 1542
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1545
    :pswitch_f
    const-string/jumbo v0, "broadcastReceiveComp"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1546
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ReceiverData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap14(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 1547
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1548
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1551
    :pswitch_10
    const-string/jumbo v0, "serviceCreate"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1552
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 1553
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1556
    :pswitch_11
    const-string/jumbo v0, "serviceBind"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1557
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap2(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1558
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1561
    :pswitch_12
    const-string/jumbo v0, "serviceUnbind"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1562
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap22(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1563
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1566
    :pswitch_13
    const-string/jumbo v0, "serviceStart"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1567
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap17(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 1568
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1571
    :pswitch_14
    const-string/jumbo v0, "serviceStop"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1572
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap21(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1573
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1574
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1577
    :pswitch_15
    const-string/jumbo v0, "configChanged"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1578
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, v1, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 1579
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual {v1, v0, v3}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1580
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1583
    :pswitch_16
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1584
    .local v6, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v0, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v1, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v2, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1587
    .end local v6    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_17
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_0

    .line 1590
    :pswitch_18
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1593
    :pswitch_19
    const-string/jumbo v0, "lowMemory"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1594
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 1595
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1598
    :pswitch_1a
    const-string/jumbo v0, "activityConfigChanged"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1599
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ActivityConfigChangeData;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;)V

    .line 1600
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1603
    :pswitch_1b
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_8

    :goto_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ProfilerInfo;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v10, v0, v2}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    goto/16 :goto_0

    :cond_8
    move v10, v2

    goto :goto_6

    .line 1606
    :pswitch_1c
    const-string/jumbo v0, "backupCreateAgent"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1607
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1608
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1611
    :pswitch_1d
    const-string/jumbo v0, "backupDestroyAgent"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1612
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap6(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1613
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1616
    :pswitch_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 1619
    :pswitch_1f
    const-string/jumbo v0, "providerRemove"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1620
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 1621
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1624
    :pswitch_20
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_0

    .line 1627
    :pswitch_21
    const-string/jumbo v0, "broadcastPackage"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1628
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1629
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1632
    :pswitch_22
    new-instance v1, Landroid/app/RemoteServiceException;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1634
    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_9

    :goto_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v10, v0}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_0

    :cond_9
    move v10, v2

    goto :goto_7

    .line 1637
    :pswitch_24
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap7(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1640
    :pswitch_25
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1643
    :pswitch_26
    const-string/jumbo v0, "sleeping"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1644
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_a

    :goto_8
    invoke-static {v1, v0, v10}, Landroid/app/ActivityThread;->-wrap19(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1645
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_a
    move v10, v2

    .line 1644
    goto :goto_8

    .line 1648
    :pswitch_27
    const-string/jumbo v0, "setCoreSettings"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1649
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap18(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 1650
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1653
    :pswitch_28
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap23(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_0

    .line 1656
    :pswitch_29
    const-string/jumbo v0, "trimMemory"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1657
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    .line 1658
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1661
    :pswitch_2a
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    .line 1664
    :pswitch_2b
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    goto/16 :goto_0

    .line 1667
    :pswitch_2c
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v10, :cond_b

    :goto_9
    invoke-virtual {v1, v0, v10}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_b
    move v10, v2

    goto :goto_9

    .line 1670
    :pswitch_2d
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto/16 :goto_0

    .line 1673
    :pswitch_2e
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/util/Pair;

    .line 1674
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityOptions;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 1677
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    :pswitch_2f
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleCancelVisibleBehind(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1680
    :pswitch_30
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_c

    :goto_a
    invoke-virtual {v1, v0, v10}, Landroid/app/ActivityThread;->handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_c
    move v10, v2

    goto :goto_a

    .line 1683
    :pswitch_31
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap10(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1462
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_11
        :pswitch_12
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_2
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_25
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method isDebuggableMessage(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1408
    packed-switch p1, :pswitch_data_0

    .line 1455
    :pswitch_0
    return v0

    .line 1409
    :pswitch_1
    return v1

    .line 1410
    :pswitch_2
    return v1

    .line 1411
    :pswitch_3
    return v1

    .line 1412
    :pswitch_4
    return v1

    .line 1413
    :pswitch_5
    return v1

    .line 1414
    :pswitch_6
    return v1

    .line 1415
    :pswitch_7
    return v1

    .line 1416
    :pswitch_8
    return v1

    .line 1417
    :pswitch_9
    return v1

    .line 1418
    :pswitch_a
    return v1

    .line 1419
    :pswitch_b
    return v1

    .line 1420
    :pswitch_c
    return v1

    .line 1421
    :pswitch_d
    return v1

    .line 1422
    :pswitch_e
    return v1

    .line 1423
    :pswitch_f
    return v1

    .line 1424
    :pswitch_10
    return v1

    .line 1425
    :pswitch_11
    return v1

    .line 1426
    :pswitch_12
    return v0

    .line 1427
    :pswitch_13
    return v0

    .line 1428
    :pswitch_14
    return v0

    .line 1429
    :pswitch_15
    return v1

    .line 1430
    :pswitch_16
    return v1

    .line 1431
    :pswitch_17
    return v0

    .line 1432
    :pswitch_18
    return v1

    .line 1433
    :pswitch_19
    return v1

    .line 1434
    :pswitch_1a
    return v1

    .line 1435
    :pswitch_1b
    return v0

    .line 1436
    :pswitch_1c
    return v0

    .line 1437
    :pswitch_1d
    return v0

    .line 1438
    :pswitch_1e
    return v0

    .line 1439
    :pswitch_1f
    return v0

    .line 1440
    :pswitch_20
    return v0

    .line 1441
    :pswitch_21
    return v0

    .line 1442
    :pswitch_22
    return v0

    .line 1443
    :pswitch_23
    return v0

    .line 1444
    :pswitch_24
    return v0

    .line 1445
    :pswitch_25
    return v0

    .line 1446
    :pswitch_26
    return v0

    .line 1447
    :pswitch_27
    return v0

    .line 1448
    :pswitch_28
    return v0

    .line 1449
    :pswitch_29
    return v0

    .line 1450
    :pswitch_2a
    return v0

    .line 1451
    :pswitch_2b
    return v0

    .line 1452
    :pswitch_2c
    return v0

    .line 1453
    :pswitch_2d
    return v0

    .line 1408
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method

.method private handleFlymeMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleShrinkMemory(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
    .end packed-switch
.end method
