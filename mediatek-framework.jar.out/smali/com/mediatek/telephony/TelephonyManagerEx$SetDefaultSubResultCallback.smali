.class public Lcom/mediatek/telephony/TelephonyManagerEx$SetDefaultSubResultCallback;
.super Lcom/mediatek/internal/telephony/ISetDefaultSubResultCallback$Stub;
.source "TelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/TelephonyManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetDefaultSubResultCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1733
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ISetDefaultSubResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 1736
    const-string/jumbo v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onComplete: NOT OVERRIDDEN, result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    return-void
.end method
