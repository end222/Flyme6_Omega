.class Lcom/android/server/notification/NotificationManagerService$8;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$opPkg:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILandroid/os/UserHandle;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "val$notification"    # Landroid/app/Notification;
    .param p3, "val$pkg"    # Ljava/lang/String;
    .param p4, "val$callingUid"    # I
    .param p5, "val$opPkg"    # Ljava/lang/String;
    .param p6, "val$id"    # I
    .param p7, "val$tag"    # Ljava/lang/String;
    .param p8, "val$callingPid"    # I
    .param p9, "val$user"    # Landroid/os/UserHandle;
    .param p10, "val$userId"    # I
    .param p11, "val$isSystemNotification"    # Z

    .prologue
    .line 2176
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$opPkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$id:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    iput-object p9, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$user:Landroid/os/UserHandle;

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$userId:I

    iput-boolean p11, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$isSystemNotification:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 2180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 2185
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    const/4 v5, -0x2

    .line 2186
    const/4 v6, 0x2

    .line 2185
    invoke-static {v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    move-result v4

    iput v4, v3, Landroid/app/Notification;->priority:I

    .line 2188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    .line 2189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->priority:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 2190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    const/4 v4, 0x2

    iput v4, v3, Landroid/app/Notification;->priority:I

    .line 2199
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/RankingHelper;->getPackagePeekable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 2201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2203
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "headsup"

    .line 2204
    const/4 v5, 0x0

    .line 2203
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2208
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$opPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$id:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$user:Landroid/os/UserHandle;

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/notification/NotificationManagerService;->setFlymeNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->priority:I

    mul-int/lit8 v9, v3, 0xa

    .line 2211
    .local v9, "score":I
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    .line 2212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$opPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$id:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    .line 2213
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$user:Landroid/os/UserHandle;

    .line 2211
    invoke-direct/range {v2 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2214
    .local v2, "n":Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, v24

    invoke-virtual {v3, v2, v0}, Lcom/android/server/notification/NotificationManagerService;->setFlymeNotificationFilter(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;)V

    new-instance v22, Lcom/android/server/notification/NotificationRecord;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v9}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;I)V

    .line 2215
    .local v22, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/notification/NotificationRecord;

    .line 2216
    .local v20, "old":Lcom/android/server/notification/NotificationRecord;
    if-eqz v20, :cond_3

    .line 2218
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    .line 2223
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->-wrap15(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    .line 2225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->-wrap5(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z

    move-result v18

    .line 2229
    .local v18, "ignoreNotification":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    const-string/jumbo v4, "com.android.providers.downloads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2230
    const-string/jumbo v3, "DownloadManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    .line 2229
    if-eqz v3, :cond_6

    .line 2231
    :cond_4
    const/16 v17, 0x0

    .line 2232
    .local v17, "enqueueStatus":I
    if-eqz v18, :cond_7

    .line 2233
    const/16 v17, 0x2

    .line 2237
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    .line 2238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$id:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$userId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2237
    invoke-static/range {v10 .. v17}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2242
    .end local v17    # "enqueueStatus":I
    :cond_6
    if-eqz v18, :cond_8

    monitor-exit v23

    .line 2243
    return-void

    .line 2234
    .restart local v17    # "enqueueStatus":I
    :cond_7
    if-eqz v20, :cond_5

    .line 2235
    const/16 v17, 0x1

    goto :goto_0

    .line 2246
    .end local v17    # "enqueueStatus":I
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 2251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$id:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->-wrap1(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2252
    const/16 v9, -0x3e8

    .line 2256
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    invoke-static {v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->-wrap4(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2265
    :cond_a
    :goto_1
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/server/notification/NotificationRecord;->score:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, -0x14

    if-ge v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService;->callFlymeReplyIntent(Landroid/service/notification/StatusBarNotification;)V

    monitor-exit v23

    .line 2267
    return-void

    .line 2257
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$isSystemNotification:Z

    if-nez v3, :cond_a

    .line 2258
    const/16 v3, -0x3e8

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    .line 2259
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Suppressing notification from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2260
    const-string/jumbo v5, " by user request."

    .line 2259
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2180
    .end local v2    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v9    # "score":I
    .end local v18    # "ignoreNotification":Z
    .end local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v22    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v23

    throw v3

    .line 2270
    .restart local v2    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v9    # "score":I
    .restart local v18    # "ignoreNotification":Z
    .restart local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    .restart local v22    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v19

    .line 2271
    .local v19, "index":I
    if-gez v19, :cond_e

    .line 2272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->addFlymePackageSendNumber(Lcom/android/server/notification/NotificationRecord;)V

    .line 2284
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_d

    .line 2289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x22

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2293
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap8(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 2296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 2298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-nez v3, :cond_10

    .line 2299
    if-eqz v20, :cond_f

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    .line 2300
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    .line 2313
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap9(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v23

    .line 2178
    return-void

    .line 2275
    :cond_e
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    check-cast v20, Lcom/android/server/notification/NotificationRecord;

    .line 2276
    .restart local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 2279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    .line 2280
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    .line 2279
    or-int/2addr v4, v5

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2281
    const/4 v3, 0x1

    move-object/from16 v0, v22

    iput-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    goto/16 :goto_2

    .line 2299
    :cond_f
    const/16 v21, 0x0

    .local v21, "oldSbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_3

    .line 2302
    .end local v21    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    :cond_10
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not posting notification without small icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$8;->val$notification:Landroid/app/Notification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    if-eqz v20, :cond_11

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v3, :cond_12

    .line 2309
    :cond_11
    :goto_5
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2310
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2309
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2304
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5
.end method
