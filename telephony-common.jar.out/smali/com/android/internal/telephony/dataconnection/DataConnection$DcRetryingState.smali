.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcRetryingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1793
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get25(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1794
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1795
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 1796
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1810
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DcRetryingState: enter() mTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1811
    const-string/jumbo v3, ", call notifyAllOfDisconnectDcRetrying lostConnection"

    .line 1810
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1814
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v2, "lostDataConnection"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 1817
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1818
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 1792
    :goto_0
    return-void

    .line 1800
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DcRetryingState: enter() not retrying rat changed, mConnectionParams.mRilRat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1801
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 1800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1802
    const-string/jumbo v2, " != mRilRat:"

    .line 1800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1802
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get25(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v2

    .line 1800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1803
    const-string/jumbo v2, " transitionTo(mInactiveState)"

    .line 1800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1804
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap12(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 1806
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 1807
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1826
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 1989
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState nothandled msg.what="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1991
    const/4 v7, 0x0

    .line 1995
    .local v7, "retVal":Z
    :goto_0
    return v7

    .line 1828
    .end local v7    # "retVal":Z
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1829
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    .line 1830
    .local v4, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v10, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1831
    .local v3, "drs":I
    iget-object v10, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1832
    .local v6, "rat":I
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get25(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v10

    if-ne v6, v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v10

    if-ne v3, v10, :cond_0

    .line 1834
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED strange no change in drs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1836
    const-string/jumbo v12, " rat="

    .line 1834
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1836
    const-string/jumbo v12, " ignoring"

    .line 1834
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1874
    :goto_1
    const/4 v7, 0x1

    .line 1875
    .restart local v7    # "retVal":Z
    goto :goto_0

    .line 1839
    .end local v7    # "retVal":Z
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1842
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGEDbecause SM retry fail cause "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1843
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v12

    .line 1842
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1844
    const-string/jumbo v12, "ignoring this event"

    .line 1842
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1866
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set3(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    .line 1867
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set14(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    .line 1869
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    .line 1870
    .local v9, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v5

    .line 1871
    .local v5, "networkType":I
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get22(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 1872
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v11

    .line 1871
    invoke-virtual {v10, v5, v11}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    goto :goto_1

    .line 1848
    .end local v5    # "networkType":I
    .end local v9    # "ss":Landroid/telephony/ServiceState;
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRetryWhenSSChange:Z

    if-eqz v10, :cond_2

    .line 1849
    const/4 v7, 0x0

    .line 1850
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1854
    .end local v7    # "retVal":Z
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 1855
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap10(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    .line 1856
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1859
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "DcRetryingState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED giving up changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1860
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get25(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v11

    .line 1859
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1861
    const-string/jumbo v11, " to rat="

    .line 1859
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1862
    const-string/jumbo v11, " or drs changed from "

    .line 1859
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1862
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v11

    .line 1859
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1862
    const-string/jumbo v11, " to drs="

    .line 1859
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1863
    .local v8, "s":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap12(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1879
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "drs":I
    .end local v4    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "rat":I
    .end local v8    # "s":Ljava/lang/String;
    :sswitch_1
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v11, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-ne v10, v11, :cond_4

    .line 1880
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v10

    if-eqz v10, :cond_3

    .line 1882
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v11, "DcRetryingState: EVENT_RETRY_CONNECTION not in service"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1884
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 1885
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1902
    :goto_3
    const/4 v7, 0x1

    .line 1903
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1887
    .end local v7    # "retVal":Z
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 1889
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState EVENT_RETRY_CONNECTION RetryCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1890
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v12

    .line 1889
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1891
    const-string/jumbo v12, " mConnectionParams="

    .line 1889
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1891
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v12

    .line 1889
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1893
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap19(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 1894
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 1898
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState stale EVENT_RETRY_CONNECTION tag:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1899
    iget v12, p1, Landroid/os/Message;->arg1:I

    .line 1898
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1899
    const-string/jumbo v12, " != mTag:"

    .line 1898
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1899
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 1898
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1907
    :sswitch_2
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v11, "DcRetryingState: msg.what=RSP_RESET, ignore we\'re already reset"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1909
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v11

    .line 1910
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1909
    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 1911
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1912
    const/4 v7, 0x1

    .line 1913
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1916
    .end local v7    # "retVal":Z
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1918
    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState: msg.what=EVENT_CONNECT RefCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1919
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 1918
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1919
    const-string/jumbo v12, " cp="

    .line 1918
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1920
    const-string/jumbo v12, " mConnectionParams="

    .line 1918
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1920
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v12

    .line 1918
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1924
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DctController;->isActivePhone(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1925
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v11, "DcRetryingState: msg.what=EVENT_CONNECT but is not active data sub"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1926
    const/4 v7, 0x1

    .line 1927
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1930
    .end local v7    # "retVal":Z
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v11

    .line 1931
    iget-object v12, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v12

    .line 1930
    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13, v12}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1932
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v10

    .line 1930
    if-eqz v10, :cond_6

    .line 1935
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState: msg.what=EVENT_CONNECTbut sm cause retrying, so ignore this event. connect reason:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1937
    iget-object v12, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v12

    .line 1935
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1938
    const/4 v7, 0x1

    .line 1939
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1942
    .end local v7    # "retVal":Z
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1943
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap19(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 1944
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1952
    :goto_4
    const/4 v7, 0x1

    .line 1953
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1947
    .end local v7    # "retVal":Z
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v11, "DcRetryingState: msg.what=EVENT_CONNECT initConnection failed"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1949
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1950
    const/4 v12, 0x0

    .line 1949
    invoke-static {v10, v1, v11, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap16(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    goto :goto_4

    .line 1956
    .end local v1    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1958
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    iget-object v11, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_8

    .line 1960
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState msg.what=EVENT_DISCONNECT  RefCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1961
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 1960
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1961
    const-string/jumbo v12, " dp="

    .line 1960
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1963
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 1964
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1971
    :goto_5
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->checkIfDefaultApnReferenceCountChanged()V

    .line 1974
    const/4 v7, 0x1

    .line 1975
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1966
    .end local v7    # "retVal":Z
    :cond_8
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v11, "DcRetryingState: msg.what=EVENT_DISCONNECT"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1967
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v11, 0x0

    invoke-static {v10, v2, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto :goto_5

    .line 1979
    .end local v2    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :sswitch_5
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState msg.what=EVENT_DISCONNECT/DISCONNECT_ALL RefCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1980
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 1979
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1982
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 1983
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1984
    const/4 v7, 0x1

    .line 1985
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1826
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_3
        0x40004 -> :sswitch_4
        0x40006 -> :sswitch_5
        0x4000a -> :sswitch_1
        0x4000b -> :sswitch_0
        0x4100c -> :sswitch_2
    .end sparse-switch
.end method
