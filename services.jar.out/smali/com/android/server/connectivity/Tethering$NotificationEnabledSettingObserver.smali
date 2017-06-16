.class Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 633
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 632
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 644
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap12(Lcom/android/server/connectivity/Tethering;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 643
    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 639
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "interface_throttle_enable"

    .line 638
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 639
    const/4 v2, 0x0

    .line 638
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 636
    return-void
.end method
