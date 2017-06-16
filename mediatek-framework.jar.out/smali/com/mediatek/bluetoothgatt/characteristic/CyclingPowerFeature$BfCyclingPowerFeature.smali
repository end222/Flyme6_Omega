.class public Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "CyclingPowerFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfCyclingPowerFeature"
.end annotation


# static fields
.field private static final sLength:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;
    .param p2, "value"    # [B

    .prologue
    .line 344
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    .line 345
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 346
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setByteArray([B)V

    .line 344
    return-void
.end method


# virtual methods
.method public getAccumulatedEnergySupported()I
    .locals 1

    .prologue
    const/4 v0, 0x7

    .line 523
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getAccumulatedTorqueSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 379
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getChainLengthAdjustmentSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xd

    .line 667
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getChainWeightAdjustmentSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xe

    .line 691
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getCharacteristicContentMaskingSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xa

    .line 595
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getCrankLengthAdjustmentSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 643
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getCrankRevolutionDataSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 427
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getExtremeAnglesSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 475
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getExtremeMagnitudesSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 451
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getFactoryCalibrationDateSupported()I
    .locals 1

    .prologue
    const/16 v0, 0x12

    .line 787
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getInstantaneousMeasurementDirectionSupported()I
    .locals 1

    .prologue
    const/16 v0, 0x11

    .line 763
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getMultipleSensorLocationsSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xb

    .line 619
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getOffsetCompensationIndicatorSupported()I
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 547
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getOffsetCompensationSupported()I
    .locals 1

    .prologue
    const/16 v0, 0x9

    .line 571
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getPedalPowerBalanceSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getSensorMeasurementContext()I
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 739
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getSpanLengthAdjustmentSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xf

    .line 715
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getTopAndBottomDeadSpotAnglesSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 499
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getWheelRevolutionDataSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 403
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x4

    return v0
.end method

.method public setAccumulatedEnergySupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x7

    .line 534
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    const/4 v0, 0x0

    return v0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method public setAccumulatedTorqueSupported(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 390
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    const/4 v0, 0x0

    return v0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 394
    return v1
.end method

.method public setChainLengthAdjustmentSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xd

    .line 678
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    const/4 v0, 0x0

    return v0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 682
    const/4 v0, 0x1

    return v0
.end method

.method public setChainWeightAdjustmentSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xe

    .line 702
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    const/4 v0, 0x0

    return v0

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 706
    const/4 v0, 0x1

    return v0
.end method

.method public setCharacteristicContentMaskingSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xa

    .line 606
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x0

    return v0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public setCrankLengthAdjustmentSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xc

    .line 654
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    const/4 v0, 0x0

    return v0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 658
    const/4 v0, 0x1

    return v0
.end method

.method public setCrankRevolutionDataSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x3

    .line 438
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x0

    return v0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method public setExtremeAnglesSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x5

    .line 486
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    const/4 v0, 0x0

    return v0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public setExtremeMagnitudesSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x4

    .line 462
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    return v0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public setFactoryCalibrationDateSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x12

    .line 798
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    const/4 v0, 0x0

    return v0

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 802
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousMeasurementDirectionSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x11

    .line 774
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    const/4 v0, 0x0

    return v0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 778
    const/4 v0, 0x1

    return v0
.end method

.method public setMultipleSensorLocationsSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xb

    .line 630
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    const/4 v0, 0x0

    return v0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 634
    const/4 v0, 0x1

    return v0
.end method

.method public setOffsetCompensationIndicatorSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x8

    .line 558
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x0

    return v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method public setOffsetCompensationSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x9

    .line 582
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    const/4 v0, 0x0

    return v0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 586
    const/4 v0, 0x1

    return v0
.end method

.method public setPedalPowerBalanceSupported(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    return v1

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public setSensorMeasurementContext(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x10

    .line 750
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    const/4 v0, 0x0

    return v0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 754
    const/4 v0, 0x1

    return v0
.end method

.method public setSpanLengthAdjustmentSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xf

    .line 726
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    const/4 v0, 0x0

    return v0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 730
    const/4 v0, 0x1

    return v0
.end method

.method public setTopAndBottomDeadSpotAnglesSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x6

    .line 510
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    const/4 v0, 0x0

    return v0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public setWheelRevolutionDataSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 414
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    return v0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 418
    const/4 v0, 0x1

    return v0
.end method
