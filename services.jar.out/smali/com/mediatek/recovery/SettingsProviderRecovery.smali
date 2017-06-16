.class public Lcom/mediatek/recovery/SettingsProviderRecovery;
.super Lcom/mediatek/recovery/AbstractRecoveryMethod;
.source "SettingsProviderRecovery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsProviderRecovery"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mediatek/recovery/AbstractRecoveryMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public doRecover(Ljava/lang/Object;)I
    .locals 3
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 11
    const-string/jumbo v0, "SettingsProviderRecovery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doRecover called, path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const/4 v0, 0x0

    return v0
.end method
