.class public Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "Navigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/Navigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfFlags"
.end annotation


# static fields
.field private static final sLength:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/Navigation;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/Navigation;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/Navigation;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/Navigation;
    .param p2, "value"    # [B

    .prologue
    .line 617
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    .line 618
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 619
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->setByteArray([B)V

    .line 617
    return-void
.end method


# virtual methods
.method public getDestinationReached()I
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 796
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEstimatedTimeOfArrivalPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 676
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getHeadingSource()I
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 724
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNavigationIndicatorType()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 748
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getPositionStatus()I
    .locals 2

    .prologue
    .line 700
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getRemainingDistancePresent()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getRemainingVerticalDistancePresent()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 652
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getWaypointReached()I
    .locals 1

    .prologue
    const/4 v0, 0x7

    .line 772
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x2

    return v0
.end method

.method public setDestinationReached(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x8

    .line 807
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    const/4 v0, 0x0

    return v0

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 811
    const/4 v0, 0x1

    return v0
.end method

.method public setEstimatedTimeOfArrivalPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 687
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    const/4 v0, 0x0

    return v0

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 691
    const/4 v0, 0x1

    return v0
.end method

.method public setHeadingSource(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x5

    .line 735
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    const/4 v0, 0x0

    return v0

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 739
    const/4 v0, 0x1

    return v0
.end method

.method public setNavigationIndicatorType(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x6

    .line 759
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x0

    return v0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 763
    const/4 v0, 0x1

    return v0
.end method

.method public setPositionStatus(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 711
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    const/4 v0, 0x0

    return v0

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 715
    const/4 v0, 0x1

    return v0
.end method

.method public setRemainingDistancePresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 639
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    return v1

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 643
    const/4 v0, 0x1

    return v0
.end method

.method public setRemainingVerticalDistancePresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 663
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    const/4 v0, 0x0

    return v0

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 667
    return v1
.end method

.method public setWaypointReached(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x7

    .line 783
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    const/4 v0, 0x0

    return v0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 787
    const/4 v0, 0x1

    return v0
.end method
