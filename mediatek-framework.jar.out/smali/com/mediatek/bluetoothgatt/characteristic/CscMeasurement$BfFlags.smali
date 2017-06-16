.class public Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "CscMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfFlags"
.end annotation


# static fields
.field private static final sLength:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;
    .param p2, "value"    # [B

    .prologue
    .line 560
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;

    .line 561
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 562
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->setByteArray([B)V

    .line 560
    return-void
.end method


# virtual methods
.method public getCrankRevolutionDataPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 595
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getWheelRevolutionDataPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 571
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x1

    return v0
.end method

.method public setCrankRevolutionDataPresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 606
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x0

    return v0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->updateGattCharacteristic()V

    .line 610
    return v1
.end method

.method public setWheelRevolutionDataPresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    return v1

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->updateGattCharacteristic()V

    .line 586
    const/4 v0, 0x1

    return v0
.end method
