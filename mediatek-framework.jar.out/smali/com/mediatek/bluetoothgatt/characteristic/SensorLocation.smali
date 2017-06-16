.class public Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "SensorLocation.java"


# static fields
.field public static final CHAINSTAY:I = 0xb

.field public static final CHEST:I = 0xe

.field public static final FRONT_HUB:I = 0x9

.field public static final FRONT_WHEEL:I = 0x4

.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final HIP:I = 0x3

.field public static final IN_SHOE:I = 0x2

.field public static final LEFT_CRANK:I = 0x5

.field public static final LEFT_PEDAL:I = 0x7

.field public static final OTHER:I = 0x0

.field public static final REAR_DROPOUT:I = 0xa

.field public static final REAR_HUB:I = 0xd

.field public static final REAR_WHEEL:I = 0xc

.field public static final RIGHT_CRANK:I = 0x6

.field public static final RIGHT_PEDAL:I = 0x8

.field public static final TOP_OF_SHOE:I = 0x1


# instance fields
.field private mSensorLocation:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A5D"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->setSensorLocation(I)Z

    .line 99
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "sensorLocation"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->setSensorLocation(I)Z

    .line 131
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "sensorLocation"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    .line 145
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->setSensorLocation(I)Z

    .line 144
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->setValue([B)Z

    .line 109
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    .line 121
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->setValue([B)Z

    .line 120
    return-void
.end method


# virtual methods
.method public getSensorLocation()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 181
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 183
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->isSupportSensorLocation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    array-length v1, v3

    .line 185
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 186
    add-int/lit8 v0, v1, 0x0

    .line 189
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportSensorLocation()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->isSupportSensorLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    array-length v0, v0

    .line 159
    :goto_0
    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSensorLocation(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 234
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    return v0

    .line 237
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    .line 238
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->updateGattCharacteristic()V

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->isSupportSensorLocation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    array-length v0, v2

    .line 205
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    return v3

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->mSensorLocation:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 210
    add-int/lit8 v1, v0, 0x0

    .line 213
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->updateGattCharacteristic()V

    .line 214
    const/4 v2, 0x1

    return v2
.end method
