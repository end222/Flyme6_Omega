.class Landroid/widget/StackView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutParams"
.end annotation


# instance fields
.field private final globalInvalidateRect:Landroid/graphics/Rect;

.field horizontalOffset:I

.field private final invalidateRect:Landroid/graphics/Rect;

.field private final invalidateRectf:Landroid/graphics/RectF;

.field mView:Landroid/view/View;

.field private final parentRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/StackView;

.field verticalOffset:I


# direct methods
.method constructor <init>(Landroid/widget/StackView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/StackView;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 1381
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 1382
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1367
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1368
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1369
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1370
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1383
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1384
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1385
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1386
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->height:I

    .line 1381
    return-void
.end method

.method constructor <init>(Landroid/widget/StackView;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/StackView;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1372
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 1373
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1367
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1368
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1369
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1370
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1374
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1375
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->height:I

    .line 1376
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1377
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1378
    iput-object p2, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 1372
    return-void
.end method


# virtual methods
.method getInvalidateRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 1391
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1392
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    invoke-virtual {v4}, Landroid/widget/StackView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    invoke-virtual {v5}, Landroid/widget/StackView;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1393
    move-object v1, p1

    .line 1394
    .local v1, "p":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    .line 1396
    :cond_1
    const/4 v0, 0x1

    .line 1397
    .local v0, "firstPass":Z
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1398
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1399
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1412
    :cond_2
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 1413
    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 1412
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 1389
    return-void

    .line 1400
    :cond_3
    if-nez v0, :cond_4

    .line 1401
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1402
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 1401
    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1404
    :cond_4
    const/4 v0, 0x0

    .line 1405
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1    # "p":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 1406
    .restart local v1    # "p":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1407
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    .line 1406
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1408
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 1409
    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 1408
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1
.end method

.method resetInvalidateRect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1421
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1420
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "newHorizontalOffset"    # I

    .prologue
    .line 1430
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    .line 1429
    return-void
.end method

.method public setOffsets(II)V
    .locals 16
    .param p1, "newHorizontalOffset"    # I
    .param p2, "newVerticalOffset"    # I

    .prologue
    .line 1434
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    sub-int v3, p1, v10

    .line 1435
    .local v3, "horizontalOffsetDelta":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1436
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    sub-int v7, p2, v10

    .line 1437
    .local v7, "verticalOffsetDelta":I
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1439
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 1440
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 1441
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    add-int/2addr v10, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1442
    .local v4, "left":I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1443
    .local v5, "right":I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    add-int/2addr v10, v7

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1444
    .local v6, "top":I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v10, v7

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1446
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    int-to-float v11, v4

    int-to-float v12, v6

    int-to-float v13, v5

    int-to-float v14, v2

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    neg-float v8, v10

    .line 1449
    .local v8, "xoffset":F
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    neg-float v9, v10

    .line 1450
    .local v9, "yoffset":F
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v10, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1452
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    neg-float v11, v8

    neg-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    .line 1455
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    .line 1456
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    .line 1457
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 1454
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/widget/StackView$LayoutParams;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1433
    .end local v2    # "bottom":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    .end local v8    # "xoffset":F
    .end local v9    # "yoffset":F
    :cond_0
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "newVerticalOffset"    # I

    .prologue
    .line 1426
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    .line 1425
    return-void
.end method
