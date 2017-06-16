.class public Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "RscMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfFlags"
.end annotation


# static fields
.field private static final sLength:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;
    .param p2, "value"    # [B

    .prologue
    .line 533
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;

    .line 534
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 535
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->setByteArray([B)V

    .line 533
    return-void
.end method


# virtual methods
.method public getInstantaneousStrideLengthPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getTotalDistancePresent()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 568
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getWalkingOrRunningStatusBits()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 592
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousStrideLengthPresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 555
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    return v1

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->updateGattCharacteristic()V

    .line 559
    const/4 v0, 0x1

    return v0
.end method

.method public setTotalDistancePresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 579
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    const/4 v0, 0x0

    return v0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->updateGattCharacteristic()V

    .line 583
    return v1
.end method

.method public setWalkingOrRunningStatusBits(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 603
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    const/4 v0, 0x0

    return v0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->updateGattCharacteristic()V

    .line 607
    const/4 v0, 0x1

    return v0
.end method
