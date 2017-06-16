.class public Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "CscMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;
    }
.end annotation


# static fields
.field public static final FLAGS_CRANK_REVOLUTION_DATA_PRESENT:I = 0x2

.field public static final FLAGS_WHEEL_REVOLUTION_DATA_PRESENT:I = 0x1

.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mCumulativeCrankRevolutions:[B

.field private mCumulativeWheelRevolutions:[B

.field private mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

.field private mLastCrankEventTime:[B

.field private mLastWheelEventTime:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A5B"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    .line 108
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 116
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;)Z

    .line 117
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCumulativeWheelRevolutions(J)Z

    .line 118
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setLastWheelEventTime(I)Z

    .line 119
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCumulativeCrankRevolutions(I)Z

    .line 120
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setLastCrankEventTime(I)Z

    .line 114
    return-void
.end method

.method public constructor <init>(IJIII)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "cumulativeWheelRevolutions"    # J
    .param p4, "lastWheelEventTime"    # I
    .param p5, "cumulativeCrankRevolutions"    # I
    .param p6, "lastCrankEventTime"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 202
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    .line 108
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 209
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->getFlags()Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->setWheelRevolutionDataPresent(I)Z

    .line 212
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->getFlags()Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->setCrankRevolutionDataPresent(I)Z

    .line 215
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCumulativeWheelRevolutions(J)Z

    .line 216
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setLastWheelEventTime(I)Z

    .line 217
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCumulativeCrankRevolutions(I)Z

    .line 218
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setLastCrankEventTime(I)Z

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;JIII)V
    .locals 2
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;
    .param p2, "cumulativeWheelRevolutions"    # J
    .param p4, "lastWheelEventTime"    # I
    .param p5, "cumulativeCrankRevolutions"    # I
    .param p6, "lastCrankEventTime"    # I

    .prologue
    const/4 v1, 0x2

    .line 153
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    .line 108
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;)Z

    .line 161
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCumulativeWheelRevolutions(J)Z

    .line 162
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setLastWheelEventTime(I)Z

    .line 163
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCumulativeCrankRevolutions(I)Z

    .line 164
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setLastCrankEventTime(I)Z

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;JIIILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;
    .param p2, "cumulativeWheelRevolutions"    # J
    .param p4, "lastWheelEventTime"    # I
    .param p5, "cumulativeCrankRevolutions"    # I
    .param p6, "lastCrankEventTime"    # I
    .param p7, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x2

    .line 177
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    .line 108
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    .line 184
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;)Z

    .line 186
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCumulativeWheelRevolutions(J)Z

    .line 187
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setLastWheelEventTime(I)Z

    .line 188
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCumulativeCrankRevolutions(I)Z

    .line 189
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setLastCrankEventTime(I)Z

    .line 183
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x2

    .line 128
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    .line 108
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setValue([B)Z

    .line 128
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x2

    .line 139
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    .line 108
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    .line 140
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setValue([B)Z

    .line 139
    return-void
.end method


# virtual methods
.method public getCumulativeCrankRevolutions()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getCumulativeWheelRevolutions()J
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint32ToLong([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlags()Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    return-object v0
.end method

.method public getLastCrankEventTime()I
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getLastWheelEventTime()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 258
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 260
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->length()I

    move-result v1

    .line 262
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 263
    add-int/lit8 v0, v1, 0x0

    .line 266
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportCumulativeWheelRevolutions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    array-length v1, v3

    .line 268
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 269
    add-int/2addr v0, v1

    .line 272
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportLastWheelEventTime()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    array-length v1, v3

    .line 274
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 275
    add-int/2addr v0, v1

    .line 278
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportCumulativeCrankRevolutions()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    array-length v1, v3

    .line 280
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 281
    add-int/2addr v0, v1

    .line 284
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportLastCrankEventTime()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 285
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    array-length v1, v3

    .line 286
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 287
    add-int/2addr v0, v1

    .line 290
    .end local v1    # "fieldLen":I
    :cond_4
    return-object v2
.end method

.method public isSupportCumulativeCrankRevolutions()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 496
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->getCrankRevolutionDataPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportCumulativeWheelRevolutions()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 428
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->getWheelRevolutionDataPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportFlags()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLastCrankEventTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 530
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->getCrankRevolutionDataPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportLastWheelEventTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 462
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->getWheelRevolutionDataPresent()I

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

    .line 228
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->length()I

    move-result v0

    .line 230
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportCumulativeWheelRevolutions()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    array-length v2, v2

    .line 228
    :goto_1
    add-int/2addr v2, v0

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportLastWheelEventTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    array-length v0, v0

    .line 228
    :goto_2
    add-int/2addr v2, v0

    .line 234
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportCumulativeCrankRevolutions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    array-length v0, v0

    .line 228
    :goto_3
    add-int/2addr v0, v2

    .line 236
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportLastCrankEventTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

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

.method public setCumulativeCrankRevolutions(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 482
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    const/4 v0, 0x0

    return v0

    .line 485
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    .line 486
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->updateGattCharacteristic()V

    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method public setCumulativeWheelRevolutions(J)Z
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 414
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint32RangeCheck(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    return v0

    .line 417
    :cond_0
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->longToUint32(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    .line 418
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->updateGattCharacteristic()V

    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    .line 384
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->updateGattCharacteristic()V

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public setLastCrankEventTime(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 516
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x0

    return v0

    .line 519
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    .line 520
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->updateGattCharacteristic()V

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public setLastWheelEventTime(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 448
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x0

    return v0

    .line 451
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    .line 452
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->updateGattCharacteristic()V

    .line 453
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 301
    const/4 v2, 0x0

    .line 303
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->length()I

    move-result v1

    .line 306
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    return v4

    .line 310
    :cond_0
    new-array v0, v1, [B

    .line 312
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 313
    add-int/lit8 v2, v1, 0x0

    .line 315
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement$BfFlags;->setByteArray([B)V

    .line 318
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportCumulativeWheelRevolutions()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    array-length v1, v3

    .line 321
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 322
    return v4

    .line 325
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeWheelRevolutions:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 326
    add-int/2addr v2, v1

    .line 329
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportLastWheelEventTime()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 330
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    array-length v1, v3

    .line 332
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_4

    .line 333
    return v4

    .line 336
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastWheelEventTime:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 337
    add-int/2addr v2, v1

    .line 340
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportCumulativeCrankRevolutions()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 341
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    array-length v1, v3

    .line 343
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_6

    .line 344
    return v4

    .line 347
    :cond_6
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mCumulativeCrankRevolutions:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 348
    add-int/2addr v2, v1

    .line 351
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->isSupportLastCrankEventTime()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 352
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    array-length v1, v3

    .line 354
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_8

    .line 355
    return v4

    .line 358
    :cond_8
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->mLastCrankEventTime:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 359
    add-int/2addr v2, v1

    .line 362
    .end local v1    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscMeasurement;->updateGattCharacteristic()V

    .line 363
    const/4 v3, 0x1

    return v3
.end method
