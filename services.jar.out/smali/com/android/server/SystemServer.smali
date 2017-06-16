.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final DATASHPAING_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.datashaping.DataShapingService"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IS_USER_BUILD:Z

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LCD_FILENAME1:Ljava/lang/String; = "proc/tp_lockdown_info"

.field private static final LCD_FILENAME2:Ljava/lang/String; = "/sys/bus/i2c/devices/2-004a/misc"

.field private static final LCD_FILENAME3:Ljava/lang/String; = "/sys/bus/i2c/devices/4-004a/lockdown_info"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field static mMTPROF_disable:Z


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 226
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 225
    :goto_0
    sput-boolean v0, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    .line 157
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 240
    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 5
    .param p0, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 471
    :try_start_0
    sget-boolean v3, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    if-nez v3, :cond_0

    .line 472
    new-instance v2, Ljava/io/FileOutputStream;

    const-string/jumbo v3, "/proc/bootprof"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 473
    .local v2, "fbp":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 474
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 475
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v2    # "fbp":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BOOTPROF"

    const-string/jumbo v4, "Failure open /proc/bootprof entry"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 477
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 478
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "BOOTPROF"

    const-string/jumbo v4, "Failure open /proc/bootprof, not found!"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 503
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 504
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 505
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 502
    return-void
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 458
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 237
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 236
    return-void
.end method

.method private performPendingShutdown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 487
    const-string/jumbo v3, "sys.shutdown.requested"

    const-string/jumbo v4, ""

    .line 486
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 489
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 492
    .local v1, "reboot":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 493
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 498
    :goto_1
    invoke-static {v7, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 485
    .end local v1    # "reboot":Z
    :cond_0
    return-void

    .line 489
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "reboot":Z
    goto :goto_0

    .line 495
    :cond_2
    const/4 v0, 0x0

    .local v0, "reason":Ljava/lang/String;
    goto :goto_1
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 464
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    return-void
.end method

.method private run()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v9, 0x1

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 251
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 263
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v8    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xbc2

    invoke-static {v4, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 277
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.mtprof.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    .line 278
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "Android:SysServerInit_START"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 293
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 294
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 303
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 307
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 311
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 315
    invoke-static {v9}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 318
    invoke-static {v9}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 322
    const/4 v0, -0x2

    .line 321
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 323
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 324
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 327
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 331
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string/jumbo v1, "rm -r /data/piggybank"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 342
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 345
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 346
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 350
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 351
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 352
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    :goto_1
    invoke-direct {p0}, Lcom/android/server/SystemServer;->writeColorInfo()V

    .line 372
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "Android:SysServerInit_END"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 380
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 381
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :catch_0
    move-exception v6

    .line 333
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system server init delete piggybank fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 354
    .local v7, "ex":Ljava/lang/Throwable;
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v0, :cond_4

    instance-of v0, v7, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_4

    .line 358
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v7, v9}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto :goto_1

    .line 360
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_4
    throw v7
.end method

.method private startBootstrapServices()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 519
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 522
    .local v3, "installer":Lcom/android/server/pm/Installer;
    sget-boolean v6, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    if-nez v6, :cond_0

    .line 524
    const/4 v4, 0x0

    .line 525
    .local v4, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_0
    new-instance v5, Lcom/mediatek/msglogger/MessageMonitorService;

    invoke-direct {v5}, Lcom/mediatek/msglogger/MessageMonitorService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .local v5, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_1
    const-string/jumbo v6, "SystemServer"

    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    const-string/jumbo v9, "Create message monitor service successfully ."

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string/jumbo v6, "msgmonitorservice"

    .line 530
    invoke-virtual {v5}, Lcom/mediatek/msglogger/MessageMonitorService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 529
    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 538
    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 539
    const-class v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 538
    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 540
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 541
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 547
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 551
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 554
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/lights/LightsService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 558
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 561
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x64

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 564
    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v6, "trigger_restart_min_framework"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 566
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 574
    :cond_1
    :goto_1
    const-string/jumbo v6, "0"

    const-string/jumbo v9, "ro.mtk_antibricking_level"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 575
    .local v1, "disableAntiBricking":Z
    if-nez v1, :cond_2

    .line 577
    :try_start_2
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Recovery Manager"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v6, Lcom/mediatek/recovery/RecoveryManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/mediatek/recovery/RecoveryManagerService;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    .line 579
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v6, :cond_2

    .line 580
    const-string/jumbo v6, "recovery"

    .line 581
    iget-object v9, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v9}, Lcom/mediatek/recovery/RecoveryManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 580
    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 582
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v6}, Lcom/mediatek/recovery/RecoveryManagerService;->startBootMonitor()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 591
    :cond_2
    :goto_2
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Package Manager"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 593
    iget v6, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v6, :cond_4

    move v6, v7

    :goto_3
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 592
    invoke-static {v9, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 594
    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 595
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 597
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "User Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string/jumbo v6, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 601
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 604
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 608
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 515
    return-void

    .line 531
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disableAntiBricking":Z
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_0
    move-exception v2

    .line 532
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .local v2, "e":Ljava/lang/Throwable;
    :goto_4
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Starting message monitor service exception "

    invoke-static {v6, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 568
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 569
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Device encrypted - only parsing core apps"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    .line 584
    .restart local v1    # "disableAntiBricking":Z
    :catch_1
    move-exception v2

    .line 585
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failure starting Recovery Manager"

    invoke-direct {p0, v6, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    move v6, v8

    .line 593
    goto :goto_3

    .line 531
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disableAntiBricking":Z
    .restart local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Throwable;
    move-object v4, v5

    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .local v4, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    goto :goto_4
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 619
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 620
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 621
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 620
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 623
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 626
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 614
    return-void
.end method

.method private startOtherServices()V
    .locals 113

    .prologue
    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 635
    .local v3, "context":Landroid/content/Context;
    const/16 v33, 0x0

    .line 636
    .local v33, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v49, 0x0

    .line 637
    .local v49, "contentService":Lcom/android/server/content/ContentService;
    const/16 v106, 0x0

    .line 638
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    const/16 v35, 0x0

    .line 639
    .local v35, "alarm":Landroid/app/IAlarmManager;
    const/16 v82, 0x0

    .line 640
    .local v82, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 641
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 642
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v83, 0x0

    .line 643
    .local v83, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v45, 0x0

    .line 644
    .local v45, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v84, 0x0

    .line 645
    .local v84, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v98, 0x0

    .line 646
    .local v98, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v112, 0x0

    .line 647
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v105, 0x0

    .line 648
    .local v105, "usb":Lcom/android/server/usb/UsbService;
    const/16 v96, 0x0

    .line 649
    .local v96, "serial":Lcom/android/server/SerialService;
    const/16 v87, 0x0

    .line 650
    .local v87, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v42, 0x0

    .line 651
    .local v42, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v69, 0x0

    .line 652
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v101, 0x0

    .line 653
    .local v101, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v47, 0x0

    .line 654
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v38, 0x0

    .line 655
    .local v38, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v79, 0x0

    .line 656
    .local v79, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v62, 0x0

    .line 657
    .local v62, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v41, 0x0

    .line 660
    .local v41, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v80, 0x0

    .line 662
    .local v80, "mom":Lcom/mediatek/mom/MobileManagerService;
    const/16 v64, 0x0

    .line 664
    .local v64, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 665
    .local v57, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 666
    .local v52, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 667
    .local v53, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 668
    .local v58, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 669
    .local v56, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 670
    .local v54, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 671
    .local v55, "disableNetworkTime":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v71

    .line 674
    .local v71, "isEmulator":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 677
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 682
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v102, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v102

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_49

    .line 684
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v102, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 686
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v63, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v63

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4a

    .line 689
    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 691
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 697
    :try_start_3
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance v34, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 699
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string/jumbo v4, "account"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4b

    move-object/from16 v33, v34

    .line 704
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    const/4 v4, 0x1

    .line 705
    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v49

    .line 709
    .local v49, "contentService":Lcom/android/server/content/ContentService;
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 711
    :try_start_6
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "MobileManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v81, Lcom/mediatek/mom/MobileManagerService;

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Lcom/mediatek/mom/MobileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 713
    .end local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v81, "mom":Lcom/mediatek/mom/MobileManagerService;
    :try_start_7
    const-string/jumbo v4, "mobile"

    invoke-virtual/range {v81 .. v81}, Lcom/mediatek/mom/MobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4f
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4c

    move-object/from16 v80, v81

    .line 720
    .end local v81    # "mom":Lcom/mediatek/mom/MobileManagerService;
    :cond_0
    :goto_2
    :try_start_8
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 723
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v107, Lcom/android/server/VibratorService;

    move-object/from16 v0, v107

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 725
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .local v107, "vibrator":Lcom/android/server/VibratorService;
    :try_start_9
    const-string/jumbo v4, "vibrator"

    move-object/from16 v0, v107

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 727
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v48, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4d

    .line 729
    .local v48, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_a
    const-string/jumbo v4, "consumer_ir"

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v48

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 733
    const-string/jumbo v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 732
    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v35

    .line 735
    .local v35, "alarm":Landroid/app/IAlarmManager;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v111

    .line 737
    .local v111, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v111

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 739
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v70, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4e

    .line 742
    .local v70, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_b
    const-string/jumbo v4, "SystemServer"

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2f

    const/4 v4, 0x1

    move v5, v4

    .line 745
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_30

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 743
    move-object/from16 v0, v70

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v112

    .line 746
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v112

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 747
    const-string/jumbo v4, "input"

    move-object/from16 v0, v70

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v112

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 751
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 752
    invoke-virtual/range {v70 .. v70}, Lcom/android/server/input/InputManagerService;->start()V

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 760
    if-eqz v71, :cond_31

    .line 761
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    :goto_5
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v62, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v101, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v69, v70

    .end local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v106, v107

    .line 784
    .end local v35    # "alarm":Landroid/app/IAlarmManager;
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v49    # "contentService":Lcom/android/server/content/ContentService;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .end local v111    # "watchdog":Lcom/android/server/Watchdog;
    .end local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_1
    :goto_6
    const/16 v99, 0x0

    .line 785
    .local v99, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v89, 0x0

    .line 786
    .local v89, "notification":Landroid/app/INotificationManager;
    const/16 v67, 0x0

    .line 787
    .local v67, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v109, 0x0

    .line 788
    .local v109, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v72, 0x0

    .line 789
    .local v72, "location":Lcom/android/server/LocationManagerService;
    const/16 v50, 0x0

    .line 790
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v103, 0x0

    .line 791
    .local v103, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v74, 0x0

    .line 792
    .local v74, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v93, 0x0

    .line 793
    .local v93, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    const/16 v91, 0x0

    .line 794
    .local v91, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v36, 0x0

    .line 795
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v76, 0x0

    .line 798
    .local v76, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 800
    :try_start_c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v68, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v68

    move-object/from16 v1, v112

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 802
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v68, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_d
    const-string/jumbo v4, "input_method"

    move-object/from16 v0, v68

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_48

    move-object/from16 v67, v68

    .line 808
    .end local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_7
    :try_start_e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string/jumbo v4, "accessibility"

    .line 810
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 809
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 817
    :cond_2
    :goto_8
    :try_start_f
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 822
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 823
    if-nez v57, :cond_3

    .line 824
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 841
    .end local v82    # "mountService":Landroid/os/storage/IMountService;
    :cond_3
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 844
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    .line 850
    :goto_b
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 851
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 852
    const v8, 0x1040371

    .line 851
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 853
    const/4 v8, 0x0

    .line 850
    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_47

    .line 857
    :goto_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3b

    .line 858
    if-nez v56, :cond_5

    .line 860
    :try_start_12
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v75, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v75

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    .line 862
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v75, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_13
    const-string/jumbo v4, "lock_settings"

    move-object/from16 v0, v75

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_46

    move-object/from16 v74, v75

    .line 867
    .end local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_d
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 871
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 875
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 878
    :cond_5
    if-nez v58, :cond_6

    .line 880
    :try_start_14
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    new-instance v100, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v100

    move-object/from16 v1, v112

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    .line 882
    .end local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v100, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_15
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v100

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_45

    move-object/from16 v99, v100

    .line 888
    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_6
    :goto_e
    if-nez v56, :cond_7

    .line 890
    :try_start_16
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string/jumbo v4, "clipboard"

    .line 892
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 891
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    .line 898
    :cond_7
    :goto_f
    if-nez v54, :cond_8

    .line 900
    :try_start_17
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 902
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c

    .line 908
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_8
    :goto_10
    if-nez v56, :cond_9

    .line 910
    :try_start_18
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    new-instance v104, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v104

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d

    .line 912
    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v104, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_19
    const-string/jumbo v4, "textservices"

    move-object/from16 v0, v104

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_44

    move-object/from16 v103, v104

    .line 918
    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_11
    if-nez v54, :cond_3a

    .line 920
    :try_start_1a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    new-instance v85, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v85

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    .line 922
    .end local v84    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v85, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1b
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v85

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_43

    move-object/from16 v84, v85

    .line 928
    .end local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_12
    :try_start_1c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v86, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v86

    move-object/from16 v1, v35

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_f

    .line 930
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v86, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1d
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v86

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_42

    move-object/from16 v6, v86

    .line 936
    .end local v86    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_13
    :try_start_1e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 939
    const-string/jumbo v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    .line 937
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_10

    .line 941
    .end local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1f
    const-string/jumbo v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_41

    .line 946
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 949
    const-string/jumbo v5, "com.android.server.wifi.WifiScanningService"

    .line 948
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 951
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 953
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 953
    if-eqz v4, :cond_b

    .line 955
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 959
    :cond_b
    :try_start_20
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    new-instance v46, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 962
    .end local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v46, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_21
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 963
    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 964
    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_40

    move-object/from16 v45, v46

    .line 970
    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_15
    :try_start_22
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v98

    .line 973
    .local v98, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 972
    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12

    .line 979
    .end local v98    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_16
    const-string/jumbo v4, "1"

    const-string/jumbo v5, "persist.mtk.datashaping.support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 981
    :try_start_23
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Start DataShaping Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.mediatek.datashaping.DataShapingService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_13

    .line 990
    :cond_c
    :goto_17
    if-nez v56, :cond_d

    .line 992
    :try_start_24
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string/jumbo v4, "updatelock"

    .line 994
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 993
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_14

    .line 1005
    :cond_d
    :goto_18
    if-eqz v82, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_36

    .line 1013
    :cond_e
    :goto_19
    if-eqz v33, :cond_f

    .line 1014
    :try_start_25
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_16

    .line 1020
    :cond_f
    :goto_1a
    if-eqz v49, :cond_10

    .line 1021
    :try_start_26
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_17

    .line 1026
    :cond_10
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1028
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1027
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v89

    .line 1029
    .local v89, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v89

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1033
    if-nez v53, :cond_11

    .line 1035
    :try_start_27
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v73, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_18

    .line 1037
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .local v73, "location":Lcom/android/server/LocationManagerService;
    :try_start_28
    const-string/jumbo v4, "location"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_3f

    move-object/from16 v72, v73

    .line 1043
    .end local v73    # "location":Lcom/android/server/LocationManagerService;
    :goto_1c
    :try_start_29
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance v51, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v51

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_19

    .line 1045
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v51, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2a
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v51

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_3e

    move-object/from16 v50, v51

    .line 1051
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_11
    :goto_1d
    if-nez v56, :cond_12

    .line 1053
    :try_start_2b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string/jumbo v4, "search"

    .line 1055
    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    .line 1054
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1a

    .line 1062
    :goto_1e
    :try_start_2c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Search Engine Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string/jumbo v4, "search_engine"

    .line 1064
    new-instance v5, Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {v5, v3}, Lcom/mediatek/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    .line 1063
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1b

    .line 1072
    :cond_12
    :goto_1f
    :try_start_2d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const-string/jumbo v4, "dropbox"

    .line 1074
    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 1073
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1c

    .line 1079
    :goto_20
    if-nez v56, :cond_13

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1080
    const v5, 0x1120048

    .line 1079
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1082
    :try_start_2e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v110, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v110

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1d

    .line 1084
    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v110, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2f
    const-string/jumbo v4, "wallpaper"

    move-object/from16 v0, v110

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_3d

    move-object/from16 v109, v110

    .line 1091
    .end local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_13
    :goto_21
    :try_start_30
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v39, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1e

    .line 1093
    .end local v38    # "audioService":Lcom/android/server/audio/AudioService;
    .local v39, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_31
    const-string/jumbo v4, "audio"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_3c

    move-object/from16 v38, v39

    .line 1100
    .end local v39    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_22
    const-string/jumbo v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1101
    const-string/jumbo v4, "ro.mtk_audio_profiles"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1103
    :try_start_32
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "AudioProfile Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const-string/jumbo v4, "audioprofile"

    .line 1105
    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {v5, v3}, Lcom/mediatek/audioprofile/AudioProfileService;-><init>(Landroid/content/Context;)V

    .line 1104
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1f

    .line 1113
    :cond_14
    :goto_23
    const-string/jumbo v4, "1"

    const-string/jumbo v5, "ro.mtk_sensorhub_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1115
    :try_start_33
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SensorHubService"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const-string/jumbo v4, "sensorhubservice"

    .line 1117
    new-instance v5, Lcom/mediatek/sensorhub/SensorHubService;

    invoke-direct {v5, v3}, Lcom/mediatek/sensorhub/SensorHubService;-><init>(Landroid/content/Context;)V

    .line 1116
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_20

    .line 1124
    :cond_15
    :goto_24
    if-nez v56, :cond_16

    .line 1125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1129
    :cond_16
    :try_start_34
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v69

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1131
    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_21

    .line 1137
    :goto_25
    if-nez v56, :cond_1a

    .line 1138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1143
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1145
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 1144
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1143
    if-eqz v4, :cond_19

    .line 1147
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1151
    :cond_19
    :try_start_35
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    new-instance v97, Lcom/android/server/SerialService;

    move-object/from16 v0, v97

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_22

    .line 1154
    .end local v96    # "serial":Lcom/android/server/SerialService;
    .local v97, "serial":Lcom/android/server/SerialService;
    :try_start_36
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v97

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_3b

    move-object/from16 v96, v97

    .line 1160
    .end local v97    # "serial":Lcom/android/server/SerialService;
    :cond_1a
    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1164
    if-nez v56, :cond_1d

    .line 1165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1169
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1173
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1179
    :cond_1d
    :try_start_37
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_23

    .line 1190
    :goto_27
    :try_start_38
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const-string/jumbo v4, "samplingprofiler"

    .line 1192
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 1191
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_24

    .line 1197
    :goto_28
    if-nez v54, :cond_1e

    if-eqz v55, :cond_37

    .line 1207
    .end local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1e
    :goto_29
    :try_start_39
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    new-instance v43, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_26

    .line 1209
    .end local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v43, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3a
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v43

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_3a

    move-object/from16 v42, v43

    .line 1214
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_2a
    if-nez v54, :cond_1f

    .line 1216
    :try_start_3b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    new-instance v40, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_27

    .line 1223
    :cond_1f
    :goto_2b
    if-nez v56, :cond_20

    .line 1225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1228
    :cond_20
    if-nez v56, :cond_21

    .line 1229
    const-string/jumbo v4, "ro.hwui.disable_asset_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1239
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_21
    :goto_2c
    if-nez v56, :cond_22

    .line 1240
    const-string/jumbo v4, "graphicsstats"

    .line 1241
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 1240
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1244
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1248
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1256
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1260
    :cond_25
    if-nez v56, :cond_26

    .line 1262
    :try_start_3c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    new-instance v77, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v77

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_29

    .line 1264
    .end local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v77, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3d
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_38

    move-object/from16 v76, v77

    .line 1269
    .end local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1274
    :try_start_3e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_2a

    .line 1282
    :cond_26
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1285
    const-string/jumbo v4, "ro.mtk_perfservice_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1287
    :try_start_3f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "PerfService state notifier"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    new-instance v94, Lcom/mediatek/perfservice/PerfServiceStateNotifier;

    invoke-direct/range {v94 .. v94}, Lcom/mediatek/perfservice/PerfServiceStateNotifier;-><init>()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_2b

    .line 1289
    .end local v93    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .local v94, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :try_start_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v94

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_37

    move-object/from16 v93, v94

    .line 1296
    .end local v94    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :goto_2f
    :try_start_41
    new-instance v92, Lcom/mediatek/perfservice/PerfServiceManager;

    move-object/from16 v0, v92

    invoke-direct {v0, v3}, Lcom/mediatek/perfservice/PerfServiceManager;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_2c

    .line 1298
    .end local v91    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .local v92, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v90, 0x0

    .line 1299
    .local v90, "perfService":Lcom/mediatek/perfservice/IPerfService;
    :try_start_42
    new-instance v90, Lcom/mediatek/perfservice/PerfServiceImpl;

    .end local v90    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    move-object/from16 v0, v90

    move-object/from16 v1, v92

    invoke-direct {v0, v3, v1}, Lcom/mediatek/perfservice/PerfServiceImpl;-><init>(Landroid/content/Context;Lcom/mediatek/perfservice/IPerfServiceManager;)V

    .line 1301
    .local v90, "perfService":Lcom/mediatek/perfservice/IPerfService;
    const-string/jumbo v4, "perfservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "perfService="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v90

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    if-eqz v90, :cond_27

    .line 1303
    const-string/jumbo v4, "mtk-perfservice"

    invoke-interface/range {v90 .. v90}, Lcom/mediatek/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_36

    :cond_27
    move-object/from16 v91, v92

    .line 1313
    .end local v90    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    .end local v92    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :cond_28
    :goto_30
    if-nez v56, :cond_29

    .line 1314
    const-string/jumbo v4, "ro.mtk_hdmi_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1313
    if-eqz v4, :cond_29

    .line 1316
    :try_start_43
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "HDMI Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    new-instance v65, Lcom/mediatek/hdmi/MtkHdmiManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2d

    .line 1318
    .end local v64    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v65, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :try_start_44
    const-string/jumbo v4, "mtkhdmi"

    .line 1319
    invoke-virtual/range {v65 .. v65}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1318
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_35

    move-object/from16 v64, v65

    .line 1327
    .end local v65    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .end local v89    # "notification":Landroid/app/INotificationManager;
    :cond_29
    :goto_31
    if-nez v56, :cond_2a

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1333
    :cond_2a
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v95

    .line 1334
    .local v95, "safeMode":Z
    if-eqz v95, :cond_39

    .line 1335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1337
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1344
    :goto_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v79

    .end local v79    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v79, Lcom/android/server/MmsServiceBroker;

    .line 1349
    .local v79, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_45
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2e

    .line 1354
    :goto_33
    if-eqz v74, :cond_2b

    .line 1356
    :try_start_46
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2f

    .line 1363
    :cond_2b
    :goto_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1368
    :try_start_47
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_30

    .line 1373
    :goto_35
    if-eqz v95, :cond_2c

    .line 1374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1380
    :cond_2c
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v44

    .line 1381
    .local v44, "config":Landroid/content/res/Configuration;
    new-instance v78, Landroid/util/DisplayMetrics;

    invoke-direct/range {v78 .. v78}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1382
    .local v78, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Landroid/view/WindowManager;

    .line 1383
    .local v108, "w":Landroid/view/WindowManager;
    invoke-interface/range {v108 .. v108}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v78

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1384
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v44

    move-object/from16 v1, v78

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1388
    :try_start_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_31

    .line 1394
    :goto_36
    :try_start_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_32

    .line 1401
    :goto_37
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v95

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_33

    .line 1407
    :goto_38
    move-object v13, v7

    .line 1408
    .local v13, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v14, v6

    .line 1409
    .local v14, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v15, v2

    .line 1410
    .local v15, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v16, v45

    .line 1411
    .local v16, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v12, v84

    .line 1412
    .local v12, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v18, v109

    .line 1413
    .local v18, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v19, v67

    .line 1414
    .local v19, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v21, v72

    .line 1415
    .local v21, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v22, v50

    .line 1416
    .local v22, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v23, v87

    .line 1417
    .local v23, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v24, v42

    .line 1418
    .local v24, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v25, v103

    .line 1419
    .local v25, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v20, v99

    .line 1420
    .local v20, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v26, v36

    .line 1421
    .local v26, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v27, v69

    .line 1422
    .local v27, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v28, v101

    .line 1423
    .local v28, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v29, v76

    .line 1424
    .local v29, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v38

    .line 1425
    .local v17, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v30, v79

    .line 1428
    .local v30, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v10, v80

    .line 1430
    .local v10, "momF":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    move-object/from16 v32, v0

    .line 1432
    .local v32, "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    move-object/from16 v31, v91

    .line 1439
    .local v31, "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v11, v3

    invoke-direct/range {v8 .. v32}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Lcom/mediatek/mom/MobileManagerService;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/mediatek/perfservice/IPerfServiceManager;Lcom/mediatek/recovery/RecoveryManagerService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1604
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_2d

    .line 1605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v4}, Lcom/mediatek/recovery/RecoveryManagerService;->stopBootMonitor()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_34

    .line 633
    :cond_2d
    :goto_39
    return-void

    .line 700
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v17    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v31    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v32    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v44    # "config":Landroid/content/res/Configuration;
    .end local v78    # "metrics":Landroid/util/DisplayMetrics;
    .end local v95    # "safeMode":Z
    .end local v108    # "w":Landroid/view/WindowManager;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v35, "alarm":Landroid/app/IAlarmManager;
    .restart local v38    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v49, "contentService":Lcom/android/server/content/ContentService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v79, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v82    # "mountService":Landroid/os/storage/IMountService;
    .restart local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v84    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v96    # "serial":Lcom/android/server/SerialService;
    .local v98, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v61

    .line 701
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v61, "e":Ljava/lang/Throwable;
    :goto_3a
    :try_start_4c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Account Manager"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_1

    goto/16 :goto_0

    .line 773
    .end local v49    # "contentService":Lcom/android/server/content/ContentService;
    .end local v61    # "e":Ljava/lang/Throwable;
    .end local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    :catch_1
    move-exception v60

    .local v60, "e":Ljava/lang/RuntimeException;
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v101, v102

    .line 774
    .end local v35    # "alarm":Landroid/app/IAlarmManager;
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .end local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_3b
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v60

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_1

    .line 779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto/16 :goto_6

    .line 706
    .end local v60    # "e":Ljava/lang/RuntimeException;
    .restart local v35    # "alarm":Landroid/app/IAlarmManager;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v49    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_2e
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 714
    .local v49, "contentService":Lcom/android/server/content/ContentService;
    :catch_2
    move-exception v61

    .line 715
    .end local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3c
    :try_start_4d
    const-string/jumbo v4, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_1

    goto/16 :goto_2

    .line 744
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v61    # "e":Ljava/lang/Throwable;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .local v35, "alarm":Landroid/app/IAlarmManager;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2f
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_3

    .line 745
    :cond_30
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 762
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_31
    :try_start_4e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    .line 763
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 773
    .end local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_3
    move-exception v60

    .restart local v60    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v69, v70

    .end local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v106, v107

    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    goto :goto_3b

    .line 764
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v60    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_32
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 765
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 764
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 766
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 767
    :cond_33
    if-eqz v52, :cond_34

    .line 768
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 770
    :cond_34
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_4e} :catch_3

    goto/16 :goto_5

    .line 803
    .end local v35    # "alarm":Landroid/app/IAlarmManager;
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v49    # "contentService":Lcom/android/server/content/ContentService;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v70    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .end local v111    # "watchdog":Lcom/android/server/Watchdog;
    .end local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v89, "notification":Landroid/app/INotificationManager;
    .restart local v91    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v93    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .restart local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4
    move-exception v61

    .line 804
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string/jumbo v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 811
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v61

    .line 812
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 818
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v61

    .line 819
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 830
    .end local v61    # "e":Ljava/lang/Throwable;
    :cond_35
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 832
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 831
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_7

    move-result-object v82

    .local v82, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_a

    .line 833
    .local v82, "mountService":Landroid/os/storage/IMountService;
    :catch_7
    move-exception v61

    .line 834
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 845
    .end local v61    # "e":Ljava/lang/Throwable;
    .end local v82    # "mountService":Landroid/os/storage/IMountService;
    :catch_8
    move-exception v61

    .line 846
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 863
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v61

    .line 864
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 883
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v61

    .line 884
    .end local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 893
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v61

    .line 894
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 903
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v61

    .line 904
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 913
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v61

    .line 914
    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string/jumbo v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 923
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v61

    .line 924
    .end local v84    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 931
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v61

    .line 932
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 942
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v83

    .line 943
    .end local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_43
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 965
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v61

    .line 966
    .end local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 974
    .end local v61    # "e":Ljava/lang/Throwable;
    .end local v98    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_12
    move-exception v61

    .line 975
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 983
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v61

    .line 984
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure to start DataShaping Service"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 995
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v61

    .line 996
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1007
    .end local v61    # "e":Ljava/lang/Throwable;
    :cond_36
    :try_start_50
    invoke-interface/range {v82 .. v82}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_50} :catch_15

    goto/16 :goto_19

    .line 1008
    :catch_15
    move-exception v66

    .local v66, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_19

    .line 1015
    .end local v66    # "ignored":Landroid/os/RemoteException;
    :catch_16
    move-exception v61

    .line 1016
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 1022
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v61

    .line 1023
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1038
    .end local v61    # "e":Ljava/lang/Throwable;
    .local v89, "notification":Landroid/app/INotificationManager;
    :catch_18
    move-exception v61

    .line 1039
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1046
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v61

    .line 1047
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 1056
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v61

    .line 1057
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 1065
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v61

    .line 1066
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1075
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v61

    .line 1076
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1085
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v61

    .line 1086
    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string/jumbo v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1094
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v61

    .line 1095
    .end local v38    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string/jumbo v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1106
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v61

    .line 1107
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "starting AudioProfile Service"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 1118
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v61

    .line 1119
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "starting SensorHub Service"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 1133
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v61

    .line 1134
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1155
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v61

    .line 1156
    .end local v96    # "serial":Lcom/android/server/SerialService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 1181
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v61

    .line 1182
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1193
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v61

    .line 1194
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1199
    .end local v61    # "e":Ljava/lang/Throwable;
    :cond_37
    :try_start_51
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    new-instance v88, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v88

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_25

    .end local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v88, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v87, v88

    .end local v88    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v87, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_29

    .line 1201
    .local v87, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_25
    move-exception v61

    .line 1202
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1210
    .end local v61    # "e":Ljava/lang/Throwable;
    .end local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_26
    move-exception v61

    .line 1211
    .end local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1218
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v61

    .line 1219
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1231
    .end local v61    # "e":Ljava/lang/Throwable;
    :cond_38
    :try_start_52
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    new-instance v37, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_28

    .line 1233
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_53
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_39

    move-object/from16 v36, v37

    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_2c

    .line 1234
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    :catch_28
    move-exception v61

    .line 1235
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_4b
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1265
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v61

    .line 1266
    .end local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_4c
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1276
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v61

    .line 1277
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1290
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v61

    .line 1291
    .end local v93    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_4d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "FAIL starting PerfServiceStateNotifier"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1306
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v61

    .line 1307
    .end local v91    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "perfservice Failure starting PerfService"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 1320
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v61

    .line 1321
    .end local v64    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting MtkHdmiManager"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 1340
    .end local v61    # "e":Ljava/lang/Throwable;
    .end local v89    # "notification":Landroid/app/INotificationManager;
    .restart local v95    # "safeMode":Z
    :cond_39
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_32

    .line 1350
    .local v79, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_2e
    move-exception v61

    .line 1351
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1357
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v61

    .line 1358
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1369
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v61

    .line 1370
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1389
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v44    # "config":Landroid/content/res/Configuration;
    .restart local v78    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v108    # "w":Landroid/view/WindowManager;
    :catch_31
    move-exception v61

    .line 1390
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1395
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v61

    .line 1396
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1402
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v61

    .line 1403
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1607
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .restart local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .restart local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .restart local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .restart local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .restart local v17    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .restart local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .restart local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .restart local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .restart local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .restart local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .restart local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .restart local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .restart local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .restart local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .restart local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .restart local v31    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v32    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    :catch_34
    move-exception v61

    .line 1608
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Failure Stop Boot Monitor"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1320
    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v17    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v31    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v32    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v44    # "config":Landroid/content/res/Configuration;
    .end local v61    # "e":Ljava/lang/Throwable;
    .end local v78    # "metrics":Landroid/util/DisplayMetrics;
    .end local v95    # "safeMode":Z
    .end local v108    # "w":Landroid/view/WindowManager;
    .restart local v65    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v79, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v89    # "notification":Landroid/app/INotificationManager;
    :catch_35
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v64, v65

    .end local v65    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v64, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    goto :goto_4f

    .line 1306
    .end local v61    # "e":Ljava/lang/Throwable;
    .local v64, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v92    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :catch_36
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v91, v92

    .end local v92    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .local v91, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    goto/16 :goto_4e

    .line 1290
    .end local v61    # "e":Ljava/lang/Throwable;
    .local v91, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v94    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :catch_37
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v93, v94

    .end local v94    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .local v93, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    goto/16 :goto_4d

    .line 1265
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v93, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :catch_38
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v76, v77

    .end local v77    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v76, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_4c

    .line 1234
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v76, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_39
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v36, v37

    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_4b

    .line 1210
    .end local v61    # "e":Ljava/lang/Throwable;
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_3a
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v42, v43

    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v42, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_4a

    .line 1155
    .end local v61    # "e":Ljava/lang/Throwable;
    .local v42, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v97    # "serial":Lcom/android/server/SerialService;
    :catch_3b
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v96, v97

    .end local v97    # "serial":Lcom/android/server/SerialService;
    .local v96, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_49

    .line 1094
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v39    # "audioService":Lcom/android/server/audio/AudioService;
    .local v96, "serial":Lcom/android/server/SerialService;
    :catch_3c
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v38, v39

    .end local v39    # "audioService":Lcom/android/server/audio/AudioService;
    .local v38, "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_48

    .line 1085
    .end local v61    # "e":Ljava/lang/Throwable;
    .local v38, "audioService":Lcom/android/server/audio/AudioService;
    .restart local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3d
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v109, v110

    .end local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v109, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_47

    .line 1046
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v109, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3e
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v50, v51

    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_46

    .line 1038
    .end local v61    # "e":Ljava/lang/Throwable;
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v73    # "location":Lcom/android/server/LocationManagerService;
    :catch_3f
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v72, v73

    .end local v73    # "location":Lcom/android/server/LocationManagerService;
    .local v72, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_45

    .line 965
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v72, "location":Lcom/android/server/LocationManagerService;
    .local v89, "notification":Landroid/app/INotificationManager;
    .restart local v98    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_40
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v45, v46

    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v45, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_44

    .line 942
    .end local v61    # "e":Ljava/lang/Throwable;
    .local v45, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_41
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    goto/16 :goto_43

    .line 931
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_42
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v6, v86

    .end local v86    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_42

    .line 923
    .end local v61    # "e":Ljava/lang/Throwable;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_43
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v84, v85

    .end local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v84, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_41

    .line 913
    .end local v61    # "e":Ljava/lang/Throwable;
    .local v84, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_44
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v103, v104

    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v103, "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_40

    .line 883
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v103, "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_45
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v99, v100

    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v99, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_3f

    .line 863
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v99, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_46
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v74, v75

    .end local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v74, "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_3e

    .line 854
    .end local v61    # "e":Ljava/lang/Throwable;
    .local v74, "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_47
    move-exception v59

    .local v59, "e":Landroid/os/RemoteException;
    goto/16 :goto_c

    .line 803
    .end local v59    # "e":Landroid/os/RemoteException;
    .restart local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v82    # "mountService":Landroid/os/storage/IMountService;
    :catch_48
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v67, v68

    .end local v68    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v67, "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_3d

    .line 773
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v61    # "e":Ljava/lang/Throwable;
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v89    # "notification":Landroid/app/INotificationManager;
    .end local v91    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v93    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .end local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v35, "alarm":Landroid/app/IAlarmManager;
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v49, "contentService":Lcom/android/server/content/ContentService;
    .local v62, "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v101, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_49
    move-exception v60

    .restart local v60    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_3b

    .end local v60    # "e":Ljava/lang/RuntimeException;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4a
    move-exception v60

    .restart local v60    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v101, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_3b

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v60    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4b
    move-exception v60

    .restart local v60    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v62, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v33, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_3b

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v60    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v49, "contentService":Lcom/android/server/content/ContentService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v81    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4c
    move-exception v60

    .restart local v60    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v80, v81

    .end local v81    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v80, "mom":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_3b

    .end local v60    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    :catch_4d
    move-exception v60

    .restart local v60    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v106, v107

    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3b

    .end local v35    # "alarm":Landroid/app/IAlarmManager;
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v60    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    :catch_4e
    move-exception v60

    .restart local v60    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v106, v107

    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3b

    .line 714
    .end local v60    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v35    # "alarm":Landroid/app/IAlarmManager;
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v81    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    :catch_4f
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v80, v81

    .end local v81    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    goto/16 :goto_3c

    .line 700
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v49, "contentService":Lcom/android/server/content/ContentService;
    .local v80, "mom":Lcom/mediatek/mom/MobileManagerService;
    :catch_50
    move-exception v61

    .restart local v61    # "e":Ljava/lang/Throwable;
    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_3a

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v35    # "alarm":Landroid/app/IAlarmManager;
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v49    # "contentService":Lcom/android/server/content/ContentService;
    .end local v61    # "e":Ljava/lang/Throwable;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v82    # "mountService":Landroid/os/storage/IMountService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .end local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v89    # "notification":Landroid/app/INotificationManager;
    .restart local v91    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v93    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .restart local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_3a
    move-object/from16 v2, v83

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_17

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_3b
    move-object/from16 v2, v83

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_31
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1631
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1632
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1633
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1632
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1635
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1630
    return-void
.end method

.method static final testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1615
    const/4 v1, 0x0

    .line 1616
    .local v1, "ret":Landroid/content/ComponentName;
    const-string/jumbo v2, "ANR_DEBUG"

    const-string/jumbo v3, "=== Start BadService2 ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.badservicesysserver"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1618
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.badservicesysserver"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1619
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1621
    .local v1, "ret":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 1622
    const-string/jumbo v2, "ANR_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "=== result to start BadService2 === Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :goto_0
    return-object v1

    .line 1624
    :cond_0
    const-string/jumbo v2, "ANR_DEBUG"

    const-string/jumbo v3, "=== result to start BadService2 === Name: Null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeColorInfo()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    .line 390
    const-string/jumbo v8, "unknown"

    .line 391
    .local v8, "tplockdownInfo":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 393
    .local v2, "fileString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 394
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    const-string/jumbo v9, "proc/tp_lockdown_info"

    invoke-direct {p0, v9}, Lcom/android/server/SystemServer;->isFileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 395
    const-string/jumbo v9, "longcheer"

    const-string/jumbo v10, "proc/tp_lockdown_info exists!!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string/jumbo v10, "proc/tp_lockdown_info"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x100

    invoke-direct {v6, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v8

    .line 400
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    move-object v5, v6

    .line 435
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    const-string/jumbo v9, "longcheer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tplockdownInfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v9, 0x6

    invoke-virtual {v8, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 439
    .local v7, "tpLockdownColorInfo":Ljava/lang/String;
    const-string/jumbo v9, "31"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 442
    const-string/jumbo v9, "sys.panel.color"

    const-string/jumbo v10, "White"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_2
    return-void

    .line 399
    .end local v7    # "tpLockdownColorInfo":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v9

    .line 400
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 399
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 402
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_5
    const-string/jumbo v9, "/sys/bus/i2c/devices/2-004a/misc"

    invoke-direct {p0, v9}, Lcom/android/server/SystemServer;->isFileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 403
    const-string/jumbo v9, "longcheer"

    const-string/jumbo v10, "/sys/bus/i2c/devices/2-004a/misc exists!!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 405
    :try_start_6
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string/jumbo v10, "/sys/bus/i2c/devices/2-004a/misc"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 406
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 407
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, " "

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "pidString":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "PID:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 409
    const-string/jumbo v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v8

    .line 417
    .end local v4    # "pidString":Ljava/lang/String;
    :cond_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 432
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 414
    .end local v1    # "e":Ljava/io/IOException;
    .local v5, "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 415
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 417
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_1

    .line 416
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v9

    .line 417
    :goto_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 416
    throw v9

    .line 419
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_4
    const-string/jumbo v9, "/sys/bus/i2c/devices/4-004a/lockdown_info"

    invoke-direct {p0, v9}, Lcom/android/server/SystemServer;->isFileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 420
    const-string/jumbo v9, "longcheer"

    const-string/jumbo v10, "/sys/bus/i2c/devices/4-004a/lockdown_info exists!!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 422
    :try_start_b
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string/jumbo v10, "/sys/bus/i2c/devices/4-004a/lockdown_info"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 423
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 424
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, " "

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "lockdown":Ljava/lang/String;
    const-string/jumbo v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result-object v8

    .line 429
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    .line 426
    .end local v3    # "lockdown":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 427
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 429
    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_1

    .line 428
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_2
    move-exception v9

    .line 429
    :goto_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 428
    throw v9
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 439
    .restart local v7    # "tpLockdownColorInfo":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "32"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 445
    const-string/jumbo v9, "sys.panel.color"

    const-string/jumbo v10, "Black"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 439
    :cond_6
    const-string/jumbo v9, "38"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 448
    const-string/jumbo v9, "sys.panel.color"

    const-string/jumbo v10, "Golden"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 451
    :cond_7
    const-string/jumbo v9, "sys.panel.color"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 428
    .end local v7    # "tpLockdownColorInfo":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    goto :goto_8

    .line 426
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 416
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 414
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 399
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_5
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method
