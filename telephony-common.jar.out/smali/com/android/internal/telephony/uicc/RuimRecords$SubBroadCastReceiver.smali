.class Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1379
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1380
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SubBroadCastReceiver action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1381
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1382
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 1383
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SubBroadCastReceiver receive ACTION_SUBINFO_RECORD_UPDATED mPhbWaitSub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1384
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get6(Lcom/android/internal/telephony/uicc/RuimRecords;)Z

    move-result v3

    .line 1383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1385
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/telephony/uicc/RuimRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1386
    sget-object v3, Lcom/android/internal/telephony/uicc/RuimRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v4

    aget-object v3, v3, v4

    .line 1387
    const-string/jumbo v4, "false"

    .line 1386
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1388
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get6(Lcom/android/internal/telephony/uicc/RuimRecords;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1389
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->-set8(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    .line 1390
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get5(Lcom/android/internal/telephony/uicc/RuimRecords;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 1391
    return-void

    .line 1378
    :cond_0
    return-void
.end method