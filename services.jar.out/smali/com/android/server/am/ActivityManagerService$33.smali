.class Lcom/android/server/am/ActivityManagerService$33;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->updateWallpaperState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$isFg:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$isFg"    # Z

    .prologue
    .line 23451
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerService$33;->val$isFg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 23453
    monitor-enter p0

    .line 23454
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$33;->val$isFg:Z

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mIsWallpaperFg:Z

    .line 23455
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWallpaperProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mIsWallpaperFg:Z

    if-eqz v0, :cond_0

    .line 23456
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWallpaperProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 23452
    return-void

    .line 23453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
