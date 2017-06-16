.class public Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "LnFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfLnFeature"
.end annotation


# static fields
.field private static final sLength:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;
    .param p2, "value"    # [B

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    .line 262
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 263
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setByteArray([B)V

    .line 261
    return-void
.end method


# virtual methods
.method public getCharacteristicContentMaskingSupported()I
    .locals 1

    .prologue
    const/16 v0, 0x11

    .line 680
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getElevationSettingSupported()I
    .locals 1

    .prologue
    const/16 v0, 0x13

    .line 728
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getElevationSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 344
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEstimatedHorizontalPositionErrorSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xd

    .line 584
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEstimatedTimeOfArrivalSupported()I
    .locals 1

    .prologue
    const/16 v0, 0x9

    .line 488
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEstimatedVerticalPositionErrorSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xe

    .line 608
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getFixRateSettingSupported()I
    .locals 1

    .prologue
    const/16 v0, 0x12

    .line 704
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getHeadingSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 368
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getHorizontalDilutionOfPrecisionSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xf

    .line 632
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getInstantaneousSpeedSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getLocationSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 320
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBeaconsInSolutionSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xa

    .line 512
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBeaconsInViewSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xb

    .line 536
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getPositionStatusSupported()I
    .locals 1

    .prologue
    const/16 v0, 0x14

    .line 752
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getRemainingDistanceSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x7

    .line 440
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getRemainingVerticalDistanceSupported()I
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 464
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getRollingTimeSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 392
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getTimeToFirstFixSupported()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 560
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getTotalDistanceSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 296
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getUtcTimeSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 416
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getVerticalDilutionOfPrecisionSupported()I
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 656
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x4

    return v0
.end method

.method public setCharacteristicContentMaskingSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x11

    .line 691
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    const/4 v0, 0x0

    return v0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method public setElevationSettingSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x13

    .line 739
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    const/4 v0, 0x0

    return v0

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 743
    const/4 v0, 0x1

    return v0
.end method

.method public setElevationSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x3

    .line 355
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public setEstimatedHorizontalPositionErrorSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xd

    .line 595
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const/4 v0, 0x0

    return v0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 599
    const/4 v0, 0x1

    return v0
.end method

.method public setEstimatedTimeOfArrivalSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x9

    .line 499
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    const/4 v0, 0x0

    return v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method public setEstimatedVerticalPositionErrorSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xe

    .line 619
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    const/4 v0, 0x0

    return v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 623
    const/4 v0, 0x1

    return v0
.end method

.method public setFixRateSettingSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x12

    .line 715
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    const/4 v0, 0x0

    return v0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 719
    const/4 v0, 0x1

    return v0
.end method

.method public setHeadingSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x4

    .line 379
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    return v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 383
    const/4 v0, 0x1

    return v0
.end method

.method public setHorizontalDilutionOfPrecisionSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xf

    .line 643
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x0

    return v0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousSpeedSupported(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    return v1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public setLocationSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 331
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public setNumberOfBeaconsInSolutionSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xa

    .line 523
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    return v0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 527
    const/4 v0, 0x1

    return v0
.end method

.method public setNumberOfBeaconsInViewSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xb

    .line 547
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    const/4 v0, 0x0

    return v0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public setPositionStatusSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x14

    .line 763
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    const/4 v0, 0x0

    return v0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 767
    const/4 v0, 0x1

    return v0
.end method

.method public setRemainingDistanceSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x7

    .line 451
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    const/4 v0, 0x0

    return v0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public setRemainingVerticalDistanceSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x8

    .line 475
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    const/4 v0, 0x0

    return v0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public setRollingTimeSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x5

    .line 403
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const/4 v0, 0x0

    return v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeToFirstFixSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xc

    .line 571
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    const/4 v0, 0x0

    return v0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method public setTotalDistanceSupported(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 307
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 311
    return v1
.end method

.method public setUtcTimeSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x6

    .line 427
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const/4 v0, 0x0

    return v0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public setVerticalDilutionOfPrecisionSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x10

    .line 667
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    const/4 v0, 0x0

    return v0

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature$BfLnFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->updateGattCharacteristic()V

    .line 671
    const/4 v0, 0x1

    return v0
.end method
