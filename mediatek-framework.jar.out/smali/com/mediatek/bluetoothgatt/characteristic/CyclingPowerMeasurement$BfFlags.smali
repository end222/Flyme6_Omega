.class public Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "CyclingPowerMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfFlags"
.end annotation


# static fields
.field private static final sLength:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;
    .param p2, "value"    # [B

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    .line 1350
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 1351
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setByteArray([B)V

    .line 1349
    return-void
.end method


# virtual methods
.method public getAccumulatedEnergyPresent()I
    .locals 1

    .prologue
    const/16 v0, 0xb

    .line 1624
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getAccumulatedTorquePresent()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 1408
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getAccumulatedTorqueSource()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 1432
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getBottomDeadSpotAnglePresent()I
    .locals 1

    .prologue
    const/16 v0, 0xa

    .line 1600
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getCrankRevolutionDataPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1480
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getExtremeAnglesPresent()I
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 1552
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getExtremeForceMagnitudesPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 1504
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getExtremeTorqueMagnitudesPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x7

    .line 1528
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getOffsetCompensationIndicator()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 1648
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getPedalPowerBalancePresent()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1360
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getPedalPowerBalanceReference()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1384
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getTopDeadSpotAnglePresent()I
    .locals 1

    .prologue
    const/16 v0, 0x9

    .line 1576
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getWheelRevolutionDataPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 1456
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x2

    return v0
.end method

.method public setAccumulatedEnergyPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xb

    .line 1635
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1636
    const/4 v0, 0x0

    return v0

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1639
    const/4 v0, 0x1

    return v0
.end method

.method public setAccumulatedTorquePresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 1419
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1420
    const/4 v0, 0x0

    return v0

    .line 1422
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1423
    const/4 v0, 0x1

    return v0
.end method

.method public setAccumulatedTorqueSource(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x3

    .line 1443
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1444
    const/4 v0, 0x0

    return v0

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1447
    const/4 v0, 0x1

    return v0
.end method

.method public setBottomDeadSpotAnglePresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xa

    .line 1611
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1612
    const/4 v0, 0x0

    return v0

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1615
    const/4 v0, 0x1

    return v0
.end method

.method public setCrankRevolutionDataPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x5

    .line 1491
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1492
    const/4 v0, 0x0

    return v0

    .line 1494
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1495
    const/4 v0, 0x1

    return v0
.end method

.method public setExtremeAnglesPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x8

    .line 1563
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1564
    const/4 v0, 0x0

    return v0

    .line 1566
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1567
    const/4 v0, 0x1

    return v0
.end method

.method public setExtremeForceMagnitudesPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x6

    .line 1515
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1516
    const/4 v0, 0x0

    return v0

    .line 1518
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1519
    const/4 v0, 0x1

    return v0
.end method

.method public setExtremeTorqueMagnitudesPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x7

    .line 1539
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1540
    const/4 v0, 0x0

    return v0

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1543
    const/4 v0, 0x1

    return v0
.end method

.method public setOffsetCompensationIndicator(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xc

    .line 1659
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1660
    const/4 v0, 0x0

    return v0

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1663
    const/4 v0, 0x1

    return v0
.end method

.method public setPedalPowerBalancePresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 1371
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    return v1

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1375
    const/4 v0, 0x1

    return v0
.end method

.method public setPedalPowerBalanceReference(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1395
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1396
    const/4 v0, 0x0

    return v0

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1399
    return v1
.end method

.method public setTopDeadSpotAnglePresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x9

    .line 1587
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1588
    const/4 v0, 0x0

    return v0

    .line 1590
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1591
    const/4 v0, 0x1

    return v0
.end method

.method public setWheelRevolutionDataPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x4

    .line 1467
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1468
    const/4 v0, 0x0

    return v0

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1471
    const/4 v0, 0x1

    return v0
.end method
