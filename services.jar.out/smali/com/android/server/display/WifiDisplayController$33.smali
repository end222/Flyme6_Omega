.class Lcom/android/server/display/WifiDisplayController$33;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 1621
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 5
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v4, 0x0

    .line 1625
    if-nez p1, :cond_0

    .line 1626
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "Error: group is null !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    return-void

    .line 1630
    :cond_0
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1631
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received group info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-wrap10(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1643
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get19(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get19(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1652
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get59(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1653
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1654
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get50(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1653
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1655
    .local v0, "owner":Z
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1659
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2, v4}, Lcom/android/server/display/WifiDisplayController;->-set13(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-set10(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1660
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayController;->-set9(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1661
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-wrap53(Lcom/android/server/display/WifiDisplayController;)V

    .line 1671
    .end local v0    # "owner":Z
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get19(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 1672
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected to Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1673
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1672
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get23(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1676
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayController;->-set9(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1677
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-set8(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1678
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1, v4}, Lcom/android/server/display/WifiDisplayController;->-set10(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1679
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-wrap60(Lcom/android/server/display/WifiDisplayController;I)V

    .line 1680
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-wrap53(Lcom/android/server/display/WifiDisplayController;)V

    .line 1683
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v2, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_WFD_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-wrap25(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V

    .line 1623
    :cond_5
    return-void

    .line 1635
    :cond_6
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Aborting connection to Wifi display because the current P2P group does not contain the device we expected to find: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1637
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1635
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1638
    const-string/jumbo v3, ", group info was: "

    .line 1635
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1638
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-wrap10(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v3

    .line 1635
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-wrap27(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 1640
    return-void

    .line 1644
    :cond_7
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Aborting connection to Wifi display because the current P2P group does not contain the device we desired to find: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1646
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get19(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1644
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1647
    const-string/jumbo v3, ", group info was: "

    .line 1644
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1647
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-wrap10(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v3

    .line 1644
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-wrap21(Lcom/android/server/display/WifiDisplayController;)V

    .line 1649
    return-void

    .line 1662
    .restart local v0    # "owner":Z
    :cond_8
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get19(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1666
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$33;->this$0:Lcom/android/server/display/WifiDisplayController;

    if-eqz v0, :cond_9

    .line 1667
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1666
    :goto_1
    invoke-static {v3, v1}, Lcom/android/server/display/WifiDisplayController;->-set13(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/display/WifiDisplayController;->-set10(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_0

    .line 1667
    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    goto :goto_1
.end method