.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActiveState"
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$internal$telephony$dataconnection$DataCallResponse$SetupResult:[I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->values()[Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 2281
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 15

    .prologue
    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 2283
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DcActiveState: enter dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2285
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2286
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v2, "DcActiveState: connected after retrying call notifyAllOfConnected"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2287
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    .line 2290
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v2, "connected"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 2292
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 2293
    const v3, 0x40015

    .line 2292
    invoke-virtual {v1, v2, v3, v13}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2294
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 2295
    const v3, 0x40016

    .line 2294
    invoke-virtual {v1, v2, v3, v13}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2299
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->restoreCurMaxRetryCount()V

    .line 2300
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 2302
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 2303
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 2302
    invoke-virtual {v1, v2, v3, v13}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 2305
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get25(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 2307
    new-instance v9, Landroid/net/NetworkMisc;

    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    .line 2308
    .local v9, "misc":Landroid/net/NetworkMisc;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    .line 2312
    const/4 v12, -0x1

    .line 2313
    .local v12, "nNetworkType":I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/NetworkInfo;->setType(I)V

    .line 2314
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v10, v1, v0

    .line 2315
    .local v10, "apnType":Ljava/lang/String;
    const-string/jumbo v3, "ims"

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2316
    const/16 v12, 0xb

    .line 2317
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/net/NetworkInfo;->setType(I)V

    .line 2325
    .end local v10    # "apnType":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v14, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2326
    const-string/jumbo v4, "DcNetworkAgent"

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v7

    .line 2327
    const/16 v8, 0x32

    .line 2325
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    invoke-static {v14, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set12(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    .line 2330
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2332
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/mediatek/common/telephony/IGsmDCTExt;

    move-result-object v2

    .line 2333
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v1, v13

    .line 2334
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo v0, ""

    .line 2332
    :goto_3
    invoke-interface {v2, v1, v0}, Lcom/mediatek/common/telephony/IGsmDCTExt;->onDcActivated([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2282
    :cond_2
    :goto_4
    return-void

    .line 2319
    .restart local v10    # "apnType":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "emergency"

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2320
    const/16 v12, 0xf

    .line 2321
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/net/NetworkInfo;->setType(I)V

    goto :goto_1

    .line 2314
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2333
    .end local v10    # "apnType":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    move-object v1, v0

    goto :goto_2

    .line 2334
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3

    .line 2335
    :catch_0
    move-exception v11

    .line 2336
    .local v11, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v1, "onDcActivated fail!"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public exit()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2345
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DcActiveState: exit dc="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2347
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 2348
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->isExecutingCarrierChange()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2349
    const-string/jumbo v1, "carrierChange"

    .line 2357
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2359
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/mediatek/common/telephony/IGsmDCTExt;

    move-result-object v5

    .line 2360
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v3, v4

    .line 2361
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    .line 2359
    :goto_2
    invoke-interface {v5, v3, v2}, Lcom/mediatek/common/telephony/IGsmDCTExt;->onDcDeactivated([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2369
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 2370
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 2372
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 2373
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    .line 2372
    invoke-virtual {v2, v3, v1, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get21(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 2375
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set12(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    .line 2344
    return-void

    .line 2350
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2351
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v2

    iget-object v1, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 2352
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2353
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 2360
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    move-object v3, v2

    goto/16 :goto_1

    .line 2361
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_2

    .line 2362
    :catch_0
    move-exception v0

    .line 2363
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v3, "onDcDeactivated fail!"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2382
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 2740
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState not handled msg.what="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2742
    const/16 v18, 0x0

    .line 2745
    .local v18, "retVal":Z
    :goto_0
    return v18

    .line 2384
    .end local v18    # "retVal":Z
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2386
    .local v10, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState: EVENT_CONNECT cp="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " dc="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState ERROR already added apnContext="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2405
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    sget-object v24, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v10, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap16(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    .line 2406
    const/16 v18, 0x1

    .line 2407
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2391
    .end local v18    # "retVal":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState msg.what=EVENT_CONNECT RefCount="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    .line 2393
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->checkIfDefaultApnReferenceCountChanged()V

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    .line 2402
    .local v7, "cap":Landroid/net/NetworkCapabilities;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get21(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 2403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState update Capabilities:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2410
    .end local v7    # "cap":Landroid/net/NetworkCapabilities;
    .end local v10    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 2412
    .local v13, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState: EVENT_DISCONNECT dp="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2413
    const-string/jumbo v25, " dc="

    .line 2412
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    .line 2412
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    iget-object v0, v13, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState msg.what=EVENT_DISCONNECT RefCount="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    .line 2417
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 2422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 2424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap22(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get12(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2449
    :goto_2
    const/16 v18, 0x1

    .line 2450
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2429
    .end local v18    # "retVal":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    iget-object v0, v13, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get21(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v21

    if-eqz v21, :cond_2

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    .line 2434
    .restart local v7    # "cap":Landroid/net/NetworkCapabilities;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get21(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState update Capabilities:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2439
    .end local v7    # "cap":Landroid/net/NetworkCapabilities;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->checkIfDefaultApnReferenceCountChanged()V

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v0, v13, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto :goto_2

    .line 2445
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState ERROR no such apnContext="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2446
    const-string/jumbo v25, " in this dc="

    .line 2445
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    .line 2445
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v0, v13, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto/16 :goto_2

    .line 2454
    .end local v13    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState EVENT_DISCONNECT_ALL clearing apn contexts, dc="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    .line 2454
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2457
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 2458
    .restart local v13    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v13, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    .line 2461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap22(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get12(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2463
    const/16 v18, 0x1

    .line 2464
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2468
    .end local v13    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v18    # "retVal":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState EVENT_LOST_CONNECTION dc="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v12

    .line 2474
    .local v12, "delayMillis":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState EVENT_LOST_CONNECTION startRetryAlarm mTag="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v25, v0

    .line 2474
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2475
    const-string/jumbo v25, " delay="

    .line 2474
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2475
    const-string/jumbo v25, "ms"

    .line 2474
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v24, v0

    const v25, 0x4000a

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get24(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2484
    .end local v12    # "delayMillis":I
    :goto_3
    const/16 v18, 0x1

    .line 2485
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2481
    .end local v18    # "retVal":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v21

    sget-object v24, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 2488
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v21

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 2489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get21(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 2490
    const/16 v18, 0x1

    .line 2491
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2494
    .end local v18    # "retVal":Z
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v21

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 2495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get21(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 2496
    const/16 v18, 0x1

    .line 2497
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2500
    .end local v18    # "retVal":Z
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 2501
    .local v6, "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "EVENT_BW_REFRESH_RESPONSE: error ignoring, e="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2514
    :cond_5
    :goto_4
    const/16 v18, 0x1

    .line 2515
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2504
    .end local v18    # "retVal":Z
    :cond_6
    iget-object v8, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    .line 2505
    .local v8, "capInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 2506
    .local v15, "lceBwDownKbps":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    move-result-object v16

    .line 2507
    .local v16, "nc":Landroid/net/NetworkCapabilities;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getLceStatus()I

    move-result v21

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 2508
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 2509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get21(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 2510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get21(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    goto :goto_4

    .line 2519
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "capInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "lceBwDownKbps":I
    .end local v16    # "nc":Landroid/net/NetworkCapabilities;
    :pswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 2520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v21

    if-eqz v21, :cond_7

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const-string/jumbo v24, "DcActiveState: EVENT_FALLBACK_RETRY_CONNECTION not in service"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2540
    :goto_5
    const/16 v18, 0x1

    .line 2541
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2526
    .end local v18    # "retVal":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 2528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState EVENT_FALLBACK_RETRY_CONNECTION RetryCount="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v25

    .line 2528
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2530
    const-string/jumbo v25, " mConnectionParams="

    .line 2528
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v25

    .line 2528
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap19(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    goto :goto_5

    .line 2536
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState stale EVENT_FALLBACK_RETRY_CONNECTION tag:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2537
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 2536
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2537
    const-string/jumbo v25, " != mTag:"

    .line 2536
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v25, v0

    .line 2536
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2544
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 2545
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2547
    .restart local v10    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap4(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v17

    .line 2548
    .local v17, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    sget-object v21, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v21

    move-object/from16 v0, v21

    if-eq v0, v10, :cond_9

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState_FALLBACK_Retry: WEIRD mConnectionsParams:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v25

    .line 2550
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2551
    const-string/jumbo v25, " != cp:"

    .line 2550
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2555
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState_FALLBACK_Retry onSetupConnectionCompleted result="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2556
    const-string/jumbo v25, " dc="

    .line 2555
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    .line 2555
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2558
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->-getcom_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues()[I

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v24

    aget v21, v21, v24

    packed-switch v21, :pswitch_data_1

    .line 2619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const-string/jumbo v24, "DcActiveState_FALLBACK_Retry: Another error cause, Not retry anymore"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2623
    :goto_6
    const/16 v18, 0x1

    .line 2624
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2561
    .end local v18    # "retVal":Z
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    sget-object v24, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    goto :goto_6

    .line 2567
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    .line 2568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    const v25, 0x40011

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 2567
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getLastDataCallFailCause(Landroid/os/Message;)V

    goto :goto_6

    .line 2572
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState_FALLBACK_Retry: ERR_RilError  isRetryNeeded="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v25

    .line 2572
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2574
    const-string/jumbo v25, " result="

    .line 2572
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2575
    const-string/jumbo v25, " result.isRestartRadioFail="

    .line 2572
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2576
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v25

    .line 2572
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2577
    const-string/jumbo v25, " result.isPermanentFail="

    .line 2572
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v25

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v25

    .line 2572
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v24, v0

    .line 2581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 2580
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 2582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const-string/jumbo v24, "DcActiveState_FALLBACK_Retry: only one IPv4 or IPv6 is accepted"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v11

    .line 2589
    .local v11, "delay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState_FALLBACK_Retry: delay="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    sget-object v24, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_FAIL_FALLBACK_RETRY:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v21

    .line 2595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v24, v0

    const v25, 0x40010

    .line 2594
    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    goto/16 :goto_6

    .line 2598
    .end local v11    # "delay":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const-string/jumbo v24, "DcActiveState_FALLBACK_Retry: No retry but at least one IPv4 or IPv6 is accepted"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    sget-object v24, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    goto/16 :goto_6

    .line 2606
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const-string/jumbo v24, "DcActiveState_FALLBACK_Retry: ERR_RilError Not retry anymore"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2612
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState_FALLBACK_Retry: stale EVENT_SETUP_DATA_CONNECTION_DONE tag:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2614
    iget v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    move/from16 v25, v0

    .line 2612
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2614
    const-string/jumbo v25, " != mTag:"

    .line 2612
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v25, v0

    .line 2612
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2615
    const-string/jumbo v25, " Not retry anymore"

    .line 2612
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2628
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v17    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 2629
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2630
    .restart local v10    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v21

    move-object/from16 v0, v21

    if-eq v0, v10, :cond_c

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState_FALLBACK_Retry: WEIRD mConnectionsParams:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v25

    .line 2632
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2633
    const-string/jumbo v25, " != cp:"

    .line 2632
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2636
    :cond_c
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2638
    .local v9, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_d

    .line 2639
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    const/16 v24, 0x0

    aget v20, v21, v24

    .line 2640
    .local v20, "rilFailCause":I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v9

    .line 2641
    sget-object v21, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, v21

    if-ne v9, v0, :cond_d

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const-string/jumbo v24, "DcActiveState_FALLBACK_Retry msg.what=EVENT_FALLBACK_GET_LAST_FAIL_DONE BAD: error was NONE, change to UNKNOWN"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2647
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2650
    .end local v20    # "rilFailCause":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v9, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 2656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const-string/jumbo v24, "DcActiveState_FALLBACK_Retry: one IPv4 or IPv6 is rejected again"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2661
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v19

    .line 2663
    .local v19, "retryDelay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState_FALLBACK_Retry msg.what=EVENT_FALLBACK_GET_LAST_FAIL_DONE cause="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2666
    const-string/jumbo v25, " retryDelay="

    .line 2663
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2667
    const-string/jumbo v25, " isRetryNeeded="

    .line 2663
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v25

    .line 2663
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2668
    const-string/jumbo v25, " dc="

    .line 2663
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    .line 2663
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 2671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v9, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v21

    .line 2670
    if-eqz v21, :cond_f

    .line 2673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const-string/jumbo v24, "DcActiveState_FALLBACK_Retry: EVENT_FALLBACK_GET_LAST_FAIL_DONE start retry"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v21

    .line 2677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v24, v0

    .line 2676
    const v25, 0x40010

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2689
    .end local v9    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v19    # "retryDelay":I
    :goto_7
    const/16 v18, 0x1

    .line 2690
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2680
    .end local v18    # "retVal":Z
    .restart local v9    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .restart local v19    # "retryDelay":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const-string/jumbo v24, "DcActiveState_FALLBACK_Retry: EVENT_FALLBACK_GET_LAST_FAIL_DONE not retry anymore"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 2685
    .end local v9    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v19    # "retryDelay":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState_FALLBACK_Retry: stale EVENT_FALLBACK_GET_LAST_FAIL_DONE tag:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2686
    iget v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    move/from16 v25, v0

    .line 2685
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2686
    const-string/jumbo v25, " != mTag:"

    .line 2685
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v25, v0

    .line 2685
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2686
    const-string/jumbo v25, " not retry anymore"

    .line 2685
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 2695
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;

    .line 2697
    .local v4, "addrV4Info":Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2700
    const/16 v18, 0x1

    .line 2701
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2704
    .end local v4    # "addrV4Info":Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;
    .end local v18    # "retVal":Z
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;

    .line 2706
    .local v5, "addrV6Info":Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/lang/String;

    move-result-object v21

    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 2712
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/mediatek/common/telephony/IGsmDCTExt;

    move-result-object v21

    iget-object v0, v5, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/IGsmDCTExt;->getIPv6Valid(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v22

    .line 2720
    .local v22, "valid":J
    :goto_8
    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_11

    const-wide/16 v24, -0x1

    cmp-long v21, v22, v24

    if-nez v21, :cond_12

    .line 2721
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DcActiveState: RA is failed or life time expired, valid:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap18(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 2727
    .end local v22    # "valid":J
    :cond_12
    const/16 v18, 0x1

    .line 2728
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2714
    .end local v18    # "retVal":Z
    :catch_0
    move-exception v14

    .line 2715
    .local v14, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    const-string/jumbo v24, "DcActiveState: getIPv6Valid fail!"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2716
    const-wide/16 v22, -0x3e8

    .line 2717
    .restart local v22    # "valid":J
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 2731
    .end local v5    # "addrV6Info":Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v22    # "valid":J
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 2733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get21(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 2735
    :cond_13
    const/16 v18, 0x1

    .line 2736
    .restart local v18    # "retVal":Z
    goto/16 :goto_0

    .line 2382
    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 2558
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method
