.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$1;,
        Lcom/android/server/fingerprint/FingerprintService$2;,
        Lcom/android/server/fingerprint/FingerprintService$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FINGERPRINTD:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemon"

.field private static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final MAX_FAILED_ATTEMPTS:I = 0x5

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mContext:Landroid/content/Context;

.field private mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

.field private mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

.field private mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mFailedAttempts:I

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private mHalDeviceId:J

.field mHandler:Landroid/os/Handler;

.field private final mLockoutReset:Ljava/lang/Runnable;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 1
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/fingerprint/FingerprintService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->isSimulated()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 0
    .param p1, "client"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 84
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 85
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 93
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 107
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 114
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    .line 690
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    .line 123
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 124
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 125
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    .line 121
    return-void
.end method

.method private addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 284
    return-void
.end method

.method private canUseFingerprint(Ljava/lang/String;)Z
    .locals 4
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 506
    const-string/jumbo v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x37

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 4
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 266
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    .line 267
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 269
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    if-eqz p1, :cond_0

    .line 272
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_1
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "Cannot send lockout message to client"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private inLockoutMode()Z
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimulated()Z
    .locals 2

    .prologue
    .line 985
    invoke-static {}, Landroid/security/keystore/SoterUtil;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 986
    :cond_0
    const-string/jumbo v0, "persist.mtk_soter_simulate_fp"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private listenForUserSwitches()V
    .locals 3

    .prologue
    .line 947
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 948
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 947
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_0
    return-void

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    const/4 v1, 0x0

    .line 243
    if-nez p1, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->destroy()V

    .line 245
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_2

    .line 246
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_3

    .line 248
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_1

    .line 250
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0
.end method

.method private removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 280
    return-void
.end method

.method private resetFailedAttempts()V
    .locals 2

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "Reset fingerprint lockout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    .line 258
    return-void
.end method

.method private stopPendingOperations(Z)V
    .locals 1
    .param p1, "initiatedByClient"    # Z

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 336
    :cond_1
    return-void
.end method

.method private updateActiveGroup(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 920
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_2

    .line 922
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result p1

    .line 923
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 924
    .local v3, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "fpdata"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 925
    .local v2, "fpDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 926
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 927
    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot make directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void

    .line 933
    :cond_0
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 934
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "Restorecons failed. Directory will have wrong label."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return-void

    .line 938
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v0, p1, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setActiveGroup(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    .end local v2    # "fpDir":Ljava/io/File;
    .end local v3    # "systemDir":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 939
    :catch_0
    move-exception v1

    .line 940
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "Failed to setActiveGroup():"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private userActivity()V
    .locals 5

    .prologue
    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 224
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 222
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 130
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "fingerprintd died"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 132
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->dispatchError(JI)V

    .line 129
    return-void
.end method

.method checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method protected dispatchAcquired(JI)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap0(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap0(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0
.end method

.method protected dispatchAuthenticated(JII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 199
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-static {v1, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap1(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->isSimulated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 196
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_1
    return-void
.end method

.method protected dispatchEnrollResult(JIII)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-static {v0, p3, p4, p5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap2(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    if-nez p5, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 236
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 231
    :cond_0
    return-void
.end method

.method protected dispatchEnumerate(J[I[I)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    .prologue
    .line 161
    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_0

    .line 162
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fingerIds and groupIds differ in length: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-string/jumbo v2, ", g[]="

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 166
    :cond_0
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enumerate: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method protected dispatchError(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 183
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .line 180
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 188
    .restart local v0    # "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 191
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0
.end method

.method protected dispatchRemoved(JII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 172
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz p3, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1, p3}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 175
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap4(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 170
    :cond_1
    return-void
.end method

.method public getAuthenticatorId()J
    .locals 4

    .prologue
    .line 970
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->isSimulated()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x1198b177

    return-wide v2

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 973
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_1

    .line 975
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAuthenticatorId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 976
    :catch_0
    move-exception v1

    .line 977
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "getAuthenticatorId failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method getEffectiveUserId(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 480
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 481
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_0

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 483
    .local v0, "callingIdentity":J
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 484
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    .end local v0    # "callingIdentity":J
    :goto_0
    return p1

    .line 486
    :cond_0
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 136
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-nez v1, :cond_0

    .line 137
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 138
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-eqz v1, :cond_2

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 141
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    .line 142
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->openHal()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 143
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 144
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    return-object v1

    .line 146
    :cond_1
    :try_start_1
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to open Fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to open fingeprintd HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    iput-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    goto :goto_0

    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "fingerprint service not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V

    .line 227
    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 462
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->isSimulated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    return v0

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method hasPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isCurrentUserOrProfile(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 492
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 495
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 496
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 497
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 498
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_0

    .line 499
    const/4 v4, 0x1

    return v4

    .line 497
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 912
    const-string/jumbo v1, "fingerprint"

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 913
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 914
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fingerprint HAL id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    .line 911
    return-void
.end method

.method startAuthentication(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "restricted"    # Z

    .prologue
    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->isSimulated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    new-instance v5, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p5

    move/from16 v11, p4

    move/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 379
    const-wide v4, 0x7f7892d2a0L

    const v6, 0x1198b177

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/android/server/fingerprint/FingerprintService;->dispatchAuthenticated(JII)V

    .line 380
    return-void

    .line 383
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v13

    .line 384
    .local v13, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v13, :cond_1

    .line 385
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "startAuthentication: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void

    .line 388
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 389
    new-instance v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move/from16 v8, p4

    move/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 391
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "In lockout mode; disallowing authentication"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 393
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "Cannot send timeout message to client"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 396
    return-void

    .line 399
    :cond_3
    :try_start_0
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-interface {v13, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I

    move-result v15

    .line 400
    .local v15, "result":I
    if-eqz v15, :cond_4

    .line 401
    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAuthentication failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v15    # "result":I
    :cond_4
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v14

    .line 404
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "startAuthentication failed"

    invoke-static {v4, v5, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "restricted"    # Z

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v6

    .line 291
    .local v6, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v6, :cond_0

    .line 292
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "enroll: no fingeprintd!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 296
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p3

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 297
    const/16 v9, 0x3c

    .line 299
    .local v9, "timeout":I
    const/16 v0, 0x3c

    :try_start_0
    invoke-interface {v6, p2, p3, v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enroll([BII)I

    move-result v8

    .line 300
    .local v8, "result":I
    if-eqz v8, :cond_1

    .line 301
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startEnroll failed, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v8    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v7

    .line 304
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "startEnroll failed"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPostEnroll(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 324
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 325
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "startPostEnroll: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v4

    .line 329
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->postEnroll()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "startPostEnroll failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    return v4
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const-wide/16 v4, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 310
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    .line 311
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "startPreEnroll: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-wide v4

    .line 315
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->preEnroll()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "startPreEnroll failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    return-wide v4
.end method

.method startRemove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "restricted"    # Z

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v6

    .line 439
    .local v6, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v6, :cond_0

    .line 440
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: no fingeprintd!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 444
    :cond_0
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 447
    :try_start_0
    invoke-interface {v6, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    move-result v8

    .line 448
    .local v8, "result":I
    if-eqz v8, :cond_1

    .line 449
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRemove with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v8    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v7

    .line 452
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "startRemove failed"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method stopAuthentication(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    .line 416
    .local v1, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v1, :cond_0

    .line 417
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "stopAuthentication: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 421
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v4, p1, :cond_2

    :cond_1
    return-void

    .line 422
    :cond_2
    if-eqz p2, :cond_4

    .line 424
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v3

    .line 425
    .local v3, "result":I
    if-eqz v3, :cond_3

    .line 426
    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopAuthentication failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v3    # "result":I
    :cond_3
    :goto_0
    const/4 v4, 0x5

    invoke-static {v0, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 433
    :cond_4
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 414
    return-void

    .line 428
    :catch_0
    move-exception v2

    .line 429
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "stopAuthentication failed"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method stopEnrollment(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    .line 354
    .local v1, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v1, :cond_0

    .line 355
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "stopEnrollment: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 359
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v4, p1, :cond_2

    :cond_1
    return-void

    .line 360
    :cond_2
    if-eqz p2, :cond_4

    .line 362
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnrollment()I

    move-result v3

    .line 363
    .local v3, "result":I
    if-eqz v3, :cond_3

    .line 364
    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startEnrollCancel failed, result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v3    # "result":I
    :cond_3
    :goto_0
    const/4 v4, 0x5

    invoke-static {v0, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 371
    :cond_4
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 352
    return-void

    .line 366
    :catch_0
    move-exception v2

    .line 367
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "stopEnrollment failed"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
