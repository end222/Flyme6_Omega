.class public Landroid/text/TextUtils$PackedIntVectorForTest;
.super Landroid/text/PackedIntVector;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackedIntVectorForTest"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "columns"    # I

    .prologue
    .line 1867
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;-><init>(I)V

    .line 1866
    return-void
.end method


# virtual methods
.method public bridge synthetic adjustValuesBelow(III)V
    .locals 0
    .param p1, "startRow"    # I
    .param p2, "column"    # I
    .param p3, "delta"    # I

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    return-void
.end method

.method public bridge synthetic deleteAt(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "count"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/text/PackedIntVector;->deleteAt(II)V

    return-void
.end method

.method public bridge synthetic getValue(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic insertAt(I[I)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "values"    # [I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    return-void
.end method

.method public bridge synthetic setValue(III)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/text/PackedIntVector;->setValue(III)V

    return-void
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic width()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v0

    return v0
.end method
