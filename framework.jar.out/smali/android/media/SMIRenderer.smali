.class public Landroid/media/SMIRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "SMIRenderer.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mRender:Z

.field private mRenderingWidget:Landroid/media/WebVttRenderingWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/SMIRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 31
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mEventHandler"    # Landroid/os/Handler;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/media/SMIRenderer;->mContext:Landroid/content/Context;

    .line 37
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/media/SMIRenderer;->mRender:Z

    .line 38
    iput-object p2, p0, Landroid/media/SMIRenderer;->mEventHandler:Landroid/os/Handler;

    .line 35
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/media/SMIRenderer;->mRender:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/SMIRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/media/WebVttRenderingWidget;

    iget-object v1, p0, Landroid/media/SMIRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/SMIRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 59
    :cond_0
    iget-boolean v0, p0, Landroid/media/SMIRenderer;->mRender:Z

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Landroid/media/SMITrack;

    iget-object v1, p0, Landroid/media/SMIRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    invoke-direct {v0, v1, p1}, Landroid/media/SMITrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Landroid/media/SMITrack;

    iget-object v1, p0, Landroid/media/SMIRenderer;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Landroid/media/SMITrack;-><init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V

    return-object v0
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    const-string/jumbo v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    const-string/jumbo v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string/jumbo v3, "application/x-subtitle-smi"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    return v1

    .line 48
    :cond_0
    iget-boolean v3, p0, Landroid/media/SMIRenderer;->mRender:Z

    const-string/jumbo v2, "is-timed-text"

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-ne v3, v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 50
    :cond_3
    return v1
.end method
