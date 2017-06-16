.class Lcom/android/server/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "wifiMonitorSingleton"    # Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 899
    const-string/jumbo v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 896
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    .line 900
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 901
    iput-object p2, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 898
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 905
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MonitorThread start with mConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 907
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get0(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z

    move-result v3

    .line 906
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get0(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 912
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiMonitor"

    const-string/jumbo v2, "MonitorThread exit because mConnected is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_1
    :goto_0
    return-void

    .line 915
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "eventStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 921
    const-string/jumbo v1, "BSS-ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 922
    const-string/jumbo v1, "BSS-REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 923
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 927
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-wrap0(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 928
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z

    move-result v1

    .line 927
    if-eqz v1, :cond_0

    .line 929
    :cond_5
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "WifiMonitor"

    const-string/jumbo v2, "Disconnecting from the supplicant, no more events"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiMonitor"

    const-string/jumbo v2, "Disconnecting from the supplicant, by mQuitMonitorFlag"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
