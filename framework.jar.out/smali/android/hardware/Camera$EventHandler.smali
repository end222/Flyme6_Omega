.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/Camera;
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1229
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1230
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1231
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1238
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "handleMessage: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 1596
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unknown message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    return-void

    .line 1242
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get28(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get28(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    .line 1245
    :cond_0
    return-void

    .line 1248
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get27(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get27(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1251
    :cond_1
    return-void

    .line 1254
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_2

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1257
    :cond_2
    return-void

    .line 1260
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get23(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v16

    .line 1261
    .local v16, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v16, :cond_4

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get21(Landroid/hardware/Camera;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/hardware/Camera;->-set0(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1273
    :cond_3
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 1275
    :cond_4
    return-void

    .line 1267
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get33(Landroid/hardware/Camera;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/hardware/Camera;->-wrap0(Landroid/hardware/Camera;ZZ)V

    goto :goto_0

    .line 1278
    .end local v16    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get22(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_6

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get22(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1281
    :cond_6
    return-void

    .line 1284
    :sswitch_5
    const/4 v7, 0x0

    .line 1285
    .local v7, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get3(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 1286
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get2(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .local v7, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    monitor-exit v26

    .line 1288
    if-eqz v7, :cond_7

    .line 1289
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    if-nez v25, :cond_8

    const/16 v19, 0x0

    .line 1290
    .local v19, "success":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    move/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v7, v0, v1}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 1292
    .end local v19    # "success":Z
    :cond_7
    return-void

    .line 1285
    .local v7, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :catchall_0
    move-exception v25

    monitor-exit v26

    throw v25

    .line 1289
    .local v7, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :cond_8
    const/16 v19, 0x1

    .restart local v19    # "success":Z
    goto :goto_1

    .line 1295
    .end local v7    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    .end local v19    # "success":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get34(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v25

    if-eqz v25, :cond_9

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get34(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    if-eqz v25, :cond_a

    const/16 v25, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    .line 1298
    :cond_9
    return-void

    .line 1296
    :cond_a
    const/16 v25, 0x0

    goto :goto_2

    .line 1301
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get11(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v25

    if-eqz v25, :cond_b

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get11(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 1304
    :cond_b
    return-void

    .line 1307
    :sswitch_8
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Error "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v25

    if-eqz v25, :cond_c

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    .line 1311
    :cond_c
    return-void

    .line 1314
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v25

    if-eqz v25, :cond_d

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    if-nez v25, :cond_e

    const/16 v25, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    .line 1317
    :cond_d
    return-void

    .line 1315
    :cond_e
    const/16 v25, 0x1

    goto :goto_3

    .line 1320
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 1414
    :cond_f
    :goto_4
    :pswitch_0
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unknown MTK-extended notify message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_10
    :goto_5
    return-void

    .line 1323
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get29(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get29(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$SmileCallback;->onSmile()V

    goto :goto_5

    .line 1329
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get13(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get13(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$GestureCallback;->onGesture()V

    goto :goto_5

    .line 1335
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get1(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get1(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$AsdCallback;->onDetected(I)V

    goto :goto_5

    .line 1340
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 1341
    new-instance v18, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct/range {v18 .. v18}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 1342
    .local v18, "result_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v9, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 1343
    .local v9, "characteristic_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/hardware/Camera;->getMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1345
    new-instance v17, Landroid/hardware/camera2/CaptureResult;

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    .line 1346
    .local v17, "result":Landroid/hardware/camera2/CaptureResult;
    new-instance v8, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1348
    .local v8, "characteristic":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get16(Landroid/hardware/Camera;)Landroid/hardware/Camera$MetadataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v8}, Landroid/hardware/Camera$MetadataCallback;->onMetadataReceived(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto/16 :goto_5

    .line 1353
    .end local v8    # "characteristic":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v9    # "characteristic_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v17    # "result":Landroid/hardware/camera2/CaptureResult;
    .end local v18    # "result_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$ContinuousShotCallback;->onConinuousShotDone(I)V

    goto/16 :goto_5

    .line 1358
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get24(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get24(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$ZSDPreviewDone;->onPreviewDone()V

    goto/16 :goto_5

    .line 1363
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get31(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1364
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 1370
    .local v15, "message":I
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 1371
    .local v20, "type":[I
    const/16 v21, -0x1

    .line 1372
    .local v21, "warnType":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v11, v0, :cond_11

    .line 1373
    and-int/lit8 v25, v15, 0x1

    aput v25, v20, v11

    .line 1374
    shr-int/lit8 v15, v15, 0x1

    .line 1372
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1377
    :cond_11
    const/16 v25, 0x0

    aget v25, v20, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    .line 1378
    const/16 v21, 0x0

    .line 1386
    :goto_7
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    .line 1387
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Stereo Camera warning message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get31(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/hardware/Camera$StereoCameraWarningCallback;->onWarning(I)V

    goto/16 :goto_5

    .line 1379
    :cond_12
    const/16 v25, 0x2

    aget v25, v20, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 1380
    const/16 v21, 0x2

    goto :goto_7

    .line 1381
    :cond_13
    const/16 v25, 0x1

    aget v25, v20, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 1382
    const/16 v21, 0x1

    goto :goto_7

    .line 1384
    :cond_14
    const/16 v21, 0x3

    goto :goto_7

    .line 1394
    .end local v11    # "i":I
    .end local v15    # "message":I
    .end local v20    # "type":[I
    .end local v21    # "warnType":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1395
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1396
    .local v12, "info":Ljava/lang/String;
    if-eqz v12, :cond_10

    .line 1397
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Distance info: Info = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/hardware/Camera$DistanceInfoCallback;->onInfo(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1403
    .end local v12    # "info":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get32(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get32(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_5

    .line 1409
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get25(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v25

    if-eqz v25, :cond_f

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get25(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v25

    const/16 v26, 0x12

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$PreviewRawDumpCallback;->onNotify(I)V

    goto/16 :goto_4

    .line 1420
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_1

    .line 1590
    :pswitch_b
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unknown MTK-extended data message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_15
    :goto_8
    return-void

    .line 1424
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1425
    .local v5, "byteArray":[B
    const/16 v25, 0x10

    move/from16 v0, v25

    new-array v6, v0, [B

    .line 1426
    .local v6, "byteHead":[B
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1427
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_AUTORAMA: byteArray.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v5

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    .line 1430
    .local v13, "intBuf":Ljava/nio/IntBuffer;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v25

    if-nez v25, :cond_17

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;

    move-result-object v25

    if-eqz v25, :cond_16

    .line 1432
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v22

    .line 1433
    .local v22, "x":I
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v24

    .line 1434
    .local v24, "y":I
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    .line 1435
    .local v10, "dir":I
    const v25, 0xffff

    and-int v25, v25, v22

    shl-int/lit8 v25, v25, 0x10

    const v26, 0xffff

    and-int v26, v26, v24

    add-int v23, v25, v26

    .line 1436
    .local v23, "xy":I
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "call mAutoRamaMoveCallback: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " dir:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " x:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " y:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " xy:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v0, v1, v10}, Landroid/hardware/Camera$AutoRamaMoveCallback;->onFrame(II)V

    .line 1454
    .end local v10    # "dir":I
    .end local v22    # "x":I
    .end local v23    # "xy":I
    .end local v24    # "y":I
    :cond_16
    :goto_9
    const/4 v6, 0x0

    .local v6, "byteHead":[B
    goto/16 :goto_8

    .line 1440
    .local v6, "byteHead":[B
    :cond_17
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "call mAutoRamaCallback: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v25

    if-eqz v25, :cond_16

    .line 1442
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 1443
    const-string/jumbo v25, "CameraFramework"

    const-string/jumbo v26, "capturing frame"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$AutoRamaCallback;->onCapture([B)V

    goto :goto_9

    .line 1445
    :cond_18
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 1446
    const-string/jumbo v25, "CameraFramework"

    const-string/jumbo v26, "image is merged over"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1448
    .local v14, "jpegData":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$AutoRamaCallback;->onCapture([B)V

    goto/16 :goto_9

    .line 1460
    .end local v5    # "byteArray":[B
    .end local v6    # "byteHead":[B
    .end local v13    # "intBuf":Ljava/nio/IntBuffer;
    .end local v14    # "jpegData":[B
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1462
    .restart local v5    # "byteArray":[B
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_AF: byteArray.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v5

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v4

    .line 1473
    .local v4, "afDatacb":Landroid/hardware/Camera$AFDataCallback;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v4, v0, v1}, Landroid/hardware/Camera$AFDataCallback;->onAFData([BLandroid/hardware/Camera;)V

    goto/16 :goto_8

    .line 1478
    .end local v4    # "afDatacb":Landroid/hardware/Camera$AFDataCallback;
    .end local v5    # "byteArray":[B
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1480
    .restart local v5    # "byteArray":[B
    const-string/jumbo v25, "CameraFramework"

    .line 1481
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_OT: byteArray.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1482
    array-length v0, v5

    move/from16 v27, v0

    .line 1481
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1480
    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v25

    .line 1485
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v26

    .line 1484
    invoke-virtual/range {v25 .. v26}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    .line 1486
    .restart local v13    # "intBuf":Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get17(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 1487
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v25

    if-eqz v25, :cond_19

    .line 1488
    const-string/jumbo v25, "CameraFramework"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "OT callback0:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x4

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get18(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get18(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v25

    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/hardware/Camera$Face;->score:I

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->-get18(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v27

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    .line 1496
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_19
    :goto_a
    monitor-exit v26

    goto/16 :goto_8

    .line 1499
    :cond_1a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_a

    .line 1486
    :catchall_1
    move-exception v25

    monitor-exit v26

    throw v25

    .line 1507
    .end local v5    # "byteArray":[B
    .end local v13    # "intBuf":Ljava/nio/IntBuffer;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get14(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1508
    const-string/jumbo v25, "CameraFramework"

    const-string/jumbo v26, "HDR Original callback"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1510
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1511
    .restart local v14    # "jpegData":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get14(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$HdrOriginalCallback;->onCapture([B)V

    goto/16 :goto_8

    .line 1516
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1517
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1518
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1519
    .restart local v14    # "jpegData":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1520
    const-string/jumbo v26, "CameraFramework"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "FB Original callback, VFB enable : "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1521
    const-string/jumbo v25, "ro.mtk_cam_vfb"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1b

    const/16 v25, 0x1

    .line 1520
    :goto_b
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const-string/jumbo v25, "ro.mtk_cam_vfb"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_1c

    .line 1524
    const-string/jumbo v25, "CameraFramework"

    .line 1525
    const-string/jumbo v26, "FB Original callback,will call mJpegCallback.onPictureTaken"

    .line 1524
    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v14, v1}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_8

    .line 1521
    :cond_1b
    const/16 v25, 0x0

    goto :goto_b

    .line 1528
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$FbOriginalCallback;->onCapture([B)V

    goto/16 :goto_8

    .line 1533
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1534
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1535
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1536
    .restart local v14    # "jpegData":[B
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_JPS: jpegData.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v14

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$StereoCameraDataCallback;->onJpsCapture([B)V

    goto/16 :goto_8

    .line 1543
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1544
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1545
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1546
    .restart local v14    # "jpegData":[B
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_STEREO_DBG: jpegData.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v14

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$StereoCameraDataCallback;->onMaskCapture([B)V

    goto/16 :goto_8

    .line 1552
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1553
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1554
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1555
    .restart local v14    # "jpegData":[B
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_STEREO_DEPTHMAP: jpegData.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1556
    array-length v0, v14

    move/from16 v27, v0

    .line 1555
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$StereoCameraDataCallback;->onDepthMapCapture([B)V

    goto/16 :goto_8

    .line 1563
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1564
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1565
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1566
    .restart local v14    # "jpegData":[B
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_STEREO_CLEAR_IMAGE: jpegData.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1567
    array-length v0, v14

    move/from16 v27, v0

    .line 1566
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$StereoCameraDataCallback;->onClearImageCapture([B)V

    goto/16 :goto_8

    .line 1574
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1575
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1576
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1577
    .restart local v14    # "jpegData":[B
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_STEREO_LDC: jpegData.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1578
    array-length v0, v14

    move/from16 v27, v0

    .line 1577
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$StereoCameraDataCallback;->onLdcCapture([B)V

    goto/16 :goto_8

    .line 1585
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get26(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_8

    .line 1240
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_b
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0x40000000 -> :sswitch_a
    .end sparse-switch

    .line 1320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
    .end packed-switch

    .line 1420
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_10
        :pswitch_b
        :pswitch_f
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_16
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
