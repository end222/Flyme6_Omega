.class Landroid/drm/DrmManagerClient$InfoHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoHandler"
.end annotation


# static fields
.field public static final INFO_EVENT_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/drm/DrmManagerClient;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 201
    iput-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 202
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 201
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, "info":Landroid/drm/DrmInfoEvent;
    const/4 v1, 0x0

    .line 209
    .local v1, "error":Landroid/drm/DrmErrorEvent;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 249
    const-string/jumbo v6, "DrmManagerClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown message type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 211
    :pswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 212
    .local v5, "uniqueId":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 213
    .local v3, "infoType":I
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "message":Ljava/lang/String;
    sparse-switch v3, :sswitch_data_0

    .line 237
    new-instance v1, Landroid/drm/DrmErrorEvent;

    .end local v1    # "error":Landroid/drm/DrmErrorEvent;
    invoke-direct {v1, v5, v3, v4}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    .line 241
    .end local v2    # "info":Landroid/drm/DrmInfoEvent;
    :goto_0
    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get2(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 242
    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get2(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v6

    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v6, v7, v2}, Landroid/drm/DrmManagerClient$OnInfoListener;->onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V

    .line 244
    :cond_0
    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get0(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    .line 245
    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v6}, Landroid/drm/DrmManagerClient;->-get0(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v6

    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v6, v7, v1}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    .line 247
    :cond_1
    return-void

    .line 218
    .restart local v1    # "error":Landroid/drm/DrmErrorEvent;
    .restart local v2    # "info":Landroid/drm/DrmInfoEvent;
    :sswitch_0
    :try_start_0
    invoke-static {v4}, Landroid/drm/DrmUtils;->removeFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_1
    new-instance v2, Landroid/drm/DrmInfoEvent;

    .end local v2    # "info":Landroid/drm/DrmInfoEvent;
    invoke-direct {v2, v5, v3, v4}, Landroid/drm/DrmInfoEvent;-><init>(IILjava/lang/String;)V

    .local v2, "info":Landroid/drm/DrmInfoEvent;
    goto :goto_0

    .line 219
    .local v2, "info":Landroid/drm/DrmInfoEvent;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 233
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_1
    new-instance v2, Landroid/drm/DrmInfoEvent;

    .end local v2    # "info":Landroid/drm/DrmInfoEvent;
    invoke-direct {v2, v5, v3, v4}, Landroid/drm/DrmInfoEvent;-><init>(IILjava/lang/String;)V

    .line 234
    .local v2, "info":Landroid/drm/DrmInfoEvent;
    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x2711 -> :sswitch_1
    .end sparse-switch
.end method
