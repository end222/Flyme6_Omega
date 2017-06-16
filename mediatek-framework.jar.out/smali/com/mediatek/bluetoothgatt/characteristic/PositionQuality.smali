.class public Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "PositionQuality.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;
    }
.end annotation


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mEhpe:[B

.field private mEvpe:[B

.field private mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

.field private mHdop:[B

.field private mNumberOfBeaconsInSolution:[B

.field private mNumberOfBeaconsInView:[B

.field private mTimeToFirstFix:[B

.field private mVdop:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A69"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    .line 83
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    .line 91
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    .line 107
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    .line 115
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    .line 123
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    .line 131
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 139
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;)Z

    .line 140
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setNumberOfBeaconsInSolution(I)Z

    .line 141
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setNumberOfBeaconsInView(I)Z

    .line 142
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setTimeToFirstFix(I)Z

    .line 143
    invoke-virtual {p0, v4, v5}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setEhpe(J)Z

    .line 144
    invoke-virtual {p0, v4, v5}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setEvpe(J)Z

    .line 145
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setHdop(I)Z

    .line 146
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setVdop(I)Z

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;IIIJJII)V
    .locals 3
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;
    .param p2, "numberOfBeaconsInSolution"    # I
    .param p3, "numberOfBeaconsInView"    # I
    .param p4, "timeToFirstFix"    # I
    .param p5, "ehpe"    # J
    .param p7, "evpe"    # J
    .param p9, "hdop"    # I
    .param p10, "vdop"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 182
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    .line 131
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;)Z

    .line 193
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setNumberOfBeaconsInSolution(I)Z

    .line 194
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setNumberOfBeaconsInView(I)Z

    .line 195
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setTimeToFirstFix(I)Z

    .line 196
    invoke-virtual {p0, p5, p6}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setEhpe(J)Z

    .line 197
    invoke-virtual {p0, p7, p8}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setEvpe(J)Z

    .line 198
    invoke-virtual {p0, p9}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setHdop(I)Z

    .line 199
    invoke-virtual {p0, p10}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setVdop(I)Z

    .line 190
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;IIIJJIILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;
    .param p2, "numberOfBeaconsInSolution"    # I
    .param p3, "numberOfBeaconsInView"    # I
    .param p4, "timeToFirstFix"    # I
    .param p5, "ehpe"    # J
    .param p7, "evpe"    # J
    .param p9, "hdop"    # I
    .param p10, "vdop"    # I
    .param p11, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 215
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    .line 131
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    .line 225
    invoke-virtual {p0, p11}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;)Z

    .line 227
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setNumberOfBeaconsInSolution(I)Z

    .line 228
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setNumberOfBeaconsInView(I)Z

    .line 229
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setTimeToFirstFix(I)Z

    .line 230
    invoke-virtual {p0, p5, p6}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setEhpe(J)Z

    .line 231
    invoke-virtual {p0, p7, p8}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setEvpe(J)Z

    .line 232
    invoke-virtual {p0, p9}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setHdop(I)Z

    .line 233
    invoke-virtual {p0, p10}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setVdop(I)Z

    .line 224
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 154
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    .line 131
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setValue([B)Z

    .line 154
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 165
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    .line 131
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    .line 166
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setValue([B)Z

    .line 165
    return-void
.end method


# virtual methods
.method public getEhpe()J
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint32ToLong([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEvpe()J
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint32ToLong([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlags()Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    return-object v0
.end method

.method public getHdop()I
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getNumberOfBeaconsInSolution()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getNumberOfBeaconsInView()I
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 282
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 284
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->length()I

    move-result v1

    .line 286
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 287
    add-int/lit8 v0, v1, 0x0

    .line 290
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportNumberOfBeaconsInSolution()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    array-length v1, v3

    .line 292
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 293
    add-int/2addr v0, v1

    .line 296
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportNumberOfBeaconsInView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    array-length v1, v3

    .line 298
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 299
    add-int/2addr v0, v1

    .line 302
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportTimeToFirstFix()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    array-length v1, v3

    .line 304
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 305
    add-int/2addr v0, v1

    .line 308
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportEhpe()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 309
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    array-length v1, v3

    .line 310
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 311
    add-int/2addr v0, v1

    .line 314
    .end local v1    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportEvpe()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 315
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    array-length v1, v3

    .line 316
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 317
    add-int/2addr v0, v1

    .line 320
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportHdop()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 321
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    array-length v1, v3

    .line 322
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 323
    add-int/2addr v0, v1

    .line 326
    .end local v1    # "fieldLen":I
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportVdop()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 327
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    array-length v1, v3

    .line 328
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 329
    add-int/2addr v0, v1

    .line 332
    .end local v1    # "fieldLen":I
    :cond_7
    return-object v2
.end method

.method public getVdop()I
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public isSupportEhpe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 605
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getEhpePresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportEvpe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 639
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getEvpePresent()I

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
    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportHdop()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 673
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getHdopPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportNumberOfBeaconsInSolution()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 503
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getNumberOfBeaconsInSolutionPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportNumberOfBeaconsInView()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 537
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getNumberOfBeaconsInViewPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportTimeToFirstFix()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 571
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getTimeToFirstFixPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportVdop()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 707
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->getVdopPresent()I

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

    .line 246
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->length()I

    move-result v0

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportNumberOfBeaconsInSolution()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    array-length v2, v2

    .line 246
    :goto_1
    add-int/2addr v2, v0

    .line 250
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportNumberOfBeaconsInView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    array-length v0, v0

    .line 246
    :goto_2
    add-int/2addr v2, v0

    .line 252
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportTimeToFirstFix()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    array-length v0, v0

    .line 246
    :goto_3
    add-int/2addr v2, v0

    .line 254
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportEhpe()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    array-length v0, v0

    .line 246
    :goto_4
    add-int/2addr v2, v0

    .line 256
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportEvpe()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 257
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    array-length v0, v0

    .line 246
    :goto_5
    add-int/2addr v2, v0

    .line 258
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportHdop()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 259
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    array-length v0, v0

    .line 246
    :goto_6
    add-int/2addr v0, v2

    .line 260
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportVdop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    array-length v1, v1

    .line 246
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 247
    goto :goto_0

    :cond_2
    move v2, v1

    .line 249
    goto :goto_1

    :cond_3
    move v0, v1

    .line 251
    goto :goto_2

    :cond_4
    move v0, v1

    .line 253
    goto :goto_3

    :cond_5
    move v0, v1

    .line 255
    goto :goto_4

    :cond_6
    move v0, v1

    .line 257
    goto :goto_5

    :cond_7
    move v0, v1

    .line 259
    goto :goto_6
.end method

.method public setEhpe(J)Z
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 591
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint32RangeCheck(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    const/4 v0, 0x0

    return v0

    .line 594
    :cond_0
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->longToUint32(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    .line 595
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 596
    const/4 v0, 0x1

    return v0
.end method

.method public setEvpe(J)Z
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 625
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint32RangeCheck(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    const/4 v0, 0x0

    return v0

    .line 628
    :cond_0
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->longToUint32(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    .line 629
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method public setFlags(Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    .line 459
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public setHdop(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 659
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    const/4 v0, 0x0

    return v0

    .line 662
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    .line 663
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method public setNumberOfBeaconsInSolution(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 489
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const/4 v0, 0x0

    return v0

    .line 492
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    .line 493
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 494
    const/4 v0, 0x1

    return v0
.end method

.method public setNumberOfBeaconsInView(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 523
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    return v0

    .line 526
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    .line 527
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeToFirstFix(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 557
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    const/4 v0, 0x0

    return v0

    .line 560
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    .line 561
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 343
    const/4 v2, 0x0

    .line 345
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->length()I

    move-result v1

    .line 348
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    return v4

    .line 352
    :cond_0
    new-array v0, v1, [B

    .line 354
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 355
    add-int/lit8 v2, v1, 0x0

    .line 357
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality$BfFlags;->setByteArray([B)V

    .line 360
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportNumberOfBeaconsInSolution()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 361
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    array-length v1, v3

    .line 363
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 364
    return v4

    .line 367
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInSolution:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 368
    add-int/2addr v2, v1

    .line 371
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportNumberOfBeaconsInView()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 372
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    array-length v1, v3

    .line 374
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_4

    .line 375
    return v4

    .line 378
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mNumberOfBeaconsInView:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 379
    add-int/2addr v2, v1

    .line 382
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportTimeToFirstFix()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 383
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    array-length v1, v3

    .line 385
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_6

    .line 386
    return v4

    .line 389
    :cond_6
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mTimeToFirstFix:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 390
    add-int/2addr v2, v1

    .line 393
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportEhpe()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 394
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    array-length v1, v3

    .line 396
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_8

    .line 397
    return v4

    .line 400
    :cond_8
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEhpe:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 401
    add-int/2addr v2, v1

    .line 404
    .end local v1    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportEvpe()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 405
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    array-length v1, v3

    .line 407
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_a

    .line 408
    return v4

    .line 411
    :cond_a
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mEvpe:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 412
    add-int/2addr v2, v1

    .line 415
    .end local v1    # "fieldLen":I
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportHdop()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 416
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    array-length v1, v3

    .line 418
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_c

    .line 419
    return v4

    .line 422
    :cond_c
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mHdop:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 423
    add-int/2addr v2, v1

    .line 426
    .end local v1    # "fieldLen":I
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->isSupportVdop()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 427
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    array-length v1, v3

    .line 429
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_e

    .line 430
    return v4

    .line 433
    :cond_e
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 434
    add-int/2addr v2, v1

    .line 437
    .end local v1    # "fieldLen":I
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 438
    const/4 v3, 0x1

    return v3
.end method

.method public setVdop(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 693
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const/4 v0, 0x0

    return v0

    .line 696
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->mVdop:[B

    .line 697
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->updateGattCharacteristic()V

    .line 698
    const/4 v0, 0x1

    return v0
.end method
