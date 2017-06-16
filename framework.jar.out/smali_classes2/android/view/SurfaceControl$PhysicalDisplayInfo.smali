.class public final Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhysicalDisplayInfo"
.end annotation


# instance fields
.field public appVsyncOffsetNanos:J

.field public density:F

.field public height:I

.field public presentationDeadlineNanos:J

.field public refreshRate:F

.field public secure:Z

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .locals 0
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 504
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 532
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    .line 533
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    .line 534
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    .line 535
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    .line 536
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    .line 537
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    .line 538
    iget-boolean v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    iput-boolean v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    .line 539
    iget-wide v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    .line 540
    iget-wide v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iput-wide v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    .line 531
    return-void
.end method

.method public equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z
    .locals 6
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    const/4 v0, 0x0

    .line 514
    if-eqz p1, :cond_0

    .line 515
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    if-ne v1, v2, :cond_0

    .line 516
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    if-ne v1, v2, :cond_0

    .line 517
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 518
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 519
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 520
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 521
    iget-boolean v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    iget-boolean v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-ne v1, v2, :cond_0

    .line 522
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v4, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 523
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iget-wide v4, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 514
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 510
    instance-of v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhysicalDisplayInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fps, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    const-string/jumbo v1, "density "

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    const-string/jumbo v1, ", "

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    const-string/jumbo v1, " x "

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    const-string/jumbo v1, " dpi, secure "

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    iget-boolean v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 548
    const-string/jumbo v1, ", appVsyncOffset "

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 548
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    .line 546
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 549
    const-string/jumbo v1, ", bufferDeadline "

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 549
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    .line 546
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 549
    const-string/jumbo v1, "}"

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
