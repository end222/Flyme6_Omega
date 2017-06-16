.class public Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "LnControlPoint.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final OP_MASK_CHARACTERISTIC_CONTENT:I = 0x2

.field public static final OP_NAVIGATION_CONTROL:I = 0x3

.field public static final OP_REQUEST_NAME_OF_ROUTE:I = 0x5

.field public static final OP_REQUEST_NUMBER_OF_ROUTES:I = 0x4

.field public static final OP_RESPONSE_CODE:I = 0x20

.field public static final OP_SELECT_ROUTE:I = 0x6

.field public static final OP_SET_CUMULATIVE_VALUE:I = 0x1

.field public static final OP_SET_ELEVATION:I = 0x8

.field public static final OP_SET_FIX_RATE:I = 0x7

.field public static final RESP_INVALID_PARAMETER:I = 0x3

.field public static final RESP_OPERATION_FAILED:I = 0x4

.field public static final RESP_OP_CODE_NOT_SUPPORTED:I = 0x2

.field public static final RESP_SUCCESS:I = 0x1


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
    const-string/jumbo v0, "2A6B"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 95
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    .line 103
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    .line 111
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    .line 119
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    .line 127
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setOpCodes(I)Z

    .line 136
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setParameterValue([B)Z

    .line 137
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setRequestOpCode(I)Z

    .line 138
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setResponseValue(I)Z

    .line 139
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setResponseParameter([B)Z

    .line 133
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

    .line 172
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    .line 103
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    .line 119
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    .line 127
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setOpCodes(I)Z

    .line 180
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setParameterValue([B)Z

    .line 181
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setRequestOpCode(I)Z

    .line 182
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setResponseValue(I)Z

    .line 183
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setResponseParameter([B)Z

    .line 177
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

    .line 196
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    .line 103
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    .line 119
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    .line 127
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    .line 203
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setOpCodes(I)Z

    .line 205
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setParameterValue([B)Z

    .line 206
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setRequestOpCode(I)Z

    .line 207
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setResponseValue(I)Z

    .line 208
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setResponseParameter([B)Z

    .line 202
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 147
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    .line 103
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    .line 119
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    .line 127
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setValue([B)Z

    .line 147
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 158
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    .line 103
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    .line 119
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    .line 127
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    .line 159
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setValue([B)Z

    .line 158
    return-void
.end method


# virtual methods
.method public getOpCodes()I
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getParameterValue()[B
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    return-object v0
.end method

.method public getRequestOpCode()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getResponseParameter()[B
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    return-object v0
.end method

.method public getResponseValue()I
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 251
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 253
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportOpCodes()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    array-length v1, v3

    .line 255
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 256
    add-int/lit8 v0, v1, 0x0

    .line 259
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportParameterValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    array-length v1, v3

    .line 261
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 262
    add-int/2addr v0, v1

    .line 265
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportRequestOpCode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 266
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    array-length v1, v3

    .line 267
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 268
    add-int/2addr v0, v1

    .line 271
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportResponseValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    array-length v1, v3

    .line 273
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 274
    add-int/2addr v0, v1

    .line 277
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportResponseParameter()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 278
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    array-length v1, v3

    .line 279
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 280
    add-int/2addr v0, v1

    .line 283
    .end local v1    # "fieldLen":I
    :cond_4
    return-object v2
.end method

.method public isSupportOpCodes()Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportParameterValue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getOpCodes()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getOpCodes()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getOpCodes()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getOpCodes()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getOpCodes()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getOpCodes()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getOpCodes()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportRequestOpCode()Z
    .locals 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getOpCodes()I

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

    .line 522
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getOpCodes()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 523
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getResponseValue()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 524
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getRequestOpCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getRequestOpCode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 522
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 525
    goto :goto_0

    :cond_2
    move v0, v1

    .line 522
    goto :goto_0
.end method

.method public isSupportResponseValue()Z
    .locals 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getOpCodes()I

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

    .line 221
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportOpCodes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    array-length v0, v0

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportParameterValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    array-length v2, v2

    .line 221
    :goto_1
    add-int/2addr v2, v0

    .line 225
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportRequestOpCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    array-length v0, v0

    .line 221
    :goto_2
    add-int/2addr v2, v0

    .line 227
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportResponseValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    array-length v0, v0

    .line 221
    :goto_3
    add-int/2addr v0, v2

    .line 229
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportResponseParameter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    array-length v1, v1

    .line 221
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 222
    goto :goto_0

    :cond_2
    move v2, v1

    .line 224
    goto :goto_1

    :cond_3
    move v0, v1

    .line 226
    goto :goto_2

    :cond_4
    move v0, v1

    .line 228
    goto :goto_3
.end method

.method public setOpCodes(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 364
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x0

    return v0

    .line 367
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    .line 368
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->updateGattCharacteristic()V

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public setParameterValue([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 399
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    .line 403
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->updateGattCharacteristic()V

    .line 404
    const/4 v0, 0x1

    return v0

    .line 401
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    goto :goto_0
.end method

.method public setRequestOpCode(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 439
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x0

    return v0

    .line 442
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    .line 443
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->updateGattCharacteristic()V

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public setResponseParameter([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 507
    if-nez p1, :cond_0

    .line 508
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    .line 512
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->updateGattCharacteristic()V

    .line 513
    const/4 v0, 0x1

    return v0

    .line 510
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    goto :goto_0
.end method

.method public setResponseValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 473
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    const/4 v0, 0x0

    return v0

    .line 476
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    .line 477
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->updateGattCharacteristic()V

    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportOpCodes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    array-length v0, v2

    .line 299
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    return v3

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mOpCodes:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 304
    add-int/lit8 v1, v0, 0x0

    .line 307
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportParameterValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    .line 309
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    array-length v0, v2

    .line 310
    .restart local v0    # "fieldLen":I
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mParameterValue:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 311
    add-int/2addr v1, v0

    .line 314
    .end local v0    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportRequestOpCode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 315
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    array-length v0, v2

    .line 317
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_3

    .line 318
    return v3

    .line 321
    :cond_3
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mRequestOpCode:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 322
    add-int/2addr v1, v0

    .line 325
    .end local v0    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportResponseValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 326
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    array-length v0, v2

    .line 328
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_5

    .line 329
    return v3

    .line 332
    :cond_5
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseValue:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 333
    add-int/2addr v1, v0

    .line 336
    .end local v0    # "fieldLen":I
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->isSupportResponseParameter()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 337
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    .line 338
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    array-length v0, v2

    .line 339
    .restart local v0    # "fieldLen":I
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->mResponseParameter:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 340
    add-int/2addr v1, v0

    .line 343
    .end local v0    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->updateGattCharacteristic()V

    .line 344
    const/4 v2, 0x1

    return v2
.end method
