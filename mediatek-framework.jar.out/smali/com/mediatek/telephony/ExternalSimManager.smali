.class public Lcom/mediatek/telephony/ExternalSimManager;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/ExternalSimManager$ServerTask;,
        Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;,
        Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;,
        Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;,
        Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;,
        Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;,
        Lcom/mediatek/telephony/ExternalSimManager$1;
    }
.end annotation


# static fields
.field private static final NOT_SUPPORT:I = 0x0

.field private static final NO_RESPONSE_STATUS_WORD_BYTE1:B = 0x0t

.field private static final NO_RESPONSE_STATUS_WORD_BYTE2:B = 0x0t

.field private static final NO_RESPONSE_TIMEOUT_DURATION:I = 0x2710

.field static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final SUPPORT_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ExternalSimManager"

.field private static final TRY_RESET_MODEM_DURATION:I = 0x3e8

.field private static sInstance:Lcom/mediatek/telephony/ExternalSimManager;


# instance fields
.field private isMdWaitingResponse:Z

.field private mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

.field private mRilIoThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/mediatek/telephony/ExternalSimManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/telephony/ExternalSimManager;)Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/telephony/ExternalSimManager;)Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->mRilIoThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/telephony/ExternalSimManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/telephony/ExternalSimManager;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager;->mRilIoThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/telephony/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/ExternalSimManager;

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 119
    const-string/jumbo v1, "gsm.ril.fulluicctype"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 120
    const-string/jumbo v1, "gsm.ril.fulluicctype.2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "gsm.ril.fulluicctype.3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 122
    const-string/jumbo v1, "gsm.ril.fulluicctype.4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 118
    sput-object v0, Lcom/mediatek/telephony/ExternalSimManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 115
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->mRilIoThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z

    .line 178
    new-instance v0, Lcom/mediatek/telephony/ExternalSimManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/ExternalSimManager$1;-><init>(Lcom/mediatek/telephony/ExternalSimManager;)V

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    const-string/jumbo v0, "ExternalSimManager"

    const-string/jumbo v1, "construtor 0 parameter is called - done"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 115
    iput-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager;->mRilIoThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 116
    iput-boolean v4, p0, Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z

    .line 178
    new-instance v3, Lcom/mediatek/telephony/ExternalSimManager$1;

    invoke-direct {v3, p0}, Lcom/mediatek/telephony/ExternalSimManager$1;-><init>(Lcom/mediatek/telephony/ExternalSimManager;)V

    iput-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    const-string/jumbo v3, "ExternalSimManager"

    const-string/jumbo v4, "construtor 1 parameter is called - start"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 135
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 136
    const-string/jumbo v3, "persist.radio.external.sim"

    const-string/jumbo v4, "0"

    .line 135
    invoke-static {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "persist":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string/jumbo v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 139
    const-string/jumbo v3, "gsm.external.sim.enabled"

    const-string/jumbo v4, "1"

    .line 138
    invoke-static {v0, v3, v4}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    .end local v2    # "persist":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    invoke-direct {v3, p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;-><init>(Lcom/mediatek/telephony/ExternalSimManager;)V

    iput-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 145
    new-instance v3, Lcom/mediatek/telephony/ExternalSimManager$2;

    invoke-direct {v3, p0}, Lcom/mediatek/telephony/ExternalSimManager$2;-><init>(Lcom/mediatek/telephony/ExternalSimManager;)V

    invoke-virtual {v3}, Lcom/mediatek/telephony/ExternalSimManager$2;->start()V

    .line 154
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    const-string/jumbo v3, "ExternalSimManager"

    const-string/jumbo v4, "construtor is called - end"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/mediatek/telephony/ExternalSimManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string/jumbo v0, "ExternalSimManager"

    const-string/jumbo v1, "getDefault()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Lcom/mediatek/telephony/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/ExternalSimManager;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/ExternalSimManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/telephony/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/ExternalSimManager;

    .line 168
    :cond_0
    sget-object v0, Lcom/mediatek/telephony/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/ExternalSimManager;

    return-object v0
.end method

.method private static getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 173
    const-string/jumbo v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finalizeService([B)Z
    .locals 5
    .param p1, "userData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 214
    const-string/jumbo v2, "ExternalSimManager"

    const-string/jumbo v3, "finalizeService() - start"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string/jumbo v2, "ro.mtk_external_sim_support"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 217
    const-string/jumbo v2, "ExternalSimManager"

    const-string/jumbo v3, "initializeService() - mtk_external_sim_support didn\'t support"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v4

    .line 222
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/telephony/ExternalSimManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    const-string/jumbo v3, "osi"

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->finalizeService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    const-string/jumbo v2, "ExternalSimManager"

    const-string/jumbo v3, "finalizeService() - end"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v2, 0x1

    return v2

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 223
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 224
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public initializeService([B)Z
    .locals 5
    .param p1, "userData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 195
    const-string/jumbo v2, "ExternalSimManager"

    const-string/jumbo v3, "initializeService() - start"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string/jumbo v2, "ro.mtk_external_sim_support"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 198
    const-string/jumbo v2, "ExternalSimManager"

    const-string/jumbo v3, "initializeService() - mtk_external_sim_support didn\'t support"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v4

    .line 203
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/telephony/ExternalSimManager;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    const-string/jumbo v3, "osi"

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->initializeService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const-string/jumbo v2, "ExternalSimManager"

    const-string/jumbo v3, "initialize() - end"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v2, 0x1

    return v2

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 204
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 205
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method
