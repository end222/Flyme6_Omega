.class public Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
.super Landroid/os/Handler;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VsimEvenHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;,
        Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$1;
    }
.end annotation


# instance fields
.field private mHasNotifyEnableEvnetToModem:Z

.field private mNoResponseTimer:Ljava/util/Timer;

.field private mTryResetModemRunnable:Ljava/lang/Runnable;

.field private mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field private mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field private mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method static synthetic -get0(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mTryResetModemRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V
    .locals 0
    .param p1, "vsimAdpatorIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .param p2, "vsimRilIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setDataStream(Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Z)V
    .locals 0
    .param p1, "isWaiting"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/telephony/ExternalSimManager;

    .prologue
    const/4 v1, 0x0

    .line 893
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 894
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 895
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mHasNotifyEnableEvnetToModem:Z

    .line 898
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    .line 899
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 939
    new-instance v0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$1;-><init>(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mTryResetModemRunnable:Ljava/lang/Runnable;

    .line 893
    return-void
.end method

.method private dispatchCallback(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1291
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v1

    .line 1293
    .local v1, "msgId":I
    const-string/jumbo v2, "ExternalSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VsimEvenHandler handleMessage: msgId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    sparse-switch v1, :sswitch_data_0

    .line 1390
    const-string/jumbo v2, "ExternalSimManager"

    const-string/jumbo v3, "VsimEvenHandler handleMessage: default"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1307
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleGetPlatformCapability(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto :goto_0

    .line 1311
    :sswitch_2
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleEventRequest(ILcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto :goto_0

    .line 1319
    :sswitch_3
    invoke-direct {p0, v6, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 1323
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1324
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    .line 1325
    const-string/jumbo v3, "gsm.external.sim.inserted"

    const-string/jumbo v4, "0"

    .line 1323
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1328
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto :goto_0

    .line 1333
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1340
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1341
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto :goto_0

    .line 1346
    :sswitch_5
    invoke-direct {p0, v6, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 1349
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1350
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    .line 1351
    const-string/jumbo v3, "gsm.external.sim.inserted"

    const-string/jumbo v4, "0"

    .line 1349
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1353
    .restart local v0    # "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1354
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto :goto_0

    .line 1359
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_6
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1366
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1367
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto :goto_0

    .line 1373
    :sswitch_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1374
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    .line 1375
    const-string/jumbo v3, "gsm.external.sim.inserted"

    const-string/jumbo v4, "0"

    .line 1373
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1377
    .restart local v0    # "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1378
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_0

    .line 1383
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_8
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_0

    .line 1387
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleServiceStateRequest(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto/16 :goto_0

    .line 1295
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_3
        0x3ee -> :sswitch_7
    .end sparse-switch
.end method

.method private getMdWaitingFlag()Z
    .locals 3

    .prologue
    .line 1027
    const-string/jumbo v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMdWaitingFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-static {v2}, Lcom/mediatek/telephony/ExternalSimManager;->-get0(Lcom/mediatek/telephony/ExternalSimManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-static {v0}, Lcom/mediatek/telephony/ExternalSimManager;->-get0(Lcom/mediatek/telephony/ExternalSimManager;)Z

    move-result v0

    return v0
.end method

.method private getRspMessageId(I)I
    .locals 3
    .param p1, "requestMsgId"    # I

    .prologue
    .line 913
    sparse-switch p1, :sswitch_data_0

    .line 931
    const-string/jumbo v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRspMessageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "no support."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v0, -0x1

    return v0

    .line 915
    :sswitch_0
    const/16 v0, 0x3e9

    return v0

    .line 917
    :sswitch_1
    const/16 v0, 0x3eb

    return v0

    .line 919
    :sswitch_2
    const/16 v0, 0x3ea

    return v0

    .line 921
    :sswitch_3
    const/4 v0, 0x4

    return v0

    .line 923
    :sswitch_4
    const/4 v0, 0x5

    return v0

    .line 925
    :sswitch_5
    const/4 v0, 0x6

    return v0

    .line 927
    :sswitch_6
    const/16 v0, 0x3ef

    return v0

    .line 929
    :sswitch_7
    const/16 v0, 0x3f0

    return v0

    .line 913
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x3ec -> :sswitch_3
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_5
    .end sparse-switch
.end method

.method private handleEventRequest(ILcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1032
    const-string/jumbo v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] start"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    .line 1037
    .local v5, "slotId":I
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v4

    .line 1039
    .local v4, "simType":I
    const/4 v3, 0x0

    .line 1041
    .local v3, "result":I
    const-string/jumbo v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VsimEvenHandler First slotId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", simType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    packed-switch p1, :pswitch_data_0

    .line 1144
    const/4 v3, -0x1

    .line 1145
    const-string/jumbo v7, "ExternalSimManager"

    const-string/jumbo v8, "VsimEvenHandler invalid event id."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :goto_0
    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 1151
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v7

    .line 1152
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v8

    const/16 v9, 0x3eb

    .line 1150
    invoke-direct {v1, v7, v9, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1153
    .local v1, "eventResponse":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1154
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1156
    const-string/jumbo v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] end"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return-void

    .line 1046
    .end local v1    # "eventResponse":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1047
    const/4 v3, 0x0

    .line 1053
    :goto_1
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 1054
    .local v6, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 1056
    .local v0, "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    if-eq v4, v11, :cond_0

    .line 1057
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 1059
    const-string/jumbo v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VsimEvenHandler set default data to subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1063
    const-string/jumbo v7, "gsm.external.sim.enabled"

    const-string/jumbo v8, "1"

    .line 1062
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1049
    .end local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v6    # "subId":I
    :cond_1
    const/4 v3, -0x2

    goto :goto_1

    .line 1068
    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1069
    const-string/jumbo v7, "gsm.external.sim.enabled"

    const-string/jumbo v8, "0"

    .line 1068
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1071
    const-string/jumbo v7, "gsm.external.sim.inserted"

    const-string/jumbo v8, "0"

    .line 1070
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1075
    const-string/jumbo v7, "persist.radio.external.sim"

    .line 1076
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1074
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1085
    invoke-direct {p0, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    .line 1087
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 1088
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccController;->resetRadioForVsim()V

    goto/16 :goto_0

    .line 1093
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1094
    const-string/jumbo v7, "gsm.external.sim.inserted"

    .line 1095
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1093
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 1099
    .restart local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 1102
    .local v2, "mCPhoneId":I
    if-eq v5, v2, :cond_2

    .line 1103
    if-ne v4, v11, :cond_3

    .line 1105
    :cond_2
    const-string/jumbo v7, "ExternalSimManager"

    const-string/jumbo v8, "VsimEvenHandler no need to do capablity switch"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1107
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 1108
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccController;->resetRadioForVsim()V

    goto/16 :goto_0

    .line 1112
    :cond_3
    const-string/jumbo v7, "ExternalSimManager"

    const-string/jumbo v8, "VsimEvenHandler need to do capablity switch"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1115
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 1116
    .restart local v6    # "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 1117
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1119
    .end local v6    # "subId":I
    :cond_4
    const/4 v3, -0x2

    goto/16 :goto_0

    .line 1126
    .end local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v2    # "mCPhoneId":I
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1127
    const-string/jumbo v7, "gsm.external.sim.inserted"

    const-string/jumbo v8, "0"

    .line 1126
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1134
    invoke-direct {p0, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto/16 :goto_0

    .line 1138
    :pswitch_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1139
    const-string/jumbo v7, "persist.radio.external.sim"

    .line 1140
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1138
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private handleGetPlatformCapability(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 1160
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    .line 1161
    .local v2, "eventId":I
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v8

    .line 1163
    .local v8, "simType":I
    new-instance v6, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 1164
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v9

    .line 1166
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v10

    .line 1165
    const/16 v11, 0x3ea

    .line 1163
    invoke-direct {v6, v9, v11, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1168
    .local v6, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1169
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1175
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 1176
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_1

    .line 1177
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1187
    :goto_1
    const-string/jumbo v9, "ro.mtk_external_sim_support"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_4

    .line 1188
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1197
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v7

    .line 1199
    .local v7, "simCount":I
    const-string/jumbo v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleGetPlatformCapability simType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1200
    const-string/jumbo v11, ", simCount: "

    .line 1199
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 1203
    const/4 v9, 0x1

    shl-int/2addr v9, v7

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1243
    :goto_3
    iget-object v9, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v9, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1159
    return-void

    .line 1171
    .end local v1    # "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    .end local v7    # "simCount":I
    :cond_0
    const/4 v9, -0x2

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_0

    .line 1178
    .restart local v1    # "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    :cond_1
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_2

    .line 1179
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1180
    :cond_2
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_3

    .line 1181
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1183
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1190
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_2

    .line 1205
    .restart local v7    # "simCount":I
    :cond_5
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_c

    .line 1206
    const/4 v4, 0x0

    .line 1207
    .local v4, "isCdmaCard":I
    const/4 v5, 0x0

    .line 1209
    .local v5, "isHasCard":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v7, :cond_9

    .line 1210
    sget-object v9, Lcom/mediatek/telephony/ExternalSimManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v9, v9, v3

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, "cardType":Ljava/lang/String;
    const-string/jumbo v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1212
    const/4 v9, 0x1

    shl-int/2addr v9, v3

    or-int/2addr v5, v9

    .line 1215
    :cond_6
    const-string/jumbo v9, "CSIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1216
    const-string/jumbo v9, "RUIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 1215
    if-nez v9, :cond_7

    .line 1216
    const-string/jumbo v9, "UIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 1215
    if-eqz v9, :cond_8

    .line 1217
    :cond_7
    const/4 v9, 0x1

    shl-int/2addr v9, v3

    or-int/2addr v4, v9

    .line 1209
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1221
    .end local v0    # "cardType":Ljava/lang/String;
    :cond_9
    const-string/jumbo v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleGetPlatformCapability isCdmaCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1222
    const-string/jumbo v11, ", isHasCard: "

    .line 1221
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    if-nez v5, :cond_a

    .line 1226
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_3

    .line 1227
    :cond_a
    if-nez v4, :cond_b

    .line 1229
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_3

    .line 1232
    :cond_b
    const/4 v9, 0x1

    shl-int/2addr v9, v7

    add-int/lit8 v9, v9, -0x1

    xor-int/2addr v9, v4

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_3

    .line 1238
    .end local v3    # "i":I
    .end local v4    # "isCdmaCard":I
    .end local v5    # "isHasCard":I
    :cond_c
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_3
.end method

.method private handleServiceStateRequest(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 1247
    const/4 v4, 0x0

    .line 1248
    .local v4, "result":I
    const/4 v8, -0x1

    .line 1249
    .local v8, "voiceRejectCause":I
    const/4 v1, -0x1

    .line 1251
    .local v1, "dataRejectCause":I
    new-instance v3, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 1252
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v9

    .line 1254
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v10

    .line 1253
    const/16 v11, 0x3ef

    .line 1251
    invoke-direct {v3, v9, v11, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1255
    .local v3, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1257
    const-string/jumbo v9, "phoneEx"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 1256
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v7

    .line 1258
    .local v7, "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v7, :cond_0

    .line 1261
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v9

    .line 1260
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 1262
    .local v6, "subId":I
    invoke-interface {v7, v6}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1263
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 1264
    .local v5, "ss":Landroid/telephony/ServiceState;
    const-string/jumbo v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleServiceStateRequest subId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1265
    const-string/jumbo v11, ", ss = "

    .line 1264
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1265
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1264
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRejectCause()I

    move-result v8

    .line 1267
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRejectCause()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1279
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "ss":Landroid/telephony/ServiceState;
    .end local v6    # "subId":I
    .end local v7    # "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1281
    invoke-virtual {v3, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1283
    invoke-virtual {v3, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1285
    iget-object v9, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v9, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1246
    return-void

    .line 1268
    .restart local v7    # "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v2

    .line 1269
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "ExternalSimManager"

    const-string/jumbo v10, "RemoteException!!"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v4, -0x1

    .line 1271
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1275
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_1
    const/4 v4, -0x2

    goto :goto_0
.end method

.method private sendNoResponseError(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v4, 0x0

    .line 963
    new-instance v0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 964
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v1

    .line 965
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getRspMessageId(I)I

    move-result v2

    .line 966
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v3

    .line 963
    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 969
    .local v0, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 972
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 973
    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putByte(I)I

    .line 974
    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putByte(I)I

    .line 976
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v1, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 962
    :cond_0
    return-void
.end method

.method private setDataStream(Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V
    .locals 2
    .param p1, "vsimAdpatorIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .param p2, "vsimRilIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 908
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 909
    const-string/jumbo v0, "ExternalSimManager"

    const-string/jumbo v1, "VsimEvenHandler setDataStream done."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method

.method private setMdWaitingFlag(Z)V
    .locals 1
    .param p1, "isWaiting"    # Z

    .prologue
    .line 982
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 981
    return-void
.end method

.method private setMdWaitingFlag(ZLcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 6
    .param p1, "isWaiting"    # Z
    .param p2, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v4, 0x0

    .line 986
    const-string/jumbo v1, "ExternalSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMdWaitingFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-static {v1, p1}, Lcom/mediatek/telephony/ExternalSimManager;->-set0(Lcom/mediatek/telephony/ExternalSimManager;Z)Z

    .line 989
    if-eqz p1, :cond_5

    .line 990
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 992
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 993
    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    .line 1001
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1002
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v1

    .line 1003
    :goto_0
    const-string/jumbo v2, "gsm.external.sim.enabled"

    const-string/jumbo v3, "0"

    .line 1001
    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, "isVsimEnabled":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1006
    :cond_1
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    new-instance v2, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;-><init>(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1007
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mTryResetModemRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1009
    const-string/jumbo v1, "ExternalSimManager"

    const-string/jumbo v2, "recevice modem event under vsim disabled state."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    .end local v0    # "isVsimEnabled":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1002
    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    .line 1011
    .restart local v0    # "isVsimEnabled":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    new-instance v2, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;-><init>(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 1017
    .end local v0    # "isVsimEnabled":Ljava/lang/String;
    :cond_5
    iput-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 1018
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 1019
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1020
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 1021
    iput-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 903
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->dispatchCallback(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 902
    return-void
.end method
