.class public Lcom/android/internal/telephony/ProxyController;
.super Ljava/lang/Object;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ProxyController$1;,
        Lcom/android/internal/telephony/ProxyController$2;,
        Lcom/android/internal/telephony/ProxyController$3;,
        Lcom/android/internal/telephony/ProxyController$4;,
        Lcom/android/internal/telephony/ProxyController$5;
    }
.end annotation


# static fields
.field private static final EVENT_APPLY_RC_RESPONSE:I = 0x3

.field private static final EVENT_FINISH_RC_RESPONSE:I = 0x4

.field private static final EVENT_NOTIFICATION_RC_CHANGED:I = 0x1

.field private static final EVENT_RADIO_AVAILABLE:I = 0x6

.field private static final EVENT_START_RC_RESPONSE:I = 0x2

.field private static final EVENT_TIMEOUT:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "ProxyController"

.field private static final MTK_C2K_SUPPORT:Ljava/lang/String; = "ro.mtk_c2k_support"

.field private static final RC_RETRY_CAUSE_AIRPLANE_MODE:I = 0x5

.field private static final RC_RETRY_CAUSE_CAPABILITY_SWITCHING:I = 0x2

.field private static final RC_RETRY_CAUSE_IN_CALL:I = 0x3

.field private static final RC_RETRY_CAUSE_NONE:I = 0x0

.field private static final RC_RETRY_CAUSE_RADIO_UNAVAILABLE:I = 0x4

.field private static final RC_RETRY_CAUSE_WORLD_MODE_SWITCHING:I = 0x1

.field private static final SET_RC_STATUS_APPLYING:I = 0x3

.field private static final SET_RC_STATUS_FAIL:I = 0x5

.field private static final SET_RC_STATUS_IDLE:I = 0x0

.field private static final SET_RC_STATUS_STARTED:I = 0x2

.field private static final SET_RC_STATUS_STARTING:I = 0x1

.field private static final SET_RC_STATUS_SUCCESS:I = 0x4

.field private static final SET_RC_TIMEOUT_WAITING_MSEC:I = 0xafc8

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;


# instance fields
.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentLogicalModemIds:[Ljava/lang/String;

.field private mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

.field private mEccStateReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHasRegisterEccStateReceiver:Z

.field private mHasRegisterPhoneStateReceiver:Z

.field private mHasRegisterWorldModeReceiver:Z

.field private mIsCapSwitching:Z

.field private mNewLogicalModemIds:[Ljava/lang/String;

.field private mNewRadioAccessFamily:[I

.field mNextRafs:[Landroid/telephony/RadioAccessFamily;

.field private mOldRadioAccessFamily:[I

.field private mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRadioAccessFamilyStatusCounter:I

.field private mRadioCapabilitySessionId:I

.field private mSetRadioAccessFamilyStatus:[I

.field private mSetRafRetryCause:I

.field private mTransactionFailed:Z

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

.field private mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

.field private mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWorldModeReceiver:Landroid/content/BroadcastReceiver;

.field private onExceptionCount:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/ProxyController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/ProxyController;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/ProxyController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->isEccInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onApplyRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onRetryWhenRadioAvailable(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onStartRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onTimeoutRadioCapability(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p3, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 131
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 144
    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 146
    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    .line 148
    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterEccStateReceiver:Z

    .line 150
    iput-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 154
    iput v5, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    .line 170
    new-instance v3, Lcom/android/internal/telephony/ProxyController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$1;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 550
    new-instance v3, Lcom/android/internal/telephony/ProxyController$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$2;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    .line 1028
    new-instance v3, Lcom/android/internal/telephony/ProxyController$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$3;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1055
    new-instance v3, Lcom/android/internal/telephony/ProxyController$4;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$4;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1133
    new-instance v3, Lcom/android/internal/telephony/ProxyController$5;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$5;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mEccStateReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    const-string/jumbo v3, "Constructor - Enter"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    .line 200
    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 201
    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 202
    iput-object p4, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 204
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DctController;->makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 205
    new-instance v3, Lcom/android/internal/telephony/UiccPhoneBookController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/UiccPhoneBookController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

    .line 206
    new-instance v3, Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

    .line 207
    new-instance v3, Lcom/android/internal/telephony/UiccSmsController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/UiccSmsController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

    .line 208
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    .line 209
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    .line 210
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    .line 211
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    .line 212
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    .line 215
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 216
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "ProxyController"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 217
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 220
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v1

    .line 223
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    .line 222
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/telephony/PhoneProxy;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v3, "Constructor - Exit"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private clearTransaction()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 914
    const-string/jumbo v1, "clearTransaction"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 915
    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    .line 916
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 917
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearTransaction: phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " status=IDLE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 919
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 920
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 921
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 922
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 926
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 913
    return-void

    .line 916
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private completeRadioCapabilityTransaction()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 859
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFinishRadioCapabilityResponse: success="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v6, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 860
    iget-boolean v6, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-nez v6, :cond_4

    .line 861
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v3, "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 863
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v5

    .line 864
    .local v5, "raf":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "radioAccessFamily["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "]="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 865
    new-instance v4, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v4, v1, v5}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    .line 866
    .local v4, "phoneRC":Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 859
    .end local v1    # "i":I
    .end local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    .end local v4    # "phoneRC":Landroid/telephony/RadioAccessFamily;
    .end local v5    # "raf":I
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 868
    .restart local v1    # "i":I
    .restart local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "rafs"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 873
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 876
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 892
    .end local v1    # "i":I
    .end local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateIccid([Lcom/android/internal/telephony/Phone;)V

    .line 894
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 896
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v6, :cond_3

    .line 897
    iget v6, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 898
    const-string/jumbo v6, "has next capability switch request,trigger it"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 900
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 901
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :cond_2
    :goto_3
    iput v7, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 907
    iput-object v9, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 856
    :cond_3
    return-void

    .line 878
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 881
    .restart local v2    # "intent":Landroid/content/Intent;
    iput-boolean v7, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 883
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    goto :goto_2

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V

    goto :goto_3
.end method

.method private doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z
    .locals 13
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 510
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 512
    iput-boolean v12, p0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    .line 513
    iget-object v11, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v11

    .line 514
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioCapability: new request session id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 515
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    .line 517
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_0

    .line 518
    aget-object v0, p1, v8

    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v1

    .line 519
    .local v1, "phoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioCapability: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " status=STARTING"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    aput v2, v0, v1

    .line 522
    aget-object v0, p1, v8

    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v10

    .line 526
    .local v10, "requestedRaf":I
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aput v10, v0, v1

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->getLogicalModemIdFromRaf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioCapability: mOldRadioAccessFamily["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 533
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v2, v2, v1

    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioCapability: mNewRadioAccessFamily["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v2, v2, v1

    .line 534
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 538
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v0, v1

    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    .line 539
    const/4 v3, 0x1

    .line 542
    const/4 v6, 0x0

    .line 543
    const/4 v7, 0x2

    move-object v0, p0

    .line 536
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .end local v1    # "phoneId":I
    .end local v10    # "requestedRaf":I
    :cond_0
    monitor-exit v11

    .line 547
    return v12

    .line 513
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/ProxyController;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p2, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 160
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/internal/telephony/ProxyController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 163
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method private getLogicalModemIdFromRaf(I)Ljava/lang/String;
    .locals 3
    .param p1, "raf"    # I

    .prologue
    .line 981
    const/4 v0, 0x0

    .line 983
    .local v0, "modemUuid":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 984
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 985
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getModemUuId()Ljava/lang/String;

    move-result-object v0

    .line 989
    .end local v0    # "modemUuid":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 983
    .restart local v0    # "modemUuid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isEccInProgress()Z
    .locals 6

    .prologue
    .line 1173
    const-string/jumbo v4, "ril.cdma.inecmmode"

    const/4 v5, 0x0

    .line 1172
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1174
    .local v1, "ecbMode":Z
    const/4 v2, 0x0

    .line 1176
    .local v2, "isInEcc":Z
    const-string/jumbo v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1175
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    .line 1177
    .local v3, "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v3, :cond_0

    .line 1179
    :try_start_0
    invoke-interface {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isEccInProgress()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1184
    .end local v2    # "isInEcc":Z
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEccInProgress, ecbMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isInEcc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1185
    if-nez v1, :cond_1

    :goto_1
    return v2

    .line 1180
    .restart local v2    # "isInEcc":Z
    :catch_0
    move-exception v0

    .line 1181
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "Exception of isEccInProgress"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "isInEcc":Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private issueFinish(I)V
    .locals 9
    .param p1, "sessionId"    # I

    .prologue
    .line 831
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v8

    .line 833
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 834
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "issueFinish: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 836
    const-string/jumbo v2, " mTransactionFailed="

    .line 835
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 836
    iget-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 835
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v0, v1

    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    .line 844
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_1

    const/4 v6, 0x2

    .line 841
    :goto_1
    const/4 v3, 0x4

    .line 846
    const/4 v7, 0x4

    move-object v0, p0

    move v2, p1

    .line 838
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 847
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_0

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "issueFinish: phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " status: FAIL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v8

    .line 829
    return-void

    .line 831
    .end local v1    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 993
    const-string/jumbo v0, "ProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 997
    const-string/jumbo v0, "ProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void
.end method

.method private onApplyRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 663
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v5, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/RadioCapability;

    .line 664
    .local v5, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 665
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 666
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v6, v7, :cond_5

    .line 667
    :cond_0
    if-nez v5, :cond_4

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    if-nez v6, :cond_4

    .line 669
    iput v9, p0, Lcom/android/internal/telephony/ProxyController;->onExceptionCount:I

    .line 670
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_1

    .line 671
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 674
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_3

    .line 676
    iput v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 678
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 679
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    invoke-interface {v6, v7, v11, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 678
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    :cond_2
    const-string/jumbo v6, "onApplyRadioCapabilityResponse: Retry later due to RADIO_NOT_AVAILABLE"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V

    .line 686
    .end local v2    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 687
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 689
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 694
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 683
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onApplyRadioCapabilityResponse: exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 684
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 683
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 691
    .restart local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onApplyRadioCapabilityResponse: Ignore session="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 692
    const-string/jumbo v7, " rc="

    .line 691
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 696
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onApplyRadioCapabilityResponse: rc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 697
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    .line 698
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v7

    .line 699
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onApplyRadioCapabilityResponse: Error response session="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v5}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v3

    .line 701
    .local v3, "id":I
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_6

    .line 702
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 705
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_6
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_7

    .line 707
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 709
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, v3

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 710
    const-string/jumbo v6, "onApplyRadioCapabilityResponse: Retry later due to modem off"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V

    .line 715
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onApplyRadioCapabilityResponse: phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " status=FAIL"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 716
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v8, 0x5

    aput v8, v6, v3

    .line 717
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 662
    .end local v3    # "id":I
    :goto_4
    return-void

    .line 712
    .restart local v3    # "id":I
    :cond_7
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onApplyRadioCapabilityResponse: exception="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 713
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 712
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 698
    .end local v3    # "id":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 720
    .restart local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onApplyRadioCapabilityResponse: Valid start expecting notification rc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 729
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    .line 730
    .local v1, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_1

    .line 731
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 732
    const-string/jumbo v3, " rc="

    .line 731
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 733
    return-void

    .line 735
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v3

    .line 736
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: rc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v4, :cond_2

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 740
    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 739
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 740
    const-string/jumbo v4, " rc="

    .line 739
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 741
    return-void

    .line 744
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    .line 745
    .local v0, "id":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 746
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 747
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " status=FAIL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 748
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x5

    aput v4, v2, v0

    .line 749
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 758
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 759
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v2, :cond_4

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: APPLY URC success="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 761
    iget-boolean v4, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 760
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 762
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v3

    .line 728
    return-void

    .line 751
    :cond_5
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " status=SUCCESS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 752
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x4

    aput v4, v2, v0

    .line 754
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->retryAttach(I)V

    .line 755
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/PhoneProxy;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 735
    .end local v0    # "id":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private onRetryWhenRadioAvailable(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRetryWhenRadioAvailable,mSetRafRetryCause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1019
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1021
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private onStartRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 590
    iget-object v12, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v12

    .line 591
    :try_start_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 592
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartRadioCapabilityResponse got exception="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 596
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    .line 599
    return-void

    .line 601
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/RadioCapability;

    .line 602
    .local v11, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v0

    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v0, v4, :cond_2

    .line 603
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartRadioCapabilityResponse: Ignore session="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 604
    const-string/jumbo v2, " rc="

    .line 603
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    .line 605
    return-void

    .line 607
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 608
    invoke-virtual {v11}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v9

    .line 609
    .local v9, "id":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartRadioCapabilityResponse: Error response session="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " status=FAIL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x5

    aput v4, v0, v9

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 619
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v0, :cond_3

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartRadioCapabilityResponse: success="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 633
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_6

    .line 636
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v12

    .line 589
    return-void

    .line 615
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " status=STARTED"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x2

    aput v4, v0, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 590
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "id":I
    .end local v11    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    .restart local v8    # "ar":Landroid/os/AsyncResult;
    .restart local v9    # "id":I
    .restart local v11    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :cond_5
    move v0, v3

    .line 632
    goto :goto_1

    .line 639
    :cond_6
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 640
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 643
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v4, v0, v1

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    .line 644
    const/4 v3, 0x2

    .line 647
    const/4 v6, 0x0

    .line 648
    const/4 v7, 0x3

    move-object v0, p0

    .line 641
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " status=APPLYING"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private onTimeoutRadioCapability(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 807
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_0

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RadioCapability timeout: Ignore msg.arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 809
    const-string/jumbo v3, "!= mRadioCapabilitySessionId="

    .line 808
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 809
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 808
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 810
    return-void

    .line 813
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v3

    .line 815
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RadioCapability timeout: mSetRadioAccessFamilyStatus["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 817
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v4, v4, v0

    .line 816
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 815
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 824
    .local v1, "uniqueDifferentId":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    .line 825
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 806
    return-void

    .line 813
    .end local v1    # "uniqueDifferentId":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private registerEccStateReceiver()V
    .locals 3

    .prologue
    .line 1152
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1153
    const-string/jumbo v1, "registerEccStateReceiver, context is null => return"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1154
    return-void

    .line 1156
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ECC_IN_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1158
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mEccStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterEccStateReceiver:Z

    .line 1151
    return-void
.end method

.method private registerPhoneStateReceiver()V
    .locals 3

    .prologue
    .line 1111
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1112
    const-string/jumbo v1, "registerPhoneStateReceiver, context is null => return"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1113
    return-void

    .line 1116
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1117
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    .line 1110
    return-void
.end method

.method private registerWorldModeReceiver()V
    .locals 3

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1090
    const-string/jumbo v1, "registerWorldModeReceiver, context is null => return"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1091
    return-void

    .line 1094
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1095
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1096
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1097
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 1088
    return-void
.end method

.method private resetRadioAccessFamilyStatusCounter()V
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 931
    return-void
.end method

.method private sendCapabilityFailBroadcast()V
    .locals 2

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1083
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1081
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "rcPhase"    # I
    .param p4, "radioFamily"    # I
    .param p5, "logicalModemId"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "eventId"    # I

    .prologue
    .line 937
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 939
    .local v0, "requestRC":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, p1

    .line 940
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 939
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    .line 936
    return-void
.end method

.method private unRegisterEccStateReceiver()V
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1164
    const-string/jumbo v0, "unRegisterEccStateReceiver, context is null => return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1165
    return-void

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mEccStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterEccStateReceiver:Z

    .line 1162
    return-void
.end method

.method private unRegisterPhoneStateReceiver()V
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1124
    const-string/jumbo v0, "unRegisterPhoneStateReceiver, context is null => return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1125
    return-void

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    .line 1122
    return-void
.end method

.method private unRegisterWorldModeReceiver()V
    .locals 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1102
    const-string/jumbo v0, "unRegisterWorldModeReceiver, context is null => return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1103
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 1100
    return-void
.end method


# virtual methods
.method public disableDataConnectivity(ILandroid/os/Message;)V
    .locals 2
    .param p1, "sub"    # I
    .param p2, "dataCleanedUpMsg"    # Landroid/os/Message;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 242
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :goto_0
    return-void

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableDataConnectivity(I)V
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(Z)V

    .line 237
    return-void
.end method

.method public getMaxRafSupported()I
    .locals 5

    .prologue
    .line 946
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    new-array v3, v4, [I

    .line 947
    .local v3, "numRafSupported":[I
    const/4 v1, 0x0

    .line 948
    .local v1, "maxNumRafBit":I
    const/4 v2, 0x1

    .line 950
    .local v2, "maxRaf":I
    const/4 v0, 0x0

    .local v0, "len":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 951
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    aput v4, v3, v0

    .line 952
    aget v4, v3, v0

    if-ge v1, v4, :cond_0

    .line 953
    aget v1, v3, v0

    .line 954
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    .line 950
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 958
    :cond_1
    return v2
.end method

.method public getMinRafSupported()I
    .locals 5

    .prologue
    .line 964
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    new-array v3, v4, [I

    .line 965
    .local v3, "numRafSupported":[I
    const/4 v1, 0x0

    .line 966
    .local v1, "minNumRafBit":I
    const/4 v2, 0x1

    .line 968
    .local v2, "minRaf":I
    const/4 v0, 0x0

    .local v0, "len":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 969
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    aput v4, v3, v0

    .line 970
    if-eqz v1, :cond_0

    aget v4, v3, v0

    if-le v1, v4, :cond_1

    .line 971
    :cond_0
    aget v1, v3, v0

    .line 972
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    .line 968
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 975
    :cond_2
    return v2
.end method

.method public getRadioAccessFamily(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 286
    const/4 v0, 0x1

    return v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v0

    return v0
.end method

.method public isCapabilitySwitching()Z
    .locals 1

    .prologue
    .line 1014
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    return v0
.end method

.method public isDataDisconnected(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 267
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 269
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 271
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    return v2

    .line 274
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method onFinishRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 772
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 773
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v1, v2, :cond_3

    .line 778
    :cond_0
    const-string/jumbo v1, "ro.mtk_c2k_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    if-nez v0, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 780
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 781
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFinishRadioCapabilityResponse C2K mRadioAccessFamilyStatusCounter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 782
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 781
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 783
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 784
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v1, :cond_1

    .line 785
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 788
    return-void

    .line 780
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 792
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishRadioCapabilityResponse: Ignore session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 793
    const-string/jumbo v2, " rc="

    .line 792
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 794
    return-void

    .line 796
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 797
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " onFinishRadioCapabilityResponse mRadioAccessFamilyStatusCounter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 798
    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 797
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 799
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 800
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v1, :cond_4

    .line 801
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    monitor-exit v2

    .line 771
    return-void

    .line 796
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 251
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 253
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    :cond_0
    return-void
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .locals 13
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    .line 302
    const-string/jumbo v10, "ro.mtk_disable_cap_switch"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 304
    const-string/jumbo v10, "skip switching because mtk_disable_cap_switch is true"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 305
    const/4 v10, 0x1

    return v10

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 309
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 310
    const-string/jumbo v10, "world mode switching"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 311
    iget-boolean v10, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    if-nez v10, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->registerWorldModeReceiver()V

    .line 314
    :cond_1
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 315
    const/4 v10, 0x1

    return v10

    .line 316
    :cond_2
    iget v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 317
    iget-boolean v10, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    if-eqz v10, :cond_3

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->unRegisterWorldModeReceiver()V

    .line 319
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 320
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 324
    :cond_3
    array-length v10, p1

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v11, v11

    if-eq v10, v11, :cond_4

    .line 325
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "Length of input rafs must equal to total phone count"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 328
    :cond_4
    const-string/jumbo v10, "gsm.gcf.testmode"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 329
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 330
    const-string/jumbo v10, "skip switching because FTA mode"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 331
    const/4 v10, 0x1

    return v10

    .line 334
    :cond_5
    const-string/jumbo v10, "persist.radio.simswitch.emmode"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_6

    .line 335
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 336
    const-string/jumbo v10, "skip switching because EM disable mode"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 337
    const/4 v10, 0x1

    return v10

    .line 340
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v10

    if-eqz v10, :cond_8

    .line 342
    const-string/jumbo v10, "setCapability in calling, fail to set RAT for phones"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 343
    iget-boolean v10, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    if-nez v10, :cond_7

    .line 344
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->registerPhoneStateReceiver()V

    .line 346
    :cond_7
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 348
    const/4 v10, 0x0

    return v10

    .line 349
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->isEccInProgress()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 350
    const-string/jumbo v10, "setCapability in ECC, fail to set RAT for phones"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 351
    iget-boolean v10, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterEccStateReceiver:Z

    if-nez v10, :cond_9

    .line 352
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->registerEccStateReceiver()V

    .line 354
    :cond_9
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 356
    const/4 v10, 0x0

    return v10

    .line 357
    :cond_a
    iget v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_c

    .line 358
    iget-boolean v10, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    if-eqz v10, :cond_b

    .line 359
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->unRegisterPhoneStateReceiver()V

    .line 360
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 361
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 364
    :cond_b
    iget-boolean v10, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterEccStateReceiver:Z

    if-eqz v10, :cond_c

    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->unRegisterEccStateReceiver()V

    .line 366
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 367
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 372
    :cond_c
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 373
    const-string/jumbo v11, "airplane_mode_on"

    const/4 v12, 0x0

    .line 371
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 374
    .local v0, "airplaneMode":I
    if-lez v0, :cond_d

    .line 376
    const-string/jumbo v10, "airplane mode is on, fail to set RAT for phones"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 377
    const/4 v10, 0x5

    iput v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 378
    const/4 v10, 0x0

    return v10

    .line 381
    :cond_d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v10, v10

    if-ge v3, v10, :cond_f

    .line 382
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneProxy;->isRadioAvailable()Z

    move-result v10

    if-nez v10, :cond_e

    .line 384
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setCapability fail,Phone"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not available"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 385
    const/4 v10, 0x0

    return v10

    .line 381
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 389
    :cond_f
    iget-boolean v10, p0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    if-eqz v10, :cond_10

    .line 391
    const-string/jumbo v10, "keep it and return,because capability swithing"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 392
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 393
    const/4 v10, 0x1

    return v10

    .line 396
    :cond_10
    const-string/jumbo v10, "persist.radio.simswitch"

    const-string/jumbo v11, "1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 395
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 398
    .local v9, "switchStatus":I
    const/4 v2, 0x0

    .line 399
    .local v2, "bIsboth3G":Z
    const/4 v1, 0x0

    .line 400
    .local v1, "bIsMajorPhone":Z
    const/4 v7, 0x0

    .line 401
    .local v7, "newMajorPhoneId":I
    const/4 v3, 0x0

    :goto_1
    array-length v10, p1

    if-ge v3, v10, :cond_16

    .line 402
    const/4 v1, 0x0

    .line 403
    const-string/jumbo v10, "ro.mtk_lte_support"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    .line 404
    aget-object v10, p1, v3

    invoke-virtual {v10}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v10

    and-int/lit16 v10, v10, 0x4000

    .line 405
    const/16 v11, 0x4000

    .line 404
    if-ne v10, v11, :cond_11

    .line 406
    const/4 v1, 0x1

    .line 414
    :cond_11
    :goto_2
    if-eqz v1, :cond_15

    .line 415
    aget-object v10, p1, v3

    invoke-virtual {v10}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v7

    .line 416
    add-int/lit8 v10, v9, -0x1

    if-ne v7, v10, :cond_13

    .line 417
    const-string/jumbo v10, "no change, skip setRadioCapability"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 418
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 419
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 420
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 421
    const/4 v10, 0x1

    return v10

    .line 409
    :cond_12
    aget-object v10, p1, v3

    invoke-virtual {v10}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    .line 410
    const/16 v11, 0x8

    .line 409
    if-ne v10, v11, :cond_11

    .line 411
    const/4 v1, 0x1

    goto :goto_2

    .line 423
    :cond_13
    if-eqz v2, :cond_14

    .line 424
    const-string/jumbo v10, "set more than one 3G phone, fail"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 425
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "input parameter is incorrect"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 427
    :cond_14
    const/4 v2, 0x1

    .line 401
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 431
    :cond_16
    if-nez v2, :cond_17

    .line 432
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "input parameter is incorrect - no 3g phone"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 436
    :cond_17
    const-string/jumbo v10, "ro.mtk_external_sim_support"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18

    .line 437
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    .line 439
    .local v5, "mainPhoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 440
    const-string/jumbo v10, "gsm.external.sim.enabled"

    const-string/jumbo v11, "0"

    .line 439
    invoke-static {v5, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "isVsimEnabledOnMain":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 443
    const-string/jumbo v10, "gsm.external.sim.inserted"

    const-string/jumbo v11, "0"

    .line 442
    invoke-static {v5, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, "mainPhoneIdSimType":Ljava/lang/String;
    const-string/jumbo v10, "1"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    const-string/jumbo v10, "2"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 446
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "vsim enabled, can\'t switch to another sim!"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 450
    .end local v4    # "isVsimEnabledOnMain":Ljava/lang/String;
    .end local v5    # "mainPhoneId":I
    .end local v6    # "mainPhoneIdSimType":Ljava/lang/String;
    :cond_18
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {v10, p1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 462
    const-string/jumbo v10, "should not be here...!!"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 463
    const/4 v10, 0x1

    return v10

    .line 452
    :pswitch_0
    const-string/jumbo v10, "do setRadioCapability"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 468
    iget-object v11, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v11

    .line 469
    const/4 v3, 0x0

    :goto_3
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v10, v10

    if-ge v3, v10, :cond_1a

    .line 470
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v10, v10, v3

    if-eqz v10, :cond_19

    .line 472
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setRadioCapability: Phone["

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "] is not idle. Rejecting request."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    .line 455
    :pswitch_1
    const-string/jumbo v10, "no change in op check, skip setRadioCapability"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 457
    const/4 v10, 0x1

    return v10

    .line 459
    :pswitch_2
    const-string/jumbo v10, "Sim status/info is not ready, skip setRadioCapability"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 460
    const/4 v10, 0x1

    return v10

    .line 469
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1a
    monitor-exit v11

    .line 479
    const/4 v8, 0x1

    .line 480
    .local v8, "same":Z
    const/4 v3, 0x0

    :goto_4
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v10, v10

    if-ge v3, v10, :cond_1c

    .line 481
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v10

    aget-object v11, p1, v3

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    if-eq v10, v11, :cond_1b

    .line 482
    const/4 v8, 0x0

    .line 480
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 468
    .end local v8    # "same":Z
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 485
    .restart local v8    # "same":Z
    :cond_1c
    if-eqz v8, :cond_1d

    .line 487
    const-string/jumbo v10, "setRadioCapability: Already in requested configuration, nothing to do."

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 489
    const/4 v10, 0x1

    return v10

    .line 491
    :cond_1d
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v10

    if-nez v10, :cond_1e

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 492
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;->notifyRadioCapabilityChange(I)V

    .line 495
    :cond_1e
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 498
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 500
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    move-result v10

    return v10

    .line 450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public unregisterForAllDataDisconnected(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 259
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 261
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 258
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateCurrentCarrierInProvider()Z

    .line 246
    return-void
.end method

.method public updateDataConnectionTracker(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    .line 233
    return-void
.end method
