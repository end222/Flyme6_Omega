.class final Lcom/mediatek/drm/OmaDrmUiUtils$9;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/drm/OmaDrmUiUtils;->showSecureTimerInvalidDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;


# direct methods
.method constructor <init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V
    .locals 0
    .param p1, "val$listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$9;->val$listener:Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 908
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$9;->val$listener:Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    if-eqz v0, :cond_0

    .line 909
    const-string/jumbo v0, "OmaDrmUiUtils"

    const-string/jumbo v1, "showSecureTimerInvalid : DrmOperationListener STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$9;->val$listener:Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;->onOperated(I)V

    .line 907
    :cond_0
    return-void
.end method
