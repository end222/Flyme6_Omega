.class Lcom/android/server/policy/PhoneWindowManager$14;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 7325
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 7328
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 7330
    .local v4, "keyEvent":Landroid/view/KeyEvent;
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "input"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager;

    .line 7331
    .local v3, "inputManager":Landroid/hardware/input/InputManager;
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, ">>>>>>>> InjectEvent Start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7333
    const/4 v5, 0x2

    .line 7332
    invoke-virtual {v3, v4, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 7335
    :try_start_0
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "***** Sleeping."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7336
    const-wide/16 v6, 0x2710

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 7337
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "***** Waking up."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7345
    :goto_0
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "<<<<<<<< InjectEvent End"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7326
    return-void

    .line 7342
    :catch_0
    move-exception v1

    .line 7343
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "InterruptedException: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7340
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 7341
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "SecurityException: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7338
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 7339
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "IllegalArgumentException: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
