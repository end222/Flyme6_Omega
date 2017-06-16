.class public Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "CyclingPowerControlPoint.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final OP_MASK_MEASUREMENT_CONTENT:I = 0xd

.field public static final OP_REQUEST_CHAIN_LENGTH:I = 0x7

.field public static final OP_REQUEST_CHAIN_WEIGHT:I = 0x9

.field public static final OP_REQUEST_CRANK_LENGTH:I = 0x5

.field public static final OP_REQUEST_FACTORY_CALIBRATION_DATE:I = 0xf

.field public static final OP_REQUEST_SAMPLING_RATE:I = 0xe

.field public static final OP_REQUEST_SPAN_LENGTH:I = 0xb

.field public static final OP_REQUEST_SUPPORTED_SENSOR_LOCATIONS:I = 0x3

.field public static final OP_RESPONSE_CODE:I = 0x20

.field public static final OP_SET_CHAIN_LENGTH:I = 0x6

.field public static final OP_SET_CHAIN_WEIGHT:I = 0x8

.field public static final OP_SET_CRANK_LENGTH:I = 0x4

.field public static final OP_SET_CUMULATIVE_VALUE:I = 0x1

.field public static final OP_SET_SPAN_LENGTH:I = 0xa

.field public static final OP_START_OFFSET_COMPENSATION:I = 0xc

.field public static final OP_UPDATE_SENSOR_LOCATION:I = 0x2

.field public static final RESPONSE_INVALID_PARAMETER:I = 0x3

.field public static final RESPONSE_OPERATION_FAILED:I = 0x4

.field public static final RESPONSE_OP_CODE_NOT_SUPPORTED:I = 0x2

.field public static final RESPONSE_SUCCESS:I = 0x1


# instance fields
.field private mOpCodes:[B

.field private mParameterValue:[B

.field private mRequestOpCode:[B

.field private mResponseParameter:[B

.field private mResponseValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A66"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 102
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    .line 110
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    .line 118
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    .line 126
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    .line 134
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 142
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setOpCodes(I)Z

    .line 143
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setParameterValue([B)Z

    .line 144
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setRequestOpCode(I)Z

    .line 145
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setResponseValue(I)Z

    .line 146
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setResponseParameter([B)Z

    .line 140
    return-void
.end method

.method public constructor <init>(I[BII[B)V
    .locals 3
    .param p1, "opCodes"    # I
    .param p2, "parameterValue"    # [B
    .param p3, "requestOpCode"    # I
    .param p4, "responseValue"    # I
    .param p5, "responseParameter"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 179
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 102
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    .line 110
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    .line 118
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    .line 126
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    .line 134
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setOpCodes(I)Z

    .line 187
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setParameterValue([B)Z

    .line 188
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setRequestOpCode(I)Z

    .line 189
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setResponseValue(I)Z

    .line 190
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setResponseParameter([B)Z

    .line 184
    return-void
.end method

.method public constructor <init>(I[BII[BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "opCodes"    # I
    .param p2, "parameterValue"    # [B
    .param p3, "requestOpCode"    # I
    .param p4, "responseValue"    # I
    .param p5, "responseParameter"    # [B
    .param p6, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 203
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 102
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    .line 110
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    .line 118
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    .line 126
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    .line 134
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    .line 210
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setOpCodes(I)Z

    .line 212
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setParameterValue([B)Z

    .line 213
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setRequestOpCode(I)Z

    .line 214
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setResponseValue(I)Z

    .line 215
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setResponseParameter([B)Z

    .line 209
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 154
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 102
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    .line 110
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    .line 118
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    .line 126
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    .line 134
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setValue([B)Z

    .line 154
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 165
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 102
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    .line 110
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    .line 118
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    .line 126
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    .line 134
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    .line 166
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setValue([B)Z

    .line 165
    return-void
.end method


# virtual methods
.method public getOpCodes()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getParameterValue()[B
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    return-object v0
.end method

.method public getRequestOpCode()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getResponseParameter()[B
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    return-object v0
.end method

.method public getResponseValue()I
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 258
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 260
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportOpCodes()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    array-length v1, v3

    .line 262
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 263
    add-int/lit8 v0, v1, 0x0

    .line 266
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportParameterValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    array-length v1, v3

    .line 268
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 269
    add-int/2addr v0, v1

    .line 272
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportRequestOpCode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    array-length v1, v3

    .line 274
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 275
    add-int/2addr v0, v1

    .line 278
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportResponseValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    array-length v1, v3

    .line 280
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 281
    add-int/2addr v0, v1

    .line 284
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportResponseParameter()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 285
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    array-length v1, v3

    .line 286
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 287
    add-int/2addr v0, v1

    .line 290
    .end local v1    # "fieldLen":I
    :cond_4
    return-object v2
.end method

.method public isSupportOpCodes()Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportParameterValue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 420
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getOpCodes()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getOpCodes()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getOpCodes()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getOpCodes()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getOpCodes()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getOpCodes()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getOpCodes()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportRequestOpCode()Z
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getOpCodes()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportResponseParameter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 529
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getOpCodes()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 530
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getResponseValue()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 531
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getRequestOpCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getRequestOpCode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v0

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getRequestOpCode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getRequestOpCode()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getRequestOpCode()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getRequestOpCode()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getRequestOpCode()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getRequestOpCode()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 529
    goto :goto_0
.end method

.method public isSupportResponseValue()Z
    .locals 2

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getOpCodes()I

    move-result v0

    const/16 v1, 0x20

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

    .line 228
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportOpCodes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    array-length v0, v0

    .line 230
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportParameterValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    array-length v2, v2

    .line 228
    :goto_1
    add-int/2addr v2, v0

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportRequestOpCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    array-length v0, v0

    .line 228
    :goto_2
    add-int/2addr v2, v0

    .line 234
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportResponseValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    array-length v0, v0

    .line 228
    :goto_3
    add-int/2addr v0, v2

    .line 236
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportResponseParameter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    array-length v1, v1

    .line 228
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 229
    goto :goto_0

    :cond_2
    move v2, v1

    .line 231
    goto :goto_1

    :cond_3
    move v0, v1

    .line 233
    goto :goto_2

    :cond_4
    move v0, v1

    .line 235
    goto :goto_3
.end method

.method public setOpCodes(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 371
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    .line 375
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->updateGattCharacteristic()V

    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public setParameterValue([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 406
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    .line 410
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->updateGattCharacteristic()V

    .line 411
    const/4 v0, 0x1

    return v0

    .line 408
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    goto :goto_0
.end method

.method public setRequestOpCode(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 446
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    return v0

    .line 449
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    .line 450
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->updateGattCharacteristic()V

    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method public setResponseParameter([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 515
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    .line 519
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->updateGattCharacteristic()V

    .line 520
    const/4 v0, 0x1

    return v0

    .line 517
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    goto :goto_0
.end method

.method public setResponseValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 480
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    return v0

    .line 483
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    .line 484
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->updateGattCharacteristic()V

    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 301
    const/4 v1, 0x0

    .line 303
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportOpCodes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    array-length v0, v2

    .line 306
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    return v3

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mOpCodes:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 311
    add-int/lit8 v1, v0, 0x0

    .line 314
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportParameterValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    .line 316
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    array-length v0, v2

    .line 317
    .restart local v0    # "fieldLen":I
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mParameterValue:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 318
    add-int/2addr v1, v0

    .line 321
    .end local v0    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportRequestOpCode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 322
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    array-length v0, v2

    .line 324
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_3

    .line 325
    return v3

    .line 328
    :cond_3
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mRequestOpCode:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 329
    add-int/2addr v1, v0

    .line 332
    .end local v0    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportResponseValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 333
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    array-length v0, v2

    .line 335
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_5

    .line 336
    return v3

    .line 339
    :cond_5
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseValue:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 340
    add-int/2addr v1, v0

    .line 343
    .end local v0    # "fieldLen":I
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->isSupportResponseParameter()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 344
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    .line 345
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    array-length v0, v2

    .line 346
    .restart local v0    # "fieldLen":I
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->mResponseParameter:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 347
    add-int/2addr v1, v0

    .line 350
    .end local v0    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->updateGattCharacteristic()V

    .line 351
    const/4 v2, 0x1

    return v2
.end method
