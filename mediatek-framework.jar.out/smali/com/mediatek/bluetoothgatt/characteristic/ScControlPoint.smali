.class public Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "ScControlPoint.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final OP_REQUEST_SUPPORTED_LOCATIONS:I = 0x4

.field public static final OP_RESPONSE_CODE:I = 0x10

.field public static final OP_SET_CUMULATIVE_VALUE:I = 0x1

.field public static final OP_START_SENSOR_CALIBRATION:I = 0x2

.field public static final OP_UPDATE_SENSOR_LOCATION:I = 0x3

.field public static final RESPONSE_INVALID_PARAMETER:I = 0x3

.field public static final RESPONSE_OPCODE_NOT_SUPPORT:I = 0x2

.field public static final RESPONSE_OPERATION_FAILED:I = 0x4

.field public static final RESPONSE_SUCCESS:I = 0x1


# instance fields
.field private mCumulativeValue:[B

.field private mOpCode:[B

.field private mRequestOpCode:[B

.field private mResponseParameter:[B

.field private mResponseValue:[B

.field private mSensorLocationValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A55"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 85
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    .line 93
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    .line 101
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    .line 109
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    .line 117
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    .line 125
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setOpCode(I)Z

    .line 134
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setCumulativeValue([B)Z

    .line 135
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setSensorLocationValue(I)Z

    .line 136
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setRequestOpCode(I)Z

    .line 137
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setResponseValue(I)Z

    .line 138
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setResponseParameter([B)Z

    .line 131
    return-void
.end method

.method public constructor <init>(I[BIII[B)V
    .locals 3
    .param p1, "opCode"    # I
    .param p2, "cumulativeValue"    # [B
    .param p3, "sensorLocationValue"    # I
    .param p4, "requestOpCode"    # I
    .param p5, "responseValue"    # I
    .param p6, "responseParameter"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 172
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 85
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    .line 93
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    .line 101
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    .line 109
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    .line 117
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    .line 125
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setOpCode(I)Z

    .line 181
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setCumulativeValue([B)Z

    .line 182
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setSensorLocationValue(I)Z

    .line 183
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setRequestOpCode(I)Z

    .line 184
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setResponseValue(I)Z

    .line 185
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setResponseParameter([B)Z

    .line 178
    return-void
.end method

.method public constructor <init>(I[BIII[BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "opCode"    # I
    .param p2, "cumulativeValue"    # [B
    .param p3, "sensorLocationValue"    # I
    .param p4, "requestOpCode"    # I
    .param p5, "responseValue"    # I
    .param p6, "responseParameter"    # [B
    .param p7, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 199
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 85
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    .line 93
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    .line 101
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    .line 109
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    .line 117
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    .line 125
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    .line 207
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setOpCode(I)Z

    .line 209
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setCumulativeValue([B)Z

    .line 210
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setSensorLocationValue(I)Z

    .line 211
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setRequestOpCode(I)Z

    .line 212
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setResponseValue(I)Z

    .line 213
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setResponseParameter([B)Z

    .line 206
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 146
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 85
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    .line 93
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    .line 101
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    .line 109
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    .line 117
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    .line 125
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setValue([B)Z

    .line 146
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 157
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 85
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    .line 93
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    .line 101
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    .line 109
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    .line 117
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    .line 125
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    .line 158
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setValue([B)Z

    .line 157
    return-void
.end method


# virtual methods
.method public getCumulativeValue()[B
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    return-object v0
.end method

.method public getOpCode()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getRequestOpCode()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getResponseParameter()[B
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    return-object v0
.end method

.method public getResponseValue()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getSensorLocationValue()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 258
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 260
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportOpCode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    array-length v1, v3

    .line 262
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 263
    add-int/lit8 v0, v1, 0x0

    .line 266
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportCumulativeValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    array-length v1, v3

    .line 268
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 269
    add-int/2addr v0, v1

    .line 272
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportSensorLocationValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    array-length v1, v3

    .line 274
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 275
    add-int/2addr v0, v1

    .line 278
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportRequestOpCode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    array-length v1, v3

    .line 280
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 281
    add-int/2addr v0, v1

    .line 284
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportResponseValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 285
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    array-length v1, v3

    .line 286
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 287
    add-int/2addr v0, v1

    .line 290
    .end local v1    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportResponseParameter()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 291
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    array-length v1, v3

    .line 292
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 293
    add-int/2addr v0, v1

    .line 296
    .end local v1    # "fieldLen":I
    :cond_5
    return-object v2
.end method

.method public isSupportCumulativeValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 437
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->getOpCode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportOpCode()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportRequestOpCode()Z
    .locals 2

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->getOpCode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportResponseParameter()Z
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->getOpCode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportResponseValue()Z
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->getOpCode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportSensorLocationValue()Z
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->getOpCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportOpCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    array-length v0, v0

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportCumulativeValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    array-length v2, v2

    .line 226
    :goto_1
    add-int/2addr v2, v0

    .line 230
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportSensorLocationValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    array-length v0, v0

    .line 226
    :goto_2
    add-int/2addr v2, v0

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportRequestOpCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    array-length v0, v0

    .line 226
    :goto_3
    add-int/2addr v2, v0

    .line 234
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportResponseValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    array-length v0, v0

    .line 226
    :goto_4
    add-int/2addr v0, v2

    .line 236
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportResponseParameter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    array-length v1, v1

    .line 226
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 227
    goto :goto_0

    :cond_2
    move v2, v1

    .line 229
    goto :goto_1

    :cond_3
    move v0, v1

    .line 231
    goto :goto_2

    :cond_4
    move v0, v1

    .line 233
    goto :goto_3

    :cond_5
    move v0, v1

    .line 235
    goto :goto_4
.end method

.method public setCumulativeValue([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 423
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    .line 427
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->updateGattCharacteristic()V

    .line 428
    const/4 v0, 0x1

    return v0

    .line 425
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    goto :goto_0
.end method

.method public setOpCode(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 388
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    const/4 v0, 0x0

    return v0

    .line 391
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    .line 392
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->updateGattCharacteristic()V

    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method public setRequestOpCode(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 491
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    return v0

    .line 494
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    .line 495
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->updateGattCharacteristic()V

    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public setResponseParameter([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 559
    if-nez p1, :cond_0

    .line 560
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    .line 564
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->updateGattCharacteristic()V

    .line 565
    const/4 v0, 0x1

    return v0

    .line 562
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    goto :goto_0
.end method

.method public setResponseValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 525
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x0

    return v0

    .line 528
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    .line 529
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->updateGattCharacteristic()V

    .line 530
    const/4 v0, 0x1

    return v0
.end method

.method public setSensorLocationValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 457
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    return v0

    .line 460
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    .line 461
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->updateGattCharacteristic()V

    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 307
    const/4 v1, 0x0

    .line 309
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportOpCode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    array-length v0, v2

    .line 312
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    return v3

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mOpCode:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 317
    add-int/lit8 v1, v0, 0x0

    .line 320
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportCumulativeValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    .line 322
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    array-length v0, v2

    .line 323
    .restart local v0    # "fieldLen":I
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mCumulativeValue:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 324
    add-int/2addr v1, v0

    .line 327
    .end local v0    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportSensorLocationValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 328
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    array-length v0, v2

    .line 330
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_3

    .line 331
    return v3

    .line 334
    :cond_3
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mSensorLocationValue:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 335
    add-int/2addr v1, v0

    .line 338
    .end local v0    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportRequestOpCode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 339
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    array-length v0, v2

    .line 341
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_5

    .line 342
    return v3

    .line 345
    :cond_5
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mRequestOpCode:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 346
    add-int/2addr v1, v0

    .line 349
    .end local v0    # "fieldLen":I
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportResponseValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 350
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    array-length v0, v2

    .line 352
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_7

    .line 353
    return v3

    .line 356
    :cond_7
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseValue:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 357
    add-int/2addr v1, v0

    .line 360
    .end local v0    # "fieldLen":I
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->isSupportResponseParameter()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 361
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    .line 362
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    array-length v0, v2

    .line 363
    .restart local v0    # "fieldLen":I
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->mResponseParameter:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 364
    add-int/2addr v1, v0

    .line 367
    .end local v0    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->updateGattCharacteristic()V

    .line 368
    const/4 v2, 0x1

    return v2
.end method
