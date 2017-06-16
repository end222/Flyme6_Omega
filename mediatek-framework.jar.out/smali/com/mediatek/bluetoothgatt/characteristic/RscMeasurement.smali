.class public Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "RscMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;
    }
.end annotation


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

.field private mInstantaneousCadence:[B

.field private mInstantaneousSpeed:[B

.field private mInstantaneousStrideLength:[B

.field private mTotalDistance:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A53"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    .line 83
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    .line 99
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 115
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;)Z

    .line 116
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setInstantaneousSpeed(I)Z

    .line 117
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setInstantaneousCadence(I)Z

    .line 118
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setInstantaneousStrideLength(I)Z

    .line 119
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setTotalDistance(J)Z

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;IIIJ)V
    .locals 3
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;
    .param p2, "instantaneousSpeed"    # I
    .param p3, "instantaneousCadence"    # I
    .param p4, "instantaneousStrideLength"    # I
    .param p5, "totalDistance"    # J

    .prologue
    const/4 v1, 0x2

    .line 152
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;)Z

    .line 160
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setInstantaneousSpeed(I)Z

    .line 161
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setInstantaneousCadence(I)Z

    .line 162
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setInstantaneousStrideLength(I)Z

    .line 163
    invoke-virtual {p0, p5, p6}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setTotalDistance(J)Z

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;IIIJLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;
    .param p2, "instantaneousSpeed"    # I
    .param p3, "instantaneousCadence"    # I
    .param p4, "instantaneousStrideLength"    # I
    .param p5, "totalDistance"    # J
    .param p7, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x2

    .line 176
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    .line 183
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;)Z

    .line 185
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setInstantaneousSpeed(I)Z

    .line 186
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setInstantaneousCadence(I)Z

    .line 187
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setInstantaneousStrideLength(I)Z

    .line 188
    invoke-virtual {p0, p5, p6}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setTotalDistance(J)Z

    .line 182
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x2

    .line 127
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setValue([B)Z

    .line 127
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x2

    .line 138
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    .line 139
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setValue([B)Z

    .line 138
    return-void
.end method


# virtual methods
.method public getFlags()Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    return-object v0
.end method

.method public getInstantaneousCadence()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getInstantaneousSpeed()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getInstantaneousStrideLength()I
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getTotalDistance()J
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint32ToLong([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 231
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 233
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->length()I

    move-result v1

    .line 235
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 236
    add-int/lit8 v0, v1, 0x0

    .line 239
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportInstantaneousSpeed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    array-length v1, v3

    .line 241
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 242
    add-int/2addr v0, v1

    .line 245
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportInstantaneousCadence()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    array-length v1, v3

    .line 247
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 248
    add-int/2addr v0, v1

    .line 251
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportInstantaneousStrideLength()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    array-length v1, v3

    .line 253
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 254
    add-int/2addr v0, v1

    .line 257
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportTotalDistance()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    array-length v1, v3

    .line 259
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 260
    add-int/2addr v0, v1

    .line 263
    .end local v1    # "fieldLen":I
    :cond_4
    return-object v2
.end method

.method public isSupportFlags()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportInstantaneousCadence()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportInstantaneousSpeed()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportInstantaneousStrideLength()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 469
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->getInstantaneousStrideLengthPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportTotalDistance()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 503
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->getTotalDistancePresent()I

    move-result v1

    if-ne v1, v0, :cond_0

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

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->length()I

    move-result v0

    .line 203
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportInstantaneousSpeed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    array-length v2, v2

    .line 201
    :goto_1
    add-int/2addr v2, v0

    .line 205
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportInstantaneousCadence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    array-length v0, v0

    .line 201
    :goto_2
    add-int/2addr v2, v0

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportInstantaneousStrideLength()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    array-length v0, v0

    .line 201
    :goto_3
    add-int/2addr v0, v2

    .line 209
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportTotalDistance()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    array-length v1, v1

    .line 201
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 202
    goto :goto_0

    :cond_2
    move v2, v1

    .line 204
    goto :goto_1

    :cond_3
    move v0, v1

    .line 206
    goto :goto_2

    :cond_4
    move v0, v1

    .line 208
    goto :goto_3
.end method

.method public setFlags(Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    .line 357
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->updateGattCharacteristic()V

    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousCadence(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 421
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    return v0

    .line 424
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    .line 425
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->updateGattCharacteristic()V

    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousSpeed(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 387
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    const/4 v0, 0x0

    return v0

    .line 390
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    .line 391
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->updateGattCharacteristic()V

    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousStrideLength(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 455
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    return v0

    .line 458
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    .line 459
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->updateGattCharacteristic()V

    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public setTotalDistance(J)Z
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 489
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint32RangeCheck(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const/4 v0, 0x0

    return v0

    .line 492
    :cond_0
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->longToUint32(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    .line 493
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->updateGattCharacteristic()V

    .line 494
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 274
    const/4 v2, 0x0

    .line 276
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->length()I

    move-result v1

    .line 279
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    return v4

    .line 283
    :cond_0
    new-array v0, v1, [B

    .line 285
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 286
    add-int/lit8 v2, v1, 0x0

    .line 288
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement$BfFlags;->setByteArray([B)V

    .line 291
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportInstantaneousSpeed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    array-length v1, v3

    .line 294
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 295
    return v4

    .line 298
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousSpeed:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 299
    add-int/2addr v2, v1

    .line 302
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportInstantaneousCadence()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 303
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    array-length v1, v3

    .line 305
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_4

    .line 306
    return v4

    .line 309
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousCadence:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 310
    add-int/2addr v2, v1

    .line 313
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportInstantaneousStrideLength()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 314
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    array-length v1, v3

    .line 316
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_6

    .line 317
    return v4

    .line 320
    :cond_6
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mInstantaneousStrideLength:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 321
    add-int/2addr v2, v1

    .line 324
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->isSupportTotalDistance()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 325
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    array-length v1, v3

    .line 327
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_8

    .line 328
    return v4

    .line 331
    :cond_8
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->mTotalDistance:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 332
    add-int/2addr v2, v1

    .line 335
    .end local v1    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->updateGattCharacteristic()V

    .line 336
    const/4 v3, 0x1

    return v3
.end method
