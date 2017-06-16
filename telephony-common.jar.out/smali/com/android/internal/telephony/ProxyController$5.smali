.class Lcom/android/internal/telephony/ProxyController$5;
.super Landroid/content/BroadcastReceiver;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ProxyController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController$5;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$5;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEccStateReceiver, received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ProxyController;->-wrap1(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 1137
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$5;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v1}, Lcom/android/internal/telephony/ProxyController;->-wrap0(Lcom/android/internal/telephony/ProxyController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1138
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$5;->this$0:Lcom/android/internal/telephony/ProxyController;

    iget-object v1, v1, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$5;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v1}, Lcom/android/internal/telephony/ProxyController;->-get0(Lcom/android/internal/telephony/ProxyController;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1140
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$5;->this$0:Lcom/android/internal/telephony/ProxyController;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$5;->this$0:Lcom/android/internal/telephony/ProxyController;

    iget-object v2, v2, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$5;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v1}, Lcom/android/internal/telephony/ProxyController;->-wrap7(Lcom/android/internal/telephony/ProxyController;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$5;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v1}, Lcom/android/internal/telephony/ProxyController;->-wrap7(Lcom/android/internal/telephony/ProxyController;)V

    goto :goto_0
.end method
