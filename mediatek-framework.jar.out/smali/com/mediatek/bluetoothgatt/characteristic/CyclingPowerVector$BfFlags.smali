.class public Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "CyclingPowerVector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfFlags"
.end annotation


# static fields
.field private static final sLength:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;
    .param p2, "value"    # [B

    .prologue
    .line 595
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    .line 596
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 597
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->setByteArray([B)V

    .line 595
    return-void
.end method


# virtual methods
.method public getCrankRevolutionDataPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getFirstCrankMeasurementAnglePresent()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 630
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getInstantaneousForceMagnitudeArrayPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 654
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getInstantaneousMeasurementDirection()I
    .locals 2

    .prologue
    .line 702
    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getInstantaneousTorqueMagnitudeArrayPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 678
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x1

    return v0
.end method

.method public setCrankRevolutionDataPresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 617
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    return v1

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 621
    const/4 v0, 0x1

    return v0
.end method

.method public setFirstCrankMeasurementAnglePresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 641
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    const/4 v0, 0x0

    return v0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 645
    return v1
.end method

.method public setInstantaneousForceMagnitudeArrayPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 665
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    const/4 v0, 0x0

    return v0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousMeasurementDirection(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 713
    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    const/4 v0, 0x0

    return v0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 717
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousTorqueMagnitudeArrayPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x3

    .line 689
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    const/4 v0, 0x0

    return v0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 693
    const/4 v0, 0x1

    return v0
.end method
