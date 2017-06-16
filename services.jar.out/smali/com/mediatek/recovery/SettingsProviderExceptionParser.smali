.class public Lcom/mediatek/recovery/SettingsProviderExceptionParser;
.super Lcom/mediatek/recovery/AbstractExceptionParser;
.source "SettingsProviderExceptionParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsProviderExceptionParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mediatek/recovery/AbstractExceptionParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseException(Ljava/lang/RuntimeException;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "e"    # Ljava/lang/RuntimeException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/RuntimeException;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 11
    const-string/jumbo v3, "SettingsProviderExceptionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start parseException e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 12
    invoke-static {p1, v3}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    move-result-object v0

    .line 16
    .local v0, "pe":Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 15
    invoke-static {p1, v3}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    move-result-object v2

    .line 17
    .local v2, "rpe":Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v1, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "SettingsProviderExceptionParser"

    const-string/jumbo v4, "parseException setLastError(PARSER_EXCEPTION_MISMATCH)"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0, v7}, Lcom/mediatek/recovery/SettingsProviderExceptionParser;->setLastError(I)V

    .line 20
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 21
    :cond_0
    const-string/jumbo v3, "SettingsProviderExceptionParser"

    const-string/jumbo v4, "The exception backtrace is null, stop handle progress"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-object v1

    .line 24
    :cond_1
    const-string/jumbo v3, "SettingsProviderExceptionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rpe.mThrowMethodName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string/jumbo v3, "SettingsProviderExceptionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rpe.mExceptionClassName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string/jumbo v3, "SettingsProviderExceptionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pe.mThrowClassName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string/jumbo v3, "next"

    iget-object v4, v2, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    const-string/jumbo v3, "org.xmlpull.v1.XmlPullParserException"

    iget-object v4, v2, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 29
    const-string/jumbo v3, "com.android.providers.settings.SettingsState"

    iget-object v4, v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 30
    const-string/jumbo v3, "/data/system/users/0/settings_global.xml"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const-string/jumbo v3, "SettingsProviderExceptionParser"

    const-string/jumbo v4, "add /data/system/users/0/settings_global.xml"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0, v6}, Lcom/mediatek/recovery/SettingsProviderExceptionParser;->setLastError(I)V

    .line 34
    :cond_2
    const-string/jumbo v3, "SettingsProviderExceptionParser"

    const-string/jumbo v4, "parseException end"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-object v1
.end method
