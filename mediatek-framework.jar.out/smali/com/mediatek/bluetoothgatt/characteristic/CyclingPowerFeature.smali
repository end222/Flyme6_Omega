.class public Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "CyclingPowerFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;
    }
.end annotation


# static fields
.field public static final ACCUMULATED_ENERGY:I = 0x80

.field public static final ACCUMULATED_TORQUE:I = 0x2

.field public static final CHAIN_LENGTH_ADJUSTMENT:I = 0x2000

.field public static final CHAIN_WEIGHT_ADJUSTMENT:I = 0x4000

.field public static final CHARACTERISTIC_CONTENT_MASKING:I = 0x400

.field public static final CRANK_LENGTH_ADJUSTMENT:I = 0x1000

.field public static final CRANK_REVOLUTION_DATA:I = 0x8

.field public static final EXTREME_ANGLES:I = 0x20

.field public static final EXTREME_MAGNITUDES:I = 0x10

.field public static final FACTORY_CALIBRATION_DATE:I = 0x40000

.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final INSTANTANEOUS_MEASUREMENT_DIRECTION:I = 0x20000

.field public static final MULTIPLE_SENSOR_LOCATIONS:I = 0x800

.field public static final OFFSET_COMPENSATION:I = 0x200

.field public static final OFFSET_COMPENSATION_INDICATOR:I = 0x100

.field public static final PEDAL_POWER_BALANCE:I = 0x1

.field public static final SENSOR_MEASUREMENT_FORCE_BASED:I = 0x0

.field public static final SENSOR_MEASUREMENT_TORQUE_BASED:I = 0x10000

.field public static final SPAN_LENGTH_ADJUSTMENT:I = 0x8000

.field public static final TOP_AND_BOTTOM_DEAD_SPOT_ANGLES:I = 0x40

.field public static final WHEEL_REVOLUTION_DATA:I = 0x4


# instance fields
.field private mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A65"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 97
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 105
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->setCyclingPowerFeature(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;)Z

    .line 103
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "cyclingPowerFeature"    # I

    .prologue
    const/4 v1, 0x1

    .line 160
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 97
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    .line 161
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setPedalPowerBalanceSupported(I)Z

    .line 164
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setAccumulatedTorqueSupported(I)Z

    .line 167
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setWheelRevolutionDataSupported(I)Z

    .line 170
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setCrankRevolutionDataSupported(I)Z

    .line 173
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setExtremeMagnitudesSupported(I)Z

    .line 176
    :cond_4
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_5

    .line 177
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setTopAndBottomDeadSpotAnglesSupported(I)Z

    .line 179
    :cond_5
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_6

    .line 180
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setAccumulatedEnergySupported(I)Z

    .line 182
    :cond_6
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_7

    .line 183
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setOffsetCompensationIndicatorSupported(I)Z

    .line 185
    :cond_7
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_8

    .line 186
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setOffsetCompensationSupported(I)Z

    .line 188
    :cond_8
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setCharacteristicContentMaskingSupported(I)Z

    .line 191
    :cond_9
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_a

    .line 192
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setMultipleSensorLocationsSupported(I)Z

    .line 194
    :cond_a
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_b

    .line 195
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setCrankLengthAdjustmentSupported(I)Z

    .line 197
    :cond_b
    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_c

    .line 198
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setChainLengthAdjustmentSupported(I)Z

    .line 200
    :cond_c
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_d

    .line 201
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setChainWeightAdjustmentSupported(I)Z

    .line 203
    :cond_d
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_e

    .line 204
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setSpanLengthAdjustmentSupported(I)Z

    .line 206
    :cond_e
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_f

    .line 207
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setSensorMeasurementContext(I)Z

    .line 209
    :cond_f
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_10

    .line 210
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setInstantaneousMeasurementDirectionSupported(I)Z

    .line 212
    :cond_10
    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    if-eqz v0, :cond_11

    .line 213
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setFactoryCalibrationDateSupported(I)Z

    .line 160
    :cond_11
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;)V
    .locals 1
    .param p1, "cyclingPowerFeature"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 97
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->setCyclingPowerFeature(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;)Z

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "cyclingPowerFeature"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 97
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    .line 149
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->setCyclingPowerFeature(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;)Z

    .line 148
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 97
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->setValue([B)Z

    .line 113
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 97
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    .line 125
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->setValue([B)Z

    .line 124
    return-void
.end method


# virtual methods
.method public getCyclingPowerFeature()Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 246
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 248
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->isSupportCyclingPowerFeature()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->length()I

    move-result v1

    .line 250
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 251
    add-int/lit8 v0, v1, 0x0

    .line 254
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportCyclingPowerFeature()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->isSupportCyclingPowerFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->length()I

    move-result v0

    .line 224
    :goto_0
    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCyclingPowerFeature(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    .line 304
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 265
    const/4 v2, 0x0

    .line 267
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->isSupportCyclingPowerFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->length()I

    move-result v1

    .line 270
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    return v4

    .line 274
    :cond_0
    new-array v0, v1, [B

    .line 276
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 277
    add-int/lit8 v2, v1, 0x0

    .line 279
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->mCyclingPowerFeature:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature$BfCyclingPowerFeature;->setByteArray([B)V

    .line 282
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->updateGattCharacteristic()V

    .line 283
    const/4 v3, 0x1

    return v3
.end method
