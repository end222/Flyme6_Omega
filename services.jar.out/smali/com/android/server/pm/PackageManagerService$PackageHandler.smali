.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1191
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 1190
    return-void
.end method

.method private connectToService()Z
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1157
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v5, "Trying to bind to DefaultContainerService"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 1160
    .local v3, "service":Landroid/content/Intent;
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1161
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-get6(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v5

    .line 1162
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1161
    invoke-virtual {v4, v3, v5, v8, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1163
    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1164
    iput-boolean v8, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1167
    const-wide/16 v0, 0x3e8

    .line 1168
    .local v0, "DEFCONTAINER_CHECK":J
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1169
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1172
    return v8

    .line 1174
    .end local v0    # "DEFCONTAINER_CHECK":J
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1175
    return v7
.end method

.method private disconnectService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1179
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1180
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1182
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->-set3(Lcom/android/server/pm/PackageManagerService;Z)Z

    .line 1183
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disconnectService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get13(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_0
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1186
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get6(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1187
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1178
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 56
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1203
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1202
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1205
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1206
    .local v36, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 1207
    .local v26, "idx":I
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "init_copy idx="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v2, :cond_3

    .line 1214
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1215
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Failed to bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1217
    return-void

    .line 1221
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1224
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1227
    if-nez v26, :cond_0

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1234
    .end local v26    # "idx":I
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "mcs_bound"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IMediaContainerService;

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1238
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1239
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v2, :cond_7

    .line 1242
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Cannot bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, "params$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1245
    .restart local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_1

    .line 1247
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1249
    .end local v38    # "params$iterator":Ljava/util/Iterator;
    :cond_7
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Waiting to connect to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1251
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1253
    .restart local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v36, :cond_0

    .line 1254
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1257
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "PackageManager"

    .line 1258
    const-string/jumbo v3, "Checking for more work or unbind..."

    .line 1257
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1263
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_c

    .line 1264
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_0

    .line 1265
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "PackageManager"

    .line 1266
    const-string/jumbo v3, "Posting delayed MCS_UNBIND"

    .line 1265
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_b
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1268
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v48

    .line 1271
    .local v48, "ubmsg":Landroid/os/Message;
    const-wide/16 v2, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1277
    .end local v48    # "ubmsg":Landroid/os/Message;
    :cond_c
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "PackageManager"

    .line 1278
    const-string/jumbo v3, "Posting MCS_BOUND for next work"

    .line 1277
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1285
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_e
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Empty queue"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1291
    :pswitch_3
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "mcs_check"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get12(Lcom/android/server/pm/PackageManagerService;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->-set2(Lcom/android/server/pm/PackageManagerService;I)I

    .line 1294
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mcs_check("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->-get13(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->-get12(Lcom/android/server/pm/PackageManagerService;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get13(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get12(Lcom/android/server/pm/PackageManagerService;)I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 1296
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    goto/16 :goto_0

    .line 1302
    :pswitch_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "mcs_reconnect"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1305
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_11

    .line 1306
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    .line 1308
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1309
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Failed to bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .restart local v38    # "params$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1312
    .restart local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_2

    .line 1314
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1321
    .end local v38    # "params$iterator":Ljava/util/Iterator;
    :pswitch_5
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "mcs_unbind"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_15

    .line 1324
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_0

    .line 1325
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "calling disconnectService()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_0

    .line 1329
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1339
    :pswitch_6
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "mcs_giveup too many retries"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1346
    :pswitch_7
    const/16 v45, 0x0

    .line 1348
    .local v45, "size":I
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1350
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_17

    monitor-exit v3

    .line 1351
    return-void

    .line 1353
    :cond_17
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v45

    .line 1354
    if-gtz v45, :cond_18

    monitor-exit v3

    .line 1356
    return-void

    .line 1358
    :cond_18
    :try_start_2
    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    .line 1359
    .local v35, "packages":[Ljava/lang/String;
    move/from16 v0, v45

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 1360
    .local v19, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v49, v0

    .line 1361
    .local v49, "uids":[I
    const/16 v25, 0x0

    .line 1363
    .local v25, "i":I
    const/16 v30, 0x0

    .local v30, "n":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v2

    move/from16 v0, v30

    if-ge v0, v2, :cond_1b

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v34

    .line 1366
    .local v34, "packageUserId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .line 1368
    .local v28, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    move/from16 v0, v25

    move/from16 v1, v45

    if-ge v0, v1, :cond_1a

    .line 1369
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 1370
    .local v24, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v35, v25

    .line 1371
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aput-object v2, v19, v25

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/pm/PackageSetting;

    .line 1373
    .local v39, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v39, :cond_19

    .line 1374
    move-object/from16 v0, v39

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v0, v34

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1373
    :goto_5
    aput v2, v49, v25

    .line 1376
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 1375
    :cond_19
    const/4 v2, -0x1

    goto :goto_5

    .line 1363
    .end local v24    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v39    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1a
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 1379
    .end local v28    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v34    # "packageUserId":I
    :cond_1b
    move/from16 v45, v25

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 1383
    const/16 v25, 0x0

    :goto_6
    move/from16 v0, v25

    move/from16 v1, v45

    if-ge v0, v1, :cond_1c

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v3, v35, v25

    aget-object v6, v19, v25

    aget v7, v49, v25

    const/4 v9, 0x1

    invoke-static {v2, v3, v9, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap33(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 1383
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .line 1349
    .end local v19    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v30    # "n":I
    .end local v35    # "packages":[Ljava/lang/String;
    .end local v49    # "uids":[I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1386
    .restart local v19    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v30    # "n":I
    .restart local v35    # "packages":[Ljava/lang/String;
    .restart local v49    # "uids":[I
    :cond_1c
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1390
    .end local v19    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v30    # "n":I
    .end local v35    # "packages":[Ljava/lang/String;
    .end local v45    # "size":I
    .end local v49    # "uids":[I
    :pswitch_8
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1391
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1392
    .local v4, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    .line 1393
    .local v52, "userId":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_1d

    const/16 v16, 0x1

    .line 1394
    .local v16, "andCode":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1395
    const/4 v2, -0x1

    move/from16 v0, v52

    if-ne v0, v2, :cond_1e

    .line 1396
    :try_start_3
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v54

    .line 1397
    .local v54, "users":[I
    const/4 v2, 0x0

    move-object/from16 v0, v54

    array-length v6, v0

    :goto_8
    if-ge v2, v6, :cond_1f

    aget v51, v54, v2

    .line 1398
    .local v51, "user":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1399
    new-instance v9, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v51

    move/from16 v1, v16

    invoke-direct {v9, v0, v4, v1}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    .line 1398
    invoke-virtual {v7, v9}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 1397
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1393
    .end local v16    # "andCode":Z
    .end local v51    # "user":I
    .end local v54    # "users":[I
    :cond_1d
    const/16 v16, 0x0

    .restart local v16    # "andCode":Z
    goto :goto_7

    .line 1402
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1403
    new-instance v6, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v52

    move/from16 v1, v16

    invoke-direct {v6, v0, v4, v1}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    .line 1402
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1f
    monitor-exit v3

    .line 1406
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_0

    .line 1394
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1410
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v16    # "andCode":Z
    .end local v52    # "userId":I
    :pswitch_9
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Handling post-install for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 1412
    .local v20, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 1413
    const/16 v21, 0x0

    .line 1415
    .local v21, "deleteOld":Z
    if-eqz v20, :cond_32

    .line 1416
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v17, v0

    .line 1417
    .local v17, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v41, v0

    .line 1419
    .local v41, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v41

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 1420
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1421
    .restart local v4    # "packageName":Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZZ)V

    .line 1422
    new-instance v5, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1423
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.UID"

    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1427
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_21

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1430
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 1429
    invoke-static {v2, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;)V

    .line 1437
    :cond_21
    const/4 v2, 0x0

    new-array v15, v2, [I

    .line 1438
    .local v15, "updateUsers":[I
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    if-eqz v2, :cond_22

    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v2, v2

    if-nez v2, :cond_29

    .line 1439
    :cond_22
    move-object/from16 v0, v41

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    .line 1466
    .local v8, "firstUsers":[I
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    .line 1467
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1466
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1468
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v2, :cond_2d

    const/16 v50, 0x1

    .line 1469
    .local v50, "update":Z
    :goto_9
    if-eqz v50, :cond_24

    .line 1470
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x1

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1472
    :cond_24
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v10, "android.intent.action.PACKAGE_ADDED"

    .line 1473
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v4

    move-object v12, v5

    .line 1472
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1474
    if-eqz v50, :cond_27

    .line 1475
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v10, "android.intent.action.PACKAGE_REPLACED"

    .line 1476
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v4

    move-object v12, v5

    .line 1475
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v10, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 1478
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v13, v4

    .line 1477
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1481
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v2

    if-nez v2, :cond_25

    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap6(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1482
    :cond_25
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1483
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "upgrading pkg "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1484
    const-string/jumbo v6, " is ASEC-hosted -> AVAILABLE"

    .line 1483
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_26
    const/4 v2, 0x1

    new-array v13, v2, [I

    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    aput v2, v13, v3

    .line 1487
    .local v13, "uidArray":[I
    new-instance v12, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1488
    .local v12, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 1490
    const/4 v14, 0x0

    .line 1489
    invoke-static/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->-wrap34(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 1493
    .end local v12    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "uidArray":[I
    :cond_27
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v2, :cond_28

    .line 1495
    const/16 v21, 0x1

    .line 1500
    :cond_28
    array-length v2, v8

    if-lez v2, :cond_2f

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    aget v3, v8, v3

    invoke-static {v2, v4, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap8(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1505
    const/4 v2, 0x0

    :try_start_4
    array-length v6, v8

    :goto_a
    if-ge v2, v6, :cond_2e

    aget v52, v8, v2

    .line 1506
    .restart local v52    # "userId":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v9, 0x0

    move/from16 v0, v52

    invoke-virtual {v7, v9, v0}, Lcom/android/server/pm/Settings;->setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1505
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1441
    .end local v8    # "firstUsers":[I
    .end local v50    # "update":Z
    .end local v52    # "userId":I
    :cond_29
    const/4 v2, 0x0

    new-array v8, v2, [I

    .line 1442
    .restart local v8    # "firstUsers":[I
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_b
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    array-length v2, v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_23

    .line 1443
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    aget v51, v2, v25

    .line 1444
    .restart local v51    # "user":I
    const/16 v27, 0x1

    .line 1445
    .local v27, "isNew":Z
    const/16 v29, 0x0

    .local v29, "j":I
    :goto_c
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v2, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_2a

    .line 1446
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    aget v2, v2, v29

    move/from16 v0, v51

    if-ne v2, v0, :cond_2b

    .line 1447
    const/16 v27, 0x0

    .line 1451
    :cond_2a
    if-eqz v27, :cond_2c

    .line 1452
    array-length v2, v8

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .line 1454
    .local v31, "newFirst":[I
    array-length v2, v8

    .line 1453
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-static {v8, v3, v0, v6, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1455
    array-length v2, v8

    aput v51, v31, v2

    .line 1456
    move-object/from16 v8, v31

    .line 1442
    .end local v31    # "newFirst":[I
    :goto_d
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 1445
    :cond_2b
    add-int/lit8 v29, v29, 0x1

    goto :goto_c

    .line 1458
    :cond_2c
    array-length v2, v15

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v32, v0

    .line 1460
    .local v32, "newUpdate":[I
    array-length v2, v15

    .line 1459
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-static {v15, v3, v0, v6, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1461
    array-length v2, v15

    aput v51, v32, v2

    .line 1462
    move-object/from16 v15, v32

    goto :goto_d

    .line 1468
    .end local v25    # "i":I
    .end local v27    # "isNew":Z
    .end local v29    # "j":I
    .end local v32    # "newUpdate":[I
    .end local v51    # "user":I
    :cond_2d
    const/16 v50, 0x0

    .restart local v50    # "update":Z
    goto/16 :goto_9

    :cond_2e
    monitor-exit v3

    .line 1513
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap13(Lcom/android/server/pm/PackageManagerService;)I

    move-result v2

    .line 1512
    const/16 v3, 0xc26

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1516
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v8    # "firstUsers":[I
    .end local v15    # "updateUsers":[I
    .end local v50    # "update":Z
    :cond_30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 1518
    if-eqz v21, :cond_31

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1520
    :try_start_5
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v3

    .line 1523
    :cond_31
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v2, :cond_0

    .line 1525
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)Landroid/os/Bundle;

    move-result-object v5

    .line 1526
    .restart local v5    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 1527
    move-object/from16 v0, v41

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    .line 1526
    invoke-interface {v2, v3, v6, v7, v5}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1528
    .end local v5    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v23

    .line 1529
    .local v23, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1504
    .end local v23    # "e":Landroid/os/RemoteException;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "extras":Landroid/os/Bundle;
    .restart local v8    # "firstUsers":[I
    .restart local v15    # "updateUsers":[I
    .restart local v50    # "update":Z
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1519
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v8    # "firstUsers":[I
    .end local v15    # "updateUsers":[I
    .end local v50    # "update":Z
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1533
    .end local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v41    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_32
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bogus post-install token "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1537
    .end local v20    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v21    # "deleteOld":Z
    :pswitch_a
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v2, :cond_33

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Got message UPDATED_MEDIA_STATUS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_33
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    const/16 v40, 0x1

    .line 1539
    .local v40, "reportStatus":Z
    :goto_e
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    const/16 v22, 0x1

    .line 1540
    .local v22, "doGc":Z
    :goto_f
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v2, :cond_34

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportStatus="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", doGc = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_34
    if-eqz v22, :cond_35

    .line 1543
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 1545
    :cond_35
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_37

    .line 1547
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/Set;

    .line 1548
    .local v18, "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v2, :cond_36

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Unloading all containers"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap36(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    .line 1552
    .end local v18    # "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_37
    if-eqz v40, :cond_0

    .line 1554
    :try_start_7
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v2, :cond_38

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Invoking MountService call back"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_38
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1556
    :catch_1
    move-exception v23

    .line 1557
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "MountService not running?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1538
    .end local v22    # "doGc":Z
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v40    # "reportStatus":Z
    :cond_39
    const/16 v40, 0x0

    .restart local v40    # "reportStatus":Z
    goto/16 :goto_e

    .line 1539
    :cond_3a
    const/16 v22, 0x0

    .restart local v22    # "doGc":Z
    goto/16 :goto_f

    .line 1562
    .end local v22    # "doGc":Z
    .end local v40    # "reportStatus":Z
    :pswitch_b
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1564
    const/16 v2, 0xd

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1565
    const/16 v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get7(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit v3

    .line 1569
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1563
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1572
    :pswitch_c
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1574
    const/16 v2, 0xe

    :try_start_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get7(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .local v53, "userId$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v52

    .line 1576
    .restart local v52    # "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v0, v52

    invoke-virtual {v2, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_10

    .line 1573
    .end local v52    # "userId":I
    .end local v53    # "userId$iterator":Ljava/util/Iterator;
    :catchall_5
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1578
    .restart local v53    # "userId$iterator":Ljava/util/Iterator;
    :cond_3b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get7(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    monitor-exit v3

    .line 1580
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1583
    .end local v53    # "userId$iterator":Ljava/util/Iterator;
    :pswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v55, v0

    .line 1584
    .local v55, "verificationId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/pm/PackageVerificationState;

    .line 1586
    .local v47, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v47, :cond_0

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1587
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v17

    .line 1588
    .restart local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v33

    .line 1590
    .local v33, "originUri":Landroid/net/Uri;
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Verification timed out for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1593
    const/16 v44, -0x16

    .line 1595
    .local v44, "ret":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap12(Lcom/android/server/pm/PackageManagerService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3c

    .line 1596
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Continuing with installation of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1598
    const/4 v3, 0x2

    .line 1597
    move-object/from16 v0, v47

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1601
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 1600
    const/4 v6, 0x1

    .line 1599
    move/from16 v0, v55

    move-object/from16 v1, v33

    invoke-static {v2, v0, v1, v6, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1603
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    move-result v44

    .line 1613
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-static {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap29(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1604
    :catch_2
    move-exception v23

    .line 1605
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Could not contact the ContainerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1608
    .end local v23    # "e":Landroid/os/RemoteException;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1610
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 1609
    const/4 v6, -0x1

    .line 1608
    move/from16 v0, v55

    move-object/from16 v1, v33

    invoke-static {v2, v0, v1, v6, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_11

    .line 1619
    .end local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v33    # "originUri":Landroid/net/Uri;
    .end local v44    # "ret":I
    .end local v47    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v55    # "verificationId":I
    :pswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v55, v0

    .line 1621
    .restart local v55    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/pm/PackageVerificationState;

    .line 1622
    .restart local v47    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v47, :cond_3d

    .line 1623
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid verification token "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " received"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1627
    :cond_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1629
    .local v43, "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v43

    iget v2, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v47

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1631
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1634
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v17

    .line 1635
    .restart local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v33

    .line 1638
    .restart local v33    # "originUri":Landroid/net/Uri;
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1639
    const/16 v44, -0x6e

    .line 1640
    .restart local v44    # "ret":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1641
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 1640
    move/from16 v0, v55

    move-object/from16 v1, v33

    invoke-static {v2, v0, v1, v3, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1643
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    move-result v44

    .line 1651
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-static {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap29(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1644
    :catch_3
    move-exception v23

    .line 1645
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Could not contact the ContainerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1648
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v44    # "ret":I
    :cond_3e
    const/16 v44, -0x16

    .restart local v44    # "ret":I
    goto :goto_12

    .line 1659
    .end local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v33    # "originUri":Landroid/net/Uri;
    .end local v43    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v44    # "ret":I
    .end local v47    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v55    # "verificationId":I
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    .line 1660
    .local v37, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    move-object/from16 v0, v37

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    .line 1661
    move-object/from16 v0, v37

    iget-boolean v7, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 1660
    invoke-static {v2, v3, v6, v7, v9}, Lcom/android/server/pm/PackageManagerService;->-wrap39(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    goto/16 :goto_0

    .line 1665
    .end local v37    # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v55, v0

    .line 1667
    .restart local v55    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    move/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1669
    .local v46, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v46, :cond_3f

    .line 1670
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid IntentFilter verification token "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1671
    const-string/jumbo v6, " received"

    .line 1670
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1675
    :cond_3f
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v52

    .line 1677
    .restart local v52    # "userId":I
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_40

    const-string/jumbo v2, "PackageManager"

    .line 1678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Processing IntentFilter verification with token:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1679
    const-string/jumbo v6, " and userId:"

    .line 1678
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1677
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_40
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/server/pm/IntentFilterVerificationResponse;

    .line 1684
    .local v42, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    move-object/from16 v0, v42

    iget v2, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    .line 1686
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_41

    const-string/jumbo v2, "PackageManager"

    .line 1687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IntentFilter verification with token:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1688
    const-string/jumbo v6, " and userId:"

    .line 1687
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1689
    const-string/jumbo v6, " is settings verifier response with response code:"

    .line 1687
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1690
    move-object/from16 v0, v42

    iget v6, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    .line 1687
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1686
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_41
    move-object/from16 v0, v42

    iget v2, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_42

    .line 1693
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_42

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Domains failing verification: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1694
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/pm/IntentFilterVerificationResponse;->getFailedDomainsString()Ljava/lang/String;

    move-result-object v6

    .line 1693
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_42
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get8(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v2

    move/from16 v0, v55

    invoke-interface {v2, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_0

    .line 1700
    :cond_43
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PackageManager"

    .line 1701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IntentFilter verification with token:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1702
    const-string/jumbo v6, " was not said to be complete"

    .line 1701
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1700
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_3
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xa

    .line 1196
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1194
    return-void

    .line 1197
    :catchall_0
    move-exception v0

    .line 1198
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1197
    throw v0
.end method