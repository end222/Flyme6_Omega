.class Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$1;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .prologue
    .line 939
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$1;->this$1:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 941
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->isAllRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 943
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->resetRadioForVsim()V

    .line 945
    const-string/jumbo v0, "ExternalSimManager"

    const-string/jumbo v1, "mTryResetModemRunnable reset modem done."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :goto_0
    return-void

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$1;->this$1:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$1;->this$1:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    invoke-static {v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->-get0(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
