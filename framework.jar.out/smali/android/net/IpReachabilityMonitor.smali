.class public Landroid/net/IpReachabilityMonitor;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpReachabilityMonitor$Callback;,
        Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "IpReachabilityMonitor"

.field private static final VDBG:Z = true


# instance fields
.field private final mCallback:Landroid/net/IpReachabilityMonitor$Callback;

.field private final mInterfaceIndex:I

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpWatchList:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private mIpWatchListVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLinkProperties:Landroid/net/LinkProperties;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

.field private final mObserverThread:Ljava/lang/Thread;

.field private mRunning:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/IpReachabilityMonitor;)I
    .locals 1

    iget v0, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I

    return v0
.end method

.method static synthetic -get1(Landroid/net/IpReachabilityMonitor;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/IpReachabilityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/net/IpReachabilityMonitor;Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/IpReachabilityMonitor;->isWatching(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/IpReachabilityMonitor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->stillRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/net/IpReachabilityMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/IpReachabilityMonitor;->handleNeighborLost(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/IpReachabilityMonitor$Callback;)V
    .locals 6
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/net/IpReachabilityMonitor$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 87
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    .line 141
    iput-object p1, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    .line 142
    const/4 v1, -0x1

    .line 144
    .local v1, "ifIndex":I
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 145
    .local v2, "netIf":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    iput v3, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    iput-object p2, p0, Landroid/net/IpReachabilityMonitor;->mCallback:Landroid/net/IpReachabilityMonitor$Callback;

    .line 150
    new-instance v3, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/IpReachabilityMonitor;Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;)V

    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    .line 151
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Landroid/net/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    .line 152
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 140
    return-void

    .line 146
    .end local v2    # "netIf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid interface \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private describeWatchList()Ljava/lang/String;
    .locals 8

    .prologue
    .line 164
    const-string/jumbo v0, ", "

    .line 165
    .local v0, "delimiter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 167
    :try_start_0
    const-string/jumbo v5, "iface{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "}, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v5, "v{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "}, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v5, "ntable=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/4 v3, 0x1

    .line 171
    .local v3, "firstTime":Z
    iget-object v5, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    if-eqz v3, :cond_0

    .line 173
    const/4 v3, 0x0

    .line 177
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-static {v5}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "firstTime":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 175
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "firstTime":Z
    :cond_0
    :try_start_1
    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 180
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    :cond_1
    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getNeighborStateLocked(Ljava/net/InetAddress;)S
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 207
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleNeighborLost(Ljava/lang/String;)V
    .locals 12
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v4, 0x0

    .line 259
    .local v4, "ip":Ljava/net/InetAddress;
    iget-object v10, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 260
    :try_start_0
    new-instance v8, Landroid/net/LinkProperties;

    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v8, v9}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 262
    .local v8, "whatIfLp":Landroid/net/LinkProperties;
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "ip":Ljava/net/InetAddress;
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 263
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    const/16 v11, 0x20

    if-ne v9, v11, :cond_0

    .line 267
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/InetAddress;

    move-object v4, v0

    .line 268
    .local v4, "ip":Ljava/net/InetAddress;
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "route$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 269
    .local v6, "route":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 270
    invoke-virtual {v8, v6}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 259
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "ip":Ljava/net/InetAddress;
    .end local v6    # "route":Landroid/net/RouteInfo;
    .end local v7    # "route$iterator":Ljava/util/Iterator;
    .end local v8    # "whatIfLp":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 273
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "ip":Ljava/net/InetAddress;
    .restart local v7    # "route$iterator":Ljava/util/Iterator;
    .restart local v8    # "whatIfLp":Landroid/net/LinkProperties;
    :cond_2
    :try_start_1
    invoke-virtual {v8, v4}, Landroid/net/LinkProperties;->removeDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_0

    .line 276
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v4    # "ip":Ljava/net/InetAddress;
    .end local v7    # "route$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v9, v8}, Landroid/net/LinkProperties;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    monitor-exit v10

    .line 279
    sget-object v9, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v1, v9, :cond_4

    .line 280
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FAILURE: LOST_PROVISIONING, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "logMsg":Ljava/lang/String;
    const-string/jumbo v9, "IpReachabilityMonitor"

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mCallback:Landroid/net/IpReachabilityMonitor$Callback;

    if-eqz v9, :cond_4

    .line 285
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mCallback:Landroid/net/IpReachabilityMonitor$Callback;

    invoke-interface {v9, v4, v5}, Landroid/net/IpReachabilityMonitor$Callback;->notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 256
    .end local v5    # "logMsg":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z
    .locals 3
    .param p1, "ip"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "route$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 199
    .local v0, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const/4 v2, 0x1

    return v2

    .line 203
    .end local v0    # "route":Landroid/net/RouteInfo;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isWatching(Ljava/net/InetAddress;)Z
    .locals 2
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 186
    iget-object v1, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-boolean v0, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static probeNeighbor(ILjava/net/InetAddress;)Z
    .locals 20
    .param p0, "ifIndex"    # I
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 100
    const-wide/16 v10, 0x12c

    .line 101
    .local v10, "IO_TIMEOUT":J
    const/4 v4, 0x6

    new-array v8, v4, [B

    .local v8, "EMPTY_HW_ADDR":[B
    fill-array-data v8, :array_0

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "probing ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 103
    .local v14, "msgSnippet":Ljava/lang/String;
    const-string/jumbo v4, "IpReachabilityMonitor"

    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v4, 0x1

    const/16 v5, 0x10

    .line 105
    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v4, v0, v5, v1, v8}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    move-result-object v3

    .line 107
    .local v3, "msg":[B
    const/16 v17, 0x0

    .line 109
    .local v17, "returnValue":Z
    const/16 v18, 0x0

    const/4 v15, 0x0

    .local v15, "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :try_start_0
    new-instance v2, Landroid/net/netlink/NetlinkSocket;

    sget v4, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-direct {v2, v4}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    .end local v15    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .local v2, "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :try_start_1
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->connectToKernel()V

    .line 111
    array-length v5, v3

    const/4 v4, 0x0

    const-wide/16 v6, 0x12c

    invoke-virtual/range {v2 .. v7}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    .line 112
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 113
    .local v9, "bytes":Ljava/nio/ByteBuffer;
    invoke-static {v9}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v16

    .line 114
    .local v16, "response":Landroid/net/netlink/NetlinkMessage;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v4, :cond_2

    .line 115
    move-object/from16 v0, v16

    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 116
    move-object/from16 v0, v16

    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v4

    iget v4, v4, Landroid/net/netlink/StructNlMsgErr;->error:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_2

    .line 117
    const/16 v17, 0x1

    .line 135
    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v18, :cond_1

    :try_start_3
    throw v18
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0

    .line 133
    .end local v9    # "bytes":Ljava/nio/ByteBuffer;
    .end local v16    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_0
    move-exception v12

    .line 134
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "IpReachabilityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1
    return v17

    .line 120
    .restart local v9    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v16    # "response":Landroid/net/netlink/NetlinkMessage;
    :cond_2
    if-nez v9, :cond_4

    .line 121
    :try_start_4
    const-string/jumbo v13, "null recvMessage"

    .line 131
    .local v13, "errmsg":Ljava/lang/String;
    :goto_2
    const-string/jumbo v4, "IpReachabilityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", errmsg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 135
    .end local v9    # "bytes":Ljava/nio/ByteBuffer;
    .end local v13    # "errmsg":Ljava/lang/String;
    .end local v16    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_1
    move-exception v4

    :goto_3
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v5

    move-object/from16 v19, v5

    move-object v5, v4

    move-object/from16 v4, v19

    :goto_4
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :goto_5
    if-eqz v5, :cond_7

    :try_start_7
    throw v5
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_0

    .line 122
    .restart local v9    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v16    # "response":Landroid/net/netlink/NetlinkMessage;
    :cond_4
    if-nez v16, :cond_5

    .line 123
    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "raw bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v9}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "errmsg":Ljava/lang/String;
    goto :goto_2

    .line 129
    .end local v13    # "errmsg":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v13

    .restart local v13    # "errmsg":Ljava/lang/String;
    goto :goto_2

    .line 135
    .end local v13    # "errmsg":Ljava/lang/String;
    :catch_2
    move-exception v18

    goto :goto_1

    .end local v9    # "bytes":Ljava/nio/ByteBuffer;
    .end local v16    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_3
    move-exception v6

    if-nez v5, :cond_6

    move-object v5, v6

    goto :goto_5

    :cond_6
    if-eq v5, v6, :cond_3

    :try_start_9
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw v4
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_0

    .end local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .restart local v15    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catchall_1
    move-exception v4

    move-object/from16 v5, v18

    move-object v2, v15

    .restart local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    goto :goto_4

    .end local v15    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catchall_2
    move-exception v4

    move-object/from16 v5, v18

    goto :goto_4

    .end local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .restart local v15    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catch_4
    move-exception v4

    move-object v2, v15

    .restart local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    goto :goto_3

    .line 101
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private stillRunning()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-boolean v1, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearLinkProperties()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 250
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 251
    iget v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 253
    const-string/jumbo v0, "IpReachabilityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->describeWatchList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public probeAll()V
    .locals 5

    .prologue
    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 292
    .local v0, "ipProbeList":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    iget-object v4, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 293
    :try_start_0
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "target$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 296
    .local v1, "target":Ljava/net/InetAddress;
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->stillRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    .end local v1    # "target":Ljava/net/InetAddress;
    :cond_0
    return-void

    .line 292
    .end local v2    # "target$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 299
    .restart local v1    # "target":Ljava/net/InetAddress;
    .restart local v2    # "target$iterator":Ljava/util/Iterator;
    :cond_1
    iget v3, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I

    invoke-static {v3, v1}, Landroid/net/IpReachabilityMonitor;->probeNeighbor(ILjava/net/InetAddress;)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 157
    invoke-virtual {p0}, Landroid/net/IpReachabilityMonitor;->clearLinkProperties()V

    .line 158
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    invoke-static {v0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->-wrap0(Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;)V

    .line 155
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 10
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 214
    iget-object v7, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 216
    const-string/jumbo v7, "IpReachabilityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requested LinkProperties interface \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 217
    const-string/jumbo v9, "\' does not match: "

    .line 216
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 217
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    .line 216
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 221
    :cond_0
    iget-object v8, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 222
    :try_start_0
    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v7, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 223
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v3, "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    iget-object v7, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    .line 226
    .local v6, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "route$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 227
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 228
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    .line 229
    .local v0, "gw":Ljava/net/InetAddress;
    invoke-static {v6, v0}, Landroid/net/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 230
    invoke-direct {p0, v0}, Landroid/net/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "gw":Ljava/net/InetAddress;
    .end local v3    # "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v4    # "route":Landroid/net/RouteInfo;
    .end local v5    # "route$iterator":Ljava/util/Iterator;
    .end local v6    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 235
    .restart local v3    # "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v5    # "route$iterator":Ljava/util/Iterator;
    .restart local v6    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nameserver$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 236
    .local v1, "nameserver":Ljava/net/InetAddress;
    invoke-static {v6, v1}, Landroid/net/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 237
    invoke-direct {p0, v1}, Landroid/net/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 241
    .end local v1    # "nameserver":Ljava/net/InetAddress;
    :cond_4
    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    .line 242
    iget v7, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 244
    const-string/jumbo v7, "IpReachabilityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "watch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->describeWatchList()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method
