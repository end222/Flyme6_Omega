.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/power/ShutdownThread$1;
    }
.end annotation


# static fields
.field private static final ACTION_PRE_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final IPO_SHUTDOWN_FLOW:I = 0x1

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x1388

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final NORMAL_SHUTDOWN_FLOW:I = 0x0

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static bConfirmForAnimation:Z = false

.field private static bPlayaudio:Z = false

.field private static beginAnimationTime:J = 0x0L

.field private static final changeToNormalMessage:Ljava/lang/String; = "change shutdown flow from ipo to normal"

.field private static command:Ljava/lang/String; = null

.field private static endAnimationTime:J = 0x0L

.field private static mDelayDim:Ljava/lang/Runnable; = null

.field private static mEnableAnimating:Z = false

.field private static final mEnableAnimatingSync:Ljava/lang/Object;

.field private static mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt; = null

.field private static mReboot:Z = false

.field private static mRebootReason:Ljava/lang/String; = null

.field private static mRebootSafeMode:Z = false

.field private static mRebootUpdate:Z = false

.field private static mShutdownFlow:I = 0x0

.field private static mShutdownThreadSync:Ljava/lang/Object; = null

.field private static final mSpew:Z = true

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutdownManager:Lcom/android/internal/app/ShutdownManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return v0
.end method

.method static synthetic -get6()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get7()Lcom/android/server/power/ShutdownThread;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return p0
.end method

.method static synthetic -set2(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 118
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 120
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 121
    const/4 v1, 0x4

    .line 120
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 122
    const/16 v1, 0xd

    .line 120
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    .line 148
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 149
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 150
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    .line 151
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    .line 154
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    .line 165
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 353
    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    .line 79
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->getInstance()Lcom/android/internal/app/ShutdownManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    .line 171
    return-void
.end method

.method public static EnableAnimating(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 175
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 174
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 464
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 465
    :try_start_0
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 466
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v6, "Shutdown sequence already running, returning."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 467
    return-void

    .line 469
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 473
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 487
    .local v2, "pd":Landroid/app/ProgressDialog;
    const-string/jumbo v4, "recovery"

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 488
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/cache/recovery/uncrypt_file"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 489
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v4, :cond_4

    .line 490
    const v4, 0x10400fb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 492
    const v4, 0x10400fc

    .line 491
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 493
    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 494
    invoke-virtual {v2, v12}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v2, v11}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 496
    invoke-virtual {v2, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 497
    invoke-virtual {v2, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 510
    :goto_0
    invoke-virtual {v2, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 511
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 514
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v5, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v5}, Lcom/android/server/power/ShutdownThread$5;-><init>()V

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 517
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 518
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->configShutdownAnimation(Landroid/content/Context;)Z

    move-result v1

    .line 519
    .local v1, "mShutOffAnimation":Z
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getScreenTurnOffTime(Landroid/content/Context;)I

    move-result v3

    .line 520
    .local v3, "screenTurnOffTime":I
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v5

    .line 521
    :try_start_2
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    if-eqz v4, :cond_1

    .line 522
    if-eqz v1, :cond_6

    .line 523
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v6, "mIBootAnim.isCustBootAnim() is true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->bootanimCust()V

    .line 530
    :goto_1
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    int-to-long v8, v3

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v5

    .line 533
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 534
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 537
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 539
    :try_start_3
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 540
    const-string/jumbo v6, "ShutdownThread-cpu"

    const/4 v7, 0x1

    .line 539
    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 541
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 542
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 549
    :goto_2
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 550
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 552
    :try_start_4
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 553
    const-string/jumbo v6, "ShutdownThread-screen"

    const/16 v7, 0x1a

    .line 552
    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 554
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 555
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 562
    :cond_2
    :goto_3
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/server/power/ShutdownThread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v4, v5, :cond_3

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/server/power/ShutdownThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 563
    :cond_3
    sget v4, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v4, v11, :cond_7

    .line 564
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "ShutdownThread exists already"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkShutdownFlow()V

    .line 566
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v5

    .line 567
    :try_start_5
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v5

    .line 463
    :goto_4
    return-void

    .line 464
    .end local v1    # "mShutOffAnimation":Z
    .end local v2    # "pd":Landroid/app/ProgressDialog;
    .end local v3    # "screenTurnOffTime":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 500
    .restart local v2    # "pd":Landroid/app/ProgressDialog;
    :cond_4
    const v4, 0x10400ff

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 502
    const v4, 0x1040100

    .line 501
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {v2, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_0

    .line 506
    :cond_5
    const v4, 0x10400f7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 507
    const v4, 0x1040101

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {v2, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_0

    .line 526
    .restart local v1    # "mShutOffAnimation":Z
    .restart local v3    # "screenTurnOffTime":I
    :cond_6
    :try_start_6
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 528
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v4, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 520
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "No permission to acquire wake lock"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2

    .line 556
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 557
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "No permission to acquire wake lock"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v12, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 566
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 570
    :cond_7
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "Thread state is not normal! froce to shutdown!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 573
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 574
    const/4 v5, 0x7

    .line 573
    invoke-virtual {v4, v6, v7, v5, v10}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 575
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    goto :goto_4

    .line 578
    :cond_8
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/server/power/ShutdownThread;->start()V

    goto/16 :goto_4
.end method

.method private static bootanimCust()V
    .locals 8

    .prologue
    .line 585
    const-string/jumbo v4, "service.shutanim.running"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "set service.shutanim.running to 0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v2, 0x0

    .line 590
    .local v2, "isRotaionEnabled":Z
    :try_start_0
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 591
    const-string/jumbo v5, "accelerometer_rotation"

    const/4 v6, 0x1

    .line 590
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 592
    :goto_0
    if-eqz v2, :cond_1

    .line 594
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 593
    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 595
    .local v3, "wm":Landroid/view/IWindowManager;
    if-eqz v3, :cond_0

    .line 596
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 598
    :cond_0
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 599
    const-string/jumbo v5, "accelerometer_rotation"

    const/4 v6, 0x0

    .line 598
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 600
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 601
    const-string/jumbo v5, "accelerometer_rotation_restore"

    const/4 v6, 0x1

    .line 600
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 612
    :try_start_1
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 611
    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 613
    .restart local v3    # "wm":Landroid/view/IWindowManager;
    if-eqz v3, :cond_2

    .line 614
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 620
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startBootAnimation()V

    .line 582
    return-void

    .line 590
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 603
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 604
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "check Rotation: sInstance.mContext object is null when get Rotation"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 616
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 617
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private static checkEncryptionCondition()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1217
    const-string/jumbo v6, "vold.encrypt_progress"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1218
    .local v1, "encryptionProgress":Ljava/lang/String;
    const-string/jumbo v6, "100"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1223
    :cond_0
    const-string/jumbo v6, "ro.crypto.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "encrypted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1224
    return v4

    .line 1219
    :cond_1
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v6, "encryption in progress"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    return v5

    .line 1227
    :cond_2
    :try_start_0
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1226
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1228
    .local v2, "service":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_4

    .line 1229
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v3

    .line 1230
    .local v3, "type":I
    const-string/jumbo v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phone encrypted type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    if-ne v3, v4, :cond_3

    :goto_0
    return v4

    :cond_3
    move v4, v5

    goto :goto_0

    .line 1233
    .end local v2    # "service":Landroid/os/storage/IMountService;
    .end local v3    # "type":I
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error calling mount service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return v5
.end method

.method private static checkShutdownFlow()V
    .locals 16

    .prologue
    const/4 v15, 0x1

    const/4 v14, 0x0

    .line 664
    const-string/jumbo v11, "sys.ipo.disable"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "IPODisableProp":Ljava/lang/String;
    const-string/jumbo v11, "1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x0

    .line 666
    .local v4, "isIPOEnabled":Z
    :goto_0
    const-string/jumbo v11, "ro.mtk_ipo_support"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 667
    .local v5, "isIPOsupport":Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkEncryptionCondition()Z

    move-result v9

    .line 668
    .local v9, "passIPOEncryptionCondition":Z
    const/4 v6, 0x0

    .line 669
    .local v6, "isSafeMode":Z
    const-string/jumbo v11, "ro.mtk_smartbook_support"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 670
    .local v8, "isSmartBookSupport":Z
    const/4 v7, 0x0

    .line 672
    .local v7, "isSmartBookPluggedIn":Z
    if-eqz v8, :cond_0

    .line 674
    sget-object v11, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v11, v11, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "display"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 673
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 675
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v7

    .line 680
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v7    # "isSmartBookPluggedIn":Z
    :cond_0
    :try_start_0
    const-string/jumbo v11, "window"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 679
    invoke-static {v11}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    .line 681
    .local v10, "wm":Landroid/view/IWindowManager;
    if-eqz v10, :cond_1

    .line 682
    invoke-interface {v10}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 687
    .end local v6    # "isSafeMode":Z
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :cond_1
    :goto_1
    const-string/jumbo v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkShutdownFlow: IPO_Support="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 688
    const-string/jumbo v13, " mReboot="

    .line 687
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 688
    sget-boolean v13, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 687
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 689
    const-string/jumbo v13, " sys.ipo.disable="

    .line 687
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 690
    const-string/jumbo v13, " isSafeMode="

    .line 687
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 691
    const-string/jumbo v13, " passEncryptionCondition="

    .line 687
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 692
    const-string/jumbo v13, " Smartbook MHL PluggedIn="

    .line 687
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    if-eqz v5, :cond_2

    sget-boolean v11, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v11, :cond_4

    .line 697
    :cond_2
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 698
    return-void

    .line 665
    .end local v4    # "isIPOEnabled":Z
    .end local v5    # "isIPOsupport":Z
    .end local v8    # "isSmartBookSupport":Z
    .end local v9    # "passIPOEncryptionCondition":Z
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "isIPOEnabled":Z
    goto/16 :goto_0

    .line 683
    .restart local v5    # "isIPOsupport":Z
    .restart local v6    # "isSafeMode":Z
    .restart local v8    # "isSmartBookSupport":Z
    .restart local v9    # "passIPOEncryptionCondition":Z
    :catch_0
    move-exception v2

    .line 684
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 694
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v6    # "isSafeMode":Z
    :cond_4
    if-eqz v4, :cond_2

    .line 695
    if-nez v6, :cond_2

    if-eqz v9, :cond_2

    .line 696
    if-nez v7, :cond_2

    .line 702
    :try_start_1
    sget-object v11, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v11, v11, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 703
    const-string/jumbo v12, "ipo_setting"

    const/4 v13, 0x1

    .line 702
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-ne v11, v15, :cond_5

    const/4 v4, 0x1

    .line 710
    :goto_2
    if-eqz v4, :cond_7

    .line 711
    const-string/jumbo v11, "1"

    const-string/jumbo v12, "sys.ipo.battlow"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 712
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 719
    :goto_3
    const-string/jumbo v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkShutdownFlow: isIPOEnabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 720
    const-string/jumbo v13, " mShutdownFlow="

    .line 719
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 720
    sget v13, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 719
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void

    .line 702
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 704
    :catch_1
    move-exception v3

    .line 705
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, "ShutdownThread"

    const-string/jumbo v12, "checkShutdownFlow: fail to get IPO setting"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 707
    return-void

    .line 714
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_6
    sput v15, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    goto :goto_3

    .line 716
    :cond_7
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    goto :goto_3
.end method

.method private static configShutdownAnimation(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    const/4 v2, 0x0

    .line 426
    .local v2, "mShutOffAnimation":Z
    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 425
    check-cast v3, Landroid/os/PowerManager;

    .line 428
    .local v3, "pm":Landroid/os/PowerManager;
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 431
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 434
    :goto_0
    :try_start_0
    const-string/jumbo v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "cust":Ljava/lang/String;
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    if-nez v4, :cond_1

    .line 437
    const-class v4, Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/bootanim/IBootAnimExt;

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 438
    :cond_1
    if-eqz v0, :cond_3

    const-string/jumbo v4, "CUST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 439
    const/4 v2, 0x1

    .line 446
    .end local v0    # "cust":Ljava/lang/String;
    .end local v2    # "mShutOffAnimation":Z
    :goto_1
    return v2

    .line 429
    .restart local v2    # "mShutOffAnimation":Z
    :cond_2
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    goto :goto_0

    .line 441
    .restart local v0    # "cust":Ljava/lang/String;
    :cond_3
    :try_start_1
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-interface {v4}, Lcom/mediatek/common/bootanim/IBootAnimExt;->isCustBootAnim()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .local v2, "mShutOffAnimation":Z
    goto :goto_1

    .line 443
    .end local v0    # "cust":Ljava/lang/String;
    .local v2, "mShutOffAnimation":Z
    :catch_0
    move-exception v1

    .line 444
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static delayForPlayAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 644
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    .line 645
    return-void

    .line 647
    :cond_0
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 648
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 650
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sget-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .local v0, "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    return-void

    .line 651
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 652
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "Shutdown stop bootanimation Thread.currentThread().sleep exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getScreenTurnOffTime(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 451
    const/4 v1, 0x0

    .line 453
    .local v1, "screenTurnOffTime":I
    :try_start_0
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    if-nez v2, :cond_0

    .line 454
    const-class v2, Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/bootanim/IBootAnimExt;

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 455
    :cond_0
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-interface {v2}, Lcom/mediatek/common/bootanim/IBootAnimExt;->getScreenTurnOffTime()I

    move-result v1

    .line 456
    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IBootAnim get screenTurnOffTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    return v1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static powerOffDialogRedrawForSmartBook(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 274
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 275
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 277
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "SmartBook: Re-sraw power off dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 282
    const v4, 0x10e0048

    .line 281
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 283
    .local v1, "longPressBehavior":I
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_1

    .line 284
    const v2, 0x1040105

    .line 289
    .local v2, "resourceId":I
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_3

    .line 293
    const v3, 0x1040104

    .line 291
    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 297
    new-instance v4, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Landroid/content/Context;)V

    .line 296
    const v5, 0x1040013

    .line 291
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 306
    new-instance v4, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v4}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    .line 305
    const v5, 0x1040009

    .line 291
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 317
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 318
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 321
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 323
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 324
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 326
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 273
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v1    # "longPressBehavior":I
    .end local v2    # "resourceId":I
    :cond_0
    return-void

    .line 285
    .restart local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v1    # "longPressBehavior":I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 286
    const v2, 0x1040103

    .restart local v2    # "resourceId":I
    goto/16 :goto_0

    .line 287
    .end local v2    # "resourceId":I
    :cond_2
    const v2, 0x1040102

    .restart local v2    # "resourceId":I
    goto/16 :goto_0

    .line 294
    :cond_3
    const v3, 0x10400f7

    goto :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v2, 0x0

    .line 379
    const-string/jumbo v3, "ro.monkey"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 384
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 385
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 386
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 387
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 388
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "reboot"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 392
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 394
    .local v0, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "     |----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 377
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1178
    const-string/jumbo v3, "ro.monkey"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1179
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return-void

    .line 1183
    :cond_0
    if-eqz p1, :cond_2

    .line 1184
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rebooting, reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 1186
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Reboot failed, will attempt shutdown instead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_1
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Performing low-level shutdown..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 1176
    return-void

    .line 1187
    :cond_2
    if-eqz p0, :cond_1

    .line 1189
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 1191
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_0
    sget-object v3, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1199
    :goto_1
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1200
    :catch_0
    move-exception v1

    .local v1, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1192
    .end local v1    # "unused":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1194
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Failed to vibrate during shutdown."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v2, 0x1

    .line 409
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 410
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    return-void

    .line 414
    :cond_0
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 415
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 416
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 417
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 418
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "rebootSafeMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 408
    return-void
.end method

.method private running()V
    .locals 33

    .prologue
    .line 755
    const-string/jumbo v2, "sys.ipo.pwrdncap"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    .line 757
    new-instance v6, Lcom/android/server/power/ShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 770
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 771
    .local v30, "reason":Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 779
    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_0
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 789
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "_mode"

    sget v4, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 791
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 793
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 792
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 795
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v24, v4, v8

    .line 796
    .local v24, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 797
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 798
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v16, v24, v8

    .line 799
    .local v16, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v16, v8

    if-gtz v2, :cond_10

    .line 800
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown broadcast ACTION_SHUTDOWN timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 802
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN timeout"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v16    # "delay":J
    :cond_1
    monitor-exit v4

    .line 817
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_2

    .line 818
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 823
    :cond_2
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 824
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 825
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 827
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v3

    move-object v10, v6

    invoke-virtual/range {v7 .. v14}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 829
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v26, v4, v8

    .line 830
    .local v26, "endTimeIPO":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 831
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_3

    .line 832
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v16, v26, v8

    .line 833
    .restart local v16    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v16, v8

    if-gtz v2, :cond_12

    .line 834
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown broadcast ACTION_SHUTDOWN_IPO timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 836
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN_IPO timeout"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v16    # "delay":J
    :cond_3
    monitor-exit v4

    .line 849
    .end local v26    # "endTimeIPO":J
    :cond_4
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    .line 850
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v15

    .line 854
    .local v15, "am":Landroid/app/IActivityManager;
    if-eqz v15, :cond_5

    .line 856
    const/16 v2, 0x2710

    :try_start_2
    invoke-interface {v15, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 860
    :cond_5
    :goto_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_6

    .line 861
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 865
    .end local v15    # "am":Landroid/app/IActivityManager;
    :cond_6
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v29

    .line 867
    check-cast v29, Lcom/android/server/pm/PackageManagerService;

    .line 869
    .local v29, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v29, :cond_7

    .line 870
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 872
    :cond_7
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_8

    .line 873
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 877
    :cond_8
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down radios..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 879
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_9

    .line 880
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 883
    :cond_9
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 884
    :cond_a
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "bypass MountService!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :goto_5
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "set service.shutanim.running to 1"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string/jumbo v2, "service.shutanim.running"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_b

    .line 947
    new-instance v32, Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 949
    .local v32, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 957
    :goto_6
    const-wide/16 v4, 0x1f4

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6

    .line 963
    .end local v32    # "vibrator":Landroid/os/Vibrator;
    :cond_b
    :goto_7
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Performing ipo low-level shutdown..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 967
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 968
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 971
    :cond_c
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ShutdownManager;->shutdown(Landroid/content/Context;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 976
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_18

    .line 977
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 983
    :cond_d
    :goto_8
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 984
    const/4 v4, 0x0

    :try_start_5
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v2

    .line 987
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 988
    const/4 v7, 0x1

    .line 987
    invoke-virtual {v2, v4, v5, v7}, Landroid/os/PowerManager;->wakeUpByReason(JI)V

    .line 989
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 991
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v4

    .line 993
    :try_start_6
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_9
    monitor-exit v4

    .line 754
    :goto_a
    return-void

    .line 770
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v24    # "endTime":J
    .end local v29    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v30    # "reason":Ljava/lang/String;
    :cond_e
    const-string/jumbo v2, "0"

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, ""

    goto/16 :goto_1

    .line 806
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v16    # "delay":J
    .restart local v24    # "endTime":J
    .restart local v30    # "reason":Ljava/lang/String;
    :cond_10
    :try_start_7
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_11

    .line 807
    const-wide/16 v8, 0x2710

    sub-long v8, v8, v16

    long-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    .line 808
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 807
    mul-double/2addr v8, v10

    .line 808
    const-wide v10, 0x40c3880000000000L    # 10000.0

    .line 807
    div-double/2addr v8, v10

    double-to-int v0, v8

    move/from16 v31, v0

    .line 809
    .local v31, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 812
    .end local v31    # "status":I
    :cond_11
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 813
    :catch_0
    move-exception v20

    .local v20, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_2

    .line 796
    .end local v16    # "delay":J
    .end local v20    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 842
    .restart local v16    # "delay":J
    .restart local v26    # "endTimeIPO":J
    :cond_12
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 843
    :catch_1
    move-exception v20

    .restart local v20    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_3

    .line 830
    .end local v16    # "delay":J
    .end local v20    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    .line 857
    .end local v26    # "endTimeIPO":J
    .restart local v15    # "am":Landroid/app/IActivityManager;
    :catch_2
    move-exception v18

    .local v18, "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    .line 887
    .end local v15    # "am":Landroid/app/IActivityManager;
    .end local v18    # "e":Landroid/os/RemoteException;
    .restart local v29    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_13
    new-instance v28, Lcom/android/server/power/ShutdownThread$7;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 897
    .local v28, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x4e20

    add-long v22, v4, v8

    .line 902
    .local v22, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 905
    :try_start_a
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 904
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v21

    .line 906
    .local v21, "mount":Landroid/os/storage/IMountService;
    if-eqz v21, :cond_15

    .line 907
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 914
    .end local v21    # "mount":Landroid/os/storage/IMountService;
    :goto_b
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_14

    .line 915
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v16, v22, v8

    .line 916
    .restart local v16    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v16, v8

    if-gtz v2, :cond_16

    .line 917
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_14

    .line 919
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "change shutdown flow from ipo to normal: MountService"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local v16    # "delay":J
    :cond_14
    monitor-exit v4

    .line 936
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "MountService shut done..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 909
    .restart local v21    # "mount":Landroid/os/storage/IMountService;
    :cond_15
    :try_start_c
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_b

    .line 911
    .end local v21    # "mount":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v19

    .line 912
    .local v19, "e":Ljava/lang/Exception;
    :try_start_d
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Exception during MountService shutdown"

    move-object/from16 v0, v19

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_b

    .line 902
    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v4

    throw v2

    .line 923
    .restart local v16    # "delay":J
    :cond_16
    :try_start_e
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_17

    .line 924
    const-wide/16 v8, 0x4e20

    sub-long v8, v8, v16

    long-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    .line 925
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 924
    mul-double/2addr v8, v10

    .line 926
    const-wide v10, 0x40d3880000000000L    # 20000.0

    .line 924
    div-double/2addr v8, v10

    double-to-int v0, v8

    move/from16 v31, v0

    .line 927
    .restart local v31    # "status":I
    add-int/lit8 v31, v31, 0x12

    .line 928
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 931
    .end local v31    # "status":I
    :cond_17
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_b

    .line 932
    :catch_4
    move-exception v20

    .restart local v20    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_b

    .line 950
    .end local v16    # "delay":J
    .end local v20    # "e":Ljava/lang/InterruptedException;
    .end local v22    # "endShutTime":J
    .end local v28    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .restart local v32    # "vibrator":Landroid/os/Vibrator;
    :catch_5
    move-exception v19

    .line 952
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Failed to vibrate during shutdown."

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 958
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v20

    .restart local v20    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_7

    .line 978
    .end local v20    # "e":Ljava/lang/InterruptedException;
    .end local v32    # "vibrator":Landroid/os/Vibrator;
    :cond_18
    sget-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_d

    .line 979
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "service.bootanim.exit = 1"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string/jumbo v2, "service.bootanim.exit"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 983
    :catchall_3
    move-exception v4

    monitor-exit v2

    throw v4

    .line 994
    :catch_7
    move-exception v20

    .line 995
    .restart local v20    # "e":Ljava/lang/InterruptedException;
    :try_start_10
    invoke-virtual/range {v20 .. v20}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/16 :goto_9

    .line 991
    .end local v20    # "e":Ljava/lang/InterruptedException;
    :catchall_4
    move-exception v2

    monitor-exit v4

    throw v2

    .line 999
    :cond_19
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_1a

    .line 1000
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1003
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 1006
    :cond_1a
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string/jumbo v4, "recovery"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1007
    :cond_1b
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v2, :cond_1d

    .line 1008
    :cond_1c
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1010
    :cond_1d
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1011
    const/4 v7, 0x7

    const/4 v8, 0x0

    .line 1010
    invoke-virtual {v2, v4, v5, v7, v8}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    goto/16 :goto_a
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1016
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    .line 189
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 190
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 192
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!!! Request to shutdown !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string/jumbo v2, "ro.monkey"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 201
    :cond_0
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 202
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 204
    .local v0, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    |----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    const-string/jumbo v2, "ro.monkey"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 213
    :cond_2
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 188
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v6, 0x0

    .line 219
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 220
    :try_start_0
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 221
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v5, "Request to shutdown already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 222
    return-void

    :cond_0
    monitor-exit v4

    .line 226
    const-string/jumbo v3, "ro.monkey"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 219
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 231
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 232
    const v4, 0x10e0048

    .line 231
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 233
    .local v1, "longPressBehavior":I
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_3

    .line 234
    const v2, 0x1040105

    .line 239
    .local v2, "resourceId":I
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eqz p1, :cond_6

    .line 242
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 243
    .local v0, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    .line 244
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 246
    :cond_2
    sput-boolean p1, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    .line 247
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "PowerOff dialog doesn\'t exist. Create it first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_5

    .line 250
    const v3, 0x1040104

    .line 248
    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 254
    new-instance v4, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    .line 253
    const v5, 0x1040013

    .line 248
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 259
    const v4, 0x1040009

    .line 248
    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 261
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 262
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 263
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 264
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 216
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :goto_2
    return-void

    .line 235
    .end local v2    # "resourceId":I
    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 236
    const v2, 0x1040103

    .restart local v2    # "resourceId":I
    goto/16 :goto_0

    .line 237
    .end local v2    # "resourceId":I
    :cond_4
    const v2, 0x1040102

    .restart local v2    # "resourceId":I
    goto/16 :goto_0

    .line 251
    .restart local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_5
    const v3, 0x10400f7

    goto :goto_1

    .line 266
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_6
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private shutdownRadios(I)V
    .locals 14
    .param p1, "timeout"    # I

    .prologue
    .line 1031
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 1032
    const-string/jumbo v6, "connectivity"

    .line 1031
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 1033
    .local v7, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1034
    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v6, "2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v6, "3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1038
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    int-to-long v12, p1

    add-long v2, v10, v12

    .line 1039
    .local v2, "endTime":J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 1040
    .local v5, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$9;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;JZ[ZI)V

    .line 1154
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1156
    int-to-long v10, p1

    :try_start_0
    invoke-virtual {v0, v10, v11}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :goto_1
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    .line 1160
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v6, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    .line 1162
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v6, "change shutdown flow from ipo to normal: BT/MD"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v1, 0x0

    sput v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1030
    :cond_0
    return-void

    .line 1033
    .end local v0    # "t":Ljava/lang/Thread;
    .end local v2    # "endTime":J
    .end local v5    # "done":[Z
    :cond_1
    const/4 v4, 0x1

    .local v4, "bypassRadioOff":Z
    goto :goto_0

    .line 1034
    .end local v4    # "bypassRadioOff":Z
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "bypassRadioOff":Z
    goto :goto_0

    .end local v4    # "bypassRadioOff":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "bypassRadioOff":Z
    goto :goto_0

    .line 1157
    .end local v4    # "bypassRadioOff":Z
    .restart local v0    # "t":Ljava/lang/Thread;
    .restart local v2    # "endTime":J
    .restart local v5    # "done":[Z
    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private static startBootAnimation()V
    .locals 2

    .prologue
    .line 624
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "Set \'service.bootanim.exit\' = 0)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string/jumbo v0, "service.bootanim.exit"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    if-eqz v0, :cond_0

    .line 628
    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :goto_0
    return-void

    .line 631
    :cond_0
    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchToLauncher()V
    .locals 3

    .prologue
    .line 728
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "set launcher as foreground"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, "intent1":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 732
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 724
    return-void
.end method

.method private uncrypt()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1240
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Calling uncrypt and monitoring the progress..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const/4 v3, 0x1

    new-array v0, v3, [Z

    .line 1243
    .local v0, "done":[Z
    aput-boolean v6, v0, v6

    .line 1244
    new-instance v1, Lcom/android/server/power/ShutdownThread$10;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;[Z)V

    .line 1306
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1309
    const-wide/32 v4, 0xdbba0

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :goto_0
    aget-boolean v3, v0, v6

    if-nez v3, :cond_0

    .line 1313
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Timed out waiting for uncrypt."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_0
    return-void

    .line 1310
    :catch_0
    move-exception v2

    .local v2, "unused":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 639
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 636
    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 740
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkShutdownFlow()V

    .line 741
    :goto_0
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v0, v2, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->saveStates(Landroid/content/Context;)V

    .line 743
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 744
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->switchToLauncher()V

    .line 745
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->running()V

    goto :goto_0

    .line 747
    :cond_0
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-eq v0, v2, :cond_1

    .line 748
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 749
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->switchToLauncher()V

    .line 750
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->running()V

    .line 739
    :cond_1
    return-void
.end method
