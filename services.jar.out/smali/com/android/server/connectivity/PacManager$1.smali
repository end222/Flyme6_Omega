.class Lcom/android/server/connectivity/PacManager$1;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 102
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-get4(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 103
    :try_start_0
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v5}, Lcom/android/server/connectivity/PacManager;->-get3(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v4

    return-void

    .line 105
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-get3(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-wrap1(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    monitor-exit v4

    .line 111
    if-eqz v1, :cond_2

    .line 112
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-get4(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 113
    :try_start_2
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-get0(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3, v1}, Lcom/android/server/connectivity/PacManager;->-wrap0(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v4

    .line 118
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/connectivity/PacManager;->-set0(Lcom/android/server/connectivity/PacManager;Z)Z

    .line 121
    const-wide/16 v4, 0x7d0

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 126
    :goto_1
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-wrap4(Lcom/android/server/connectivity/PacManager;)V

    .line 127
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-wrap2(Lcom/android/server/connectivity/PacManager;)V

    .line 100
    :goto_2
    return-void

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 108
    .local v1, "file":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v3, "PacManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to load PAC file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 102
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 112
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 122
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-wrap3(Lcom/android/server/connectivity/PacManager;)V

    goto :goto_2
.end method
