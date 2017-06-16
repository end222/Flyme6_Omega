.class public Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "RscFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfRscFeature"
.end annotation


# static fields
.field private static final sLength:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;
    .param p2, "value"    # [B

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;

    .line 262
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 263
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->setByteArray([B)V

    .line 261
    return-void
.end method


# virtual methods
.method public getCalibrationProcedureSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 344
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getInstantaneousStrideLengthMeasurementSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getMultipleSensorLocationsSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 368
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getTotalDistanceMeasurementSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 296
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getWalkingOrRunningStatusSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 320
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x2

    return v0
.end method

.method public setCalibrationProcedureSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x3

    .line 355
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;->updateGattCharacteristic()V

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousStrideLengthMeasurementSupported(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    return v1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;->updateGattCharacteristic()V

    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public setMultipleSensorLocationsSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x4

    .line 379
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    return v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;->updateGattCharacteristic()V

    .line 383
    const/4 v0, 0x1

    return v0
.end method

.method public setTotalDistanceMeasurementSupported(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 307
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;->updateGattCharacteristic()V

    .line 311
    return v1
.end method

.method public setWalkingOrRunningStatusSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 331
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature$BfRscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;->updateGattCharacteristic()V

    .line 335
    const/4 v0, 0x1

    return v0
.end method
