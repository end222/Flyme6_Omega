.class public Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "CscFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfCscFeature"
.end annotation


# static fields
.field private static final sLength:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;
    .param p2, "value"    # [B

    .prologue
    .line 281
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;

    .line 282
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 283
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->setByteArray([B)V

    .line 281
    return-void
.end method


# virtual methods
.method public getCrankRevolutionDataSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 316
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getMultipleSensorLocationsSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 340
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getWheelRevolutionDataSupported()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x2

    return v0
.end method

.method public setCrankRevolutionDataSupported(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 327
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    return v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->updateGattCharacteristic()V

    .line 331
    return v1
.end method

.method public setMultipleSensorLocationsSupported(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 351
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->updateGattCharacteristic()V

    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public setWheelRevolutionDataSupported(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    return v1

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->updateGattCharacteristic()V

    .line 307
    const/4 v0, 0x1

    return v0
.end method
