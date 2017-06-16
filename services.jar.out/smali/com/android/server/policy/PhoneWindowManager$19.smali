.class Lcom/android/server/policy/PhoneWindowManager$19;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 7420
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7422
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7424
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "mStkUserActivityEnReceiver -- onReceive -- entry"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7426
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-get4(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 7427
    :try_start_0
    const-string/jumbo v2, "android.intent.action.stk.USER_ACTIVITY.enable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7428
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_0

    .line 7429
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "Receive STK_ENABLE"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7431
    :cond_0
    const-string/jumbo v2, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 7432
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mIsStkUserActivityEnabled:Z

    if-eq v1, v2, :cond_1

    .line 7433
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mIsStkUserActivityEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "enabled":Z
    :cond_1
    :goto_0
    monitor-exit v3

    .line 7441
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_2

    .line 7442
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStkUserActivityEnReceiver -- onReceive -- exist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7443
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mIsStkUserActivityEnabled:Z

    .line 7442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7421
    :cond_2
    return-void

    .line 7436
    :cond_3
    :try_start_1
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_1

    .line 7437
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "Receive Fake Intent"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7426
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
