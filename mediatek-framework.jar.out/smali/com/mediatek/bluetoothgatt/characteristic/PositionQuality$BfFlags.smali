.class public Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "PositionQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfFlags"
.end annotation


# static fields
.field private static final sLength:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;
    .param p2, "value"    # [B

    .prologue
    .line 737
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    .line 738
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 739
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->setByteArray([B)V

    .line 737
    return-void
.end method


# virtual methods
.method public getEhpePresent()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 820
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEvpePresent()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 844
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getHdopPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 868
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBeaconsInSolutionPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 748
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBeaconsInViewPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 772
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getPositionStatus()I
    .locals 2

    .prologue
    .line 916
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getTimeToFirstFixPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 796
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getVdopPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 892
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x2

    return v0
.end method

.method public setEhpePresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x3

    .line 831
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    const/4 v0, 0x0

    return v0

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 835
    const/4 v0, 0x1

    return v0
.end method

.method public setEvpePresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x4

    .line 855
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    const/4 v0, 0x0

    return v0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 859
    const/4 v0, 0x1

    return v0
.end method

.method public setHdopPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x5

    .line 879
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 880
    const/4 v0, 0x0

    return v0

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 883
    const/4 v0, 0x1

    return v0
.end method

.method public setNumberOfBeaconsInSolutionPresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 759
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    return v1

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 763
    const/4 v0, 0x1

    return v0
.end method

.method public setNumberOfBeaconsInViewPresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 783
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    const/4 v0, 0x0

    return v0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 787
    return v1
.end method

.method public setPositionStatus(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 927
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    const/4 v0, 0x0

    return v0

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 931
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeToFirstFixPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 807
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    const/4 v0, 0x0

    return v0

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 811
    const/4 v0, 0x1

    return v0
.end method

.method public setVdopPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x6

    .line 903
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    const/4 v0, 0x0

    return v0

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 907
    const/4 v0, 0x1

    return v0
.end method
