.class Landroid/widget/Editor$SelectionEndHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 4332
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    .line 4333
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4319
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    .line 4325
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    .line 4330
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    .line 4335
    invoke-static {p1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4334
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 4336
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    .line 4332
    return-void
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 4511
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 4512
    .local v0, "selectionStart":I
    if-gt p1, v0, :cond_0

    .line 4514
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->-wrap12(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 4515
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4517
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/widget/Editor$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 4510
    return-void
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4539
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4541
    if-eqz p2, :cond_1

    .line 4542
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int v0, v3, v4

    .line 4543
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const/4 v1, 0x1

    .line 4549
    .end local v0    # "leftEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    .line 4543
    .end local v1    # "nearEdge":Z
    .restart local v0    # "leftEdge":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .line 4545
    .end local v0    # "leftEdge":I
    .end local v1    # "nearEdge":Z
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 4546
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 4545
    sub-int v2, v3, v4

    .line 4547
    .local v2, "rightEdge":I
    int-to-float v3, v2

    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    const/4 v1, 0x1

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .end local v1    # "nearEdge":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 4355
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4350
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4341
    if-eqz p2, :cond_0

    .line 4342
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 4344
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4528
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4529
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 4532
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4533
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    .line 4535
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 4522
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4523
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap1(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    .line 4521
    return-void

    .line 4523
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 24
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 4371
    .local v11, "layout":Landroid/text/Layout;
    if-nez v11, :cond_0

    .line 4374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4375
    return-void

    .line 4378
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 4379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    .line 4382
    :cond_1
    const/4 v15, 0x0

    .line 4383
    .local v15, "positionCursor":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    .line 4384
    .local v18, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p2

    invoke-static {v0, v11, v1, v2}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v6

    .line 4385
    .local v6, "currLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4387
    .local v8, "initialOffset":I
    move/from16 v0, v18

    if-gt v8, v0, :cond_2

    .line 4390
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 4391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4394
    :cond_2
    move v13, v8

    .line 4395
    .local v13, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;I)I

    move-result v7

    .line 4396
    .local v7, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;I)I

    move-result v19

    .line 4398
    .local v19, "start":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    move/from16 v22, v0

    const/high16 v23, -0x40800000    # -1.0f

    cmpl-float v22, v22, v23

    if-nez v22, :cond_3

    .line 4399
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    .line 4402
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    .line 4403
    .local v16, "selectionEnd":I
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v17

    .line 4404
    .local v17, "selectionEndRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    .line 4405
    .local v5, "atRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    .line 4411
    .local v10, "isLvlBoundary":Z
    if-nez v10, :cond_5

    if-eqz v17, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    if-nez v17, :cond_6

    if-eqz v5, :cond_6

    .line 4414
    :cond_5
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    .line 4415
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4416
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4417
    return-void

    .line 4418
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    if-eqz v10, :cond_a

    .line 4426
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    move/from16 v22, v0

    sub-float v21, p1, v22

    .line 4427
    .local v21, "xDiff":F
    if-eqz v5, :cond_c

    .line 4428
    const/16 v22, 0x0

    cmpg-float v22, v21, v22

    if-ltz v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_b

    :cond_8
    const/4 v9, 0x1

    .line 4434
    .local v9, "isExpanding":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 4435
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/widget/Editor$SelectionEndHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 4436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    if-eqz v5, :cond_f

    const/16 v22, -0x1

    :goto_1
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v22

    .line 4435
    if-eqz v22, :cond_11

    .line 4437
    if-eqz v9, :cond_10

    move/from16 v0, v16

    if-le v13, v0, :cond_10

    .line 4441
    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4442
    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v12

    .line 4444
    .local v12, "nextOffset":I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4445
    return-void

    .line 4421
    .end local v9    # "isExpanding":Z
    .end local v12    # "nextOffset":I
    .end local v21    # "xDiff":F
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4422
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4423
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    .line 4424
    return-void

    .line 4428
    .restart local v21    # "xDiff":F
    :cond_b
    const/4 v9, 0x0

    .restart local v9    # "isExpanding":Z
    goto :goto_0

    .line 4430
    .end local v9    # "isExpanding":Z
    :cond_c
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-gtz v22, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_e

    :cond_d
    const/4 v9, 0x1

    .restart local v9    # "isExpanding":Z
    goto :goto_0

    .end local v9    # "isExpanding":Z
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "isExpanding":Z
    goto :goto_0

    .line 4436
    :cond_f
    const/16 v22, 0x1

    goto :goto_1

    .line 4437
    :cond_10
    if-eqz v9, :cond_9

    .line 4449
    :cond_11
    if-eqz v9, :cond_1b

    .line 4451
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_15

    .line 4455
    :cond_12
    move/from16 v20, v7

    .line 4456
    .local v20, "wordEndOnCurrLine":I
    if-eqz v11, :cond_13

    invoke-virtual {v11, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v22

    move/from16 v0, v22

    if-eq v0, v6, :cond_13

    .line 4457
    invoke-virtual {v11, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v20

    .line 4459
    :cond_13
    sub-int v22, v20, v19

    div-int/lit8 v22, v22, 0x2

    add-int v14, v19, v22

    .line 4460
    .local v14, "offsetThresholdToSnap":I
    if-ge v13, v14, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_19

    .line 4463
    :cond_14
    move v13, v7

    .line 4468
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordEndOnCurrLine":I
    :cond_15
    :goto_3
    if-le v13, v8, :cond_1a

    .line 4469
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4471
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    sub-float v22, v4, v22

    .line 4470
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4475
    .end local v4    # "adjustedX":F
    :goto_4
    const/4 v15, 0x1

    .line 4503
    :cond_16
    :goto_5
    if-eqz v15, :cond_17

    .line 4504
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    .line 4505
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4507
    :cond_17
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    .line 4369
    return-void

    .line 4443
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v12

    .restart local v12    # "nextOffset":I
    goto/16 :goto_2

    .line 4465
    .end local v12    # "nextOffset":I
    .restart local v14    # "offsetThresholdToSnap":I
    .restart local v20    # "wordEndOnCurrLine":I
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    goto :goto_3

    .line 4473
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordEndOnCurrLine":I
    :cond_1a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    goto :goto_4

    .line 4478
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    move/from16 v23, v0

    add-float v23, v23, p1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v3

    .line 4479
    .local v3, "adjustedOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v3, v0, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_1f

    .line 4481
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_1e

    .line 4483
    move v13, v7

    .line 4484
    if-le v13, v8, :cond_1d

    .line 4485
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4487
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    sub-float v22, v4, v22

    .line 4486
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4494
    .end local v4    # "adjustedX":F
    :goto_6
    const/4 v15, 0x1

    .line 4479
    goto/16 :goto_5

    .line 4489
    :cond_1d
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    goto :goto_6

    .line 4492
    :cond_1e
    move v13, v3

    goto :goto_6

    .line 4495
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v3, v0, :cond_16

    .line 4498
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v22

    .line 4499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v23

    .line 4498
    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    goto/16 :goto_5
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 4360
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 4361
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 4360
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4362
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 4363
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4365
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    .line 4359
    return-void
.end method
