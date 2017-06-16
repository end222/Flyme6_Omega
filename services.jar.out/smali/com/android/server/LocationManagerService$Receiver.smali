.class final Lcom/android/server/LocationManagerService$Receiver;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final mAllowedResolutionLevel:I

.field final mHideFromAppOps:Z

.field final mKey:Ljava/lang/Object;

.field final mListener:Landroid/location/ILocationListener;

.field mOpHighPowerMonitoring:Z

.field mOpMonitoring:Z

.field final mPackageName:Ljava/lang/String;

.field mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mPid:I

.field final mUid:I

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "hideFromAppOps"    # Z

    .prologue
    const/4 v2, 0x1

    .line 875
    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 877
    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    .line 878
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 879
    if-eqz p2, :cond_2

    .line 880
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    .line 884
    :goto_0
    invoke-static {p1, p4, p5}, Lcom/android/server/LocationManagerService;->-wrap1(Lcom/android/server/LocationManagerService;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 885
    iput p5, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    .line 886
    iput p4, p0, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    .line 887
    iput-object p6, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    .line 888
    if-eqz p7, :cond_0

    invoke-virtual {p7}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 889
    const/4 p7, 0x0

    .line 891
    .end local p7    # "workSource":Landroid/os/WorkSource;
    :cond_0
    iput-object p7, p0, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 892
    iput-boolean p8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    .line 894
    invoke-virtual {p0, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 897
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    const-string/jumbo v1, "LocationManagerService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 898
    if-nez p7, :cond_1

    .line 899
    new-instance p7, Landroid/os/WorkSource;

    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-direct {p7, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 876
    return-void

    .line 882
    .restart local p7    # "workSource":Landroid/os/WorkSource;
    :cond_2
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    goto :goto_0
.end method

.method private decrementPendingBroadcastsLocked()V
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1165
    :cond_0
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .locals 2

    .prologue
    .line 1160
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1159
    :cond_0
    return-void
.end method

.method private updateMonitoring(ZZI)Z
    .locals 4
    .param p1, "allowMonitoring"    # Z
    .param p2, "currentlyMonitoring"    # Z
    .param p3, "op"    # I

    .prologue
    const/4 v0, 0x0

    .line 995
    if-nez p2, :cond_1

    .line 996
    if-eqz p1, :cond_3

    .line 997
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1001
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 1003
    :cond_2
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1004
    return v0

    .line 1008
    :cond_3
    return p2
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 1139
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Location listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, p0}, Lcom/android/server/LocationManagerService;->-wrap9(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1144
    monitor-enter p0

    .line 1145
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 1138
    return-void

    .line 1141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1144
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .locals 10
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v9, 0x0

    .line 1062
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    .line 1064
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v1}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 1070
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 1092
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1072
    :catch_0
    move-exception v8

    .line 1073
    .local v8, "e":Landroid/os/RemoteException;
    return v9

    .line 1076
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1077
    .local v3, "locationChanged":Landroid/content/Intent;
    const-string/jumbo v0, "location"

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1079
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1082
    :try_start_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    .line 1083
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap2(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    .line 1082
    const/4 v2, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p0

    goto :goto_0

    .line 1088
    :catch_1
    move-exception v7

    .line 1089
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    return v9

    .line 1079
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1098
    invoke-virtual {p0, v10}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1100
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_1

    .line 1102
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    if-eqz p2, :cond_0

    .line 1106
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 1112
    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1134
    :goto_1
    return v10

    .line 1108
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1102
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1114
    :catch_0
    move-exception v8

    .line 1115
    .local v8, "e":Landroid/os/RemoteException;
    return v9

    .line 1118
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1119
    .local v3, "providerIntent":Landroid/content/Intent;
    const-string/jumbo v0, "providerEnabled"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1121
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1124
    :try_start_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    .line 1125
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap2(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    .line 1124
    const/4 v2, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1128
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit p0

    goto :goto_1

    .line 1130
    :catch_1
    move-exception v7

    .line 1131
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    return v9

    .line 1121
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_7
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7 .. :try_end_7} :catch_1
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 1027
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    .line 1029
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1035
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 1058
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1029
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1037
    :catch_0
    move-exception v8

    .line 1038
    .local v8, "e":Landroid/os/RemoteException;
    return v9

    .line 1041
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1042
    .local v3, "statusChanged":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1043
    const-string/jumbo v0, "status"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1048
    :try_start_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    .line 1049
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap2(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    .line 1048
    const/4 v2, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p0

    goto :goto_0

    .line 1054
    :catch_1
    move-exception v7

    .line 1055
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    return v9

    .line 1045
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public clearPendingBroadcastsLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1174
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_0

    .line 1175
    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1176
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1173
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    .line 906
    instance-of v0, p1, Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/LocationManagerService$Receiver;

    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 909
    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getListener()Landroid/location/ILocationListener;
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    return-object v0

    .line 1023
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingIntent()Z
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1152
    monitor-enter p0

    .line 1153
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1151
    return-void

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    .local v2, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Reciever["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v3, :cond_0

    .line 923
    const-string/jumbo v3, " listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    :goto_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 928
    .local v0, "p":Ljava/lang/String;
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 925
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, " intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 930
    .restart local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public updateMonitoring(Z)V
    .locals 12
    .param p1, "allow"    # Z

    .prologue
    .line 940
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    if-eqz v8, :cond_0

    .line 941
    return-void

    .line 944
    :cond_0
    const/4 v4, 0x0

    .line 945
    .local v4, "requestingLocation":Z
    const/4 v3, 0x0

    .line 946
    .local v3, "requestingHighPowerLocation":Z
    if-eqz p1, :cond_2

    .line 949
    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "updateRecord$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 950
    .local v5, "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v9, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/LocationManagerService;->-wrap0(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 951
    const/4 v4, 0x1

    .line 953
    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get6(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 954
    .local v1, "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v1, :cond_4

    .line 955
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    .line 956
    :goto_0
    if-eqz v2, :cond_1

    .line 957
    iget v8, v2, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 958
    iget-object v8, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v8}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 959
    const/4 v3, 0x1

    .line 969
    .end local v1    # "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v5    # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v6    # "updateRecord$iterator":Ljava/util/Iterator;
    :cond_2
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    .line 970
    const/16 v9, 0x29

    .line 967
    invoke-direct {p0, v4, v8, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    .line 973
    iget-boolean v7, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 976
    .local v7, "wasHighPowerMonitoring":Z
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 977
    const/16 v9, 0x2a

    .line 974
    invoke-direct {p0, v3, v8, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 978
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    if-eq v8, v7, :cond_3

    .line 980
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 981
    .local v0, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 939
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 955
    .end local v7    # "wasHighPowerMonitoring":Z
    .restart local v1    # "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    .restart local v5    # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v6    # "updateRecord$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v2, 0x0

    .local v2, "properties":Lcom/android/internal/location/ProviderProperties;
    goto :goto_0
.end method
