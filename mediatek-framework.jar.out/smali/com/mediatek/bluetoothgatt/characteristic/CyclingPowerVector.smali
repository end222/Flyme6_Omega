.class public Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "CyclingPowerVector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;
    }
.end annotation


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mCrankCumulativeCrankRevolutions:[B

.field private mCrankLastCrankEventTime:[B

.field private mFirstCrankMeasurementAngle:[B

.field private mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

.field private mInstantaneousForceMagnitudeArray:[B

.field private mInstantaneousTorqueMagnitudeArray:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A64"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    .line 83
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    .line 91
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    .line 99
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    .line 107
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    .line 115
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 123
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;)Z

    .line 124
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setCrankCumulativeCrankRevolutions(I)Z

    .line 125
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setCrankLastCrankEventTime(I)Z

    .line 126
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setFirstCrankMeasurementAngle(I)Z

    .line 127
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setInstantaneousForceMagnitudeArray([B)Z

    .line 128
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setInstantaneousTorqueMagnitudeArray([B)Z

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;III[B[B)V
    .locals 3
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;
    .param p2, "crankCumulativeCrankRevolutions"    # I
    .param p3, "crankLastCrankEventTime"    # I
    .param p4, "firstCrankMeasurementAngle"    # I
    .param p5, "instantaneousForceMagnitudeArray"    # [B
    .param p6, "instantaneousTorqueMagnitudeArray"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 162
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;)Z

    .line 171
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setCrankCumulativeCrankRevolutions(I)Z

    .line 172
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setCrankLastCrankEventTime(I)Z

    .line 173
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setFirstCrankMeasurementAngle(I)Z

    .line 174
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setInstantaneousForceMagnitudeArray([B)Z

    .line 175
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setInstantaneousTorqueMagnitudeArray([B)Z

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;III[B[BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;
    .param p2, "crankCumulativeCrankRevolutions"    # I
    .param p3, "crankLastCrankEventTime"    # I
    .param p4, "firstCrankMeasurementAngle"    # I
    .param p5, "instantaneousForceMagnitudeArray"    # [B
    .param p6, "instantaneousTorqueMagnitudeArray"    # [B
    .param p7, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 189
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    .line 197
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 198
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;)Z

    .line 199
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setCrankCumulativeCrankRevolutions(I)Z

    .line 200
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setCrankLastCrankEventTime(I)Z

    .line 201
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setFirstCrankMeasurementAngle(I)Z

    .line 202
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setInstantaneousForceMagnitudeArray([B)Z

    .line 203
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setInstantaneousTorqueMagnitudeArray([B)Z

    .line 196
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 136
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setValue([B)Z

    .line 136
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 147
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    .line 148
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setValue([B)Z

    .line 147
    return-void
.end method


# virtual methods
.method public getCrankCumulativeCrankRevolutions()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getCrankLastCrankEventTime()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getFirstCrankMeasurementAngle()I
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getFlags()Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    return-object v0
.end method

.method public getInstantaneousForceMagnitudeArray()[B
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    return-object v0
.end method

.method public getInstantaneousTorqueMagnitudeArray()[B
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 248
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 250
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->length()I

    move-result v1

    .line 252
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 253
    add-int/lit8 v0, v1, 0x0

    .line 256
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportCrankCumulativeCrankRevolutions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    array-length v1, v3

    .line 258
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 259
    add-int/2addr v0, v1

    .line 262
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportCrankLastCrankEventTime()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    array-length v1, v3

    .line 264
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 265
    add-int/2addr v0, v1

    .line 268
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportFirstCrankMeasurementAngle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    array-length v1, v3

    .line 270
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 271
    add-int/2addr v0, v1

    .line 274
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportInstantaneousForceMagnitudeArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 275
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    array-length v1, v3

    .line 276
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 277
    add-int/2addr v0, v1

    .line 280
    .end local v1    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportInstantaneousTorqueMagnitudeArray()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 281
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    array-length v1, v3

    .line 282
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 283
    add-int/2addr v0, v1

    .line 286
    .end local v1    # "fieldLen":I
    :cond_5
    return-object v2
.end method

.method public isSupportCrankCumulativeCrankRevolutions()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 427
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->getCrankRevolutionDataPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportCrankLastCrankEventTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 461
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->getCrankRevolutionDataPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportFirstCrankMeasurementAngle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 495
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->getFirstCrankMeasurementAnglePresent()I

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
    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportInstantaneousForceMagnitudeArray()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 530
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->getInstantaneousForceMagnitudeArrayPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportInstantaneousTorqueMagnitudeArray()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 565
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->getInstantaneousTorqueMagnitudeArrayPresent()I

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

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->length()I

    move-result v0

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportCrankCumulativeCrankRevolutions()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    array-length v2, v2

    .line 216
    :goto_1
    add-int/2addr v2, v0

    .line 220
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportCrankLastCrankEventTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    array-length v0, v0

    .line 216
    :goto_2
    add-int/2addr v2, v0

    .line 222
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportFirstCrankMeasurementAngle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    array-length v0, v0

    .line 216
    :goto_3
    add-int/2addr v2, v0

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportInstantaneousForceMagnitudeArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    array-length v0, v0

    .line 216
    :goto_4
    add-int/2addr v0, v2

    .line 226
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportInstantaneousTorqueMagnitudeArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    array-length v1, v1

    .line 216
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 217
    goto :goto_0

    :cond_2
    move v2, v1

    .line 219
    goto :goto_1

    :cond_3
    move v0, v1

    .line 221
    goto :goto_2

    :cond_4
    move v0, v1

    .line 223
    goto :goto_3

    :cond_5
    move v0, v1

    .line 225
    goto :goto_4
.end method

.method public setCrankCumulativeCrankRevolutions(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 413
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    return v0

    .line 416
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    .line 417
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public setCrankLastCrankEventTime(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 447
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x0

    return v0

    .line 450
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    .line 451
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public setFirstCrankMeasurementAngle(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 481
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    return v0

    .line 484
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    .line 485
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    .line 383
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousForceMagnitudeArray([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 515
    if-nez p1, :cond_0

    .line 516
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    .line 520
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 521
    const/4 v0, 0x1

    return v0

    .line 518
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    goto :goto_0
.end method

.method public setInstantaneousTorqueMagnitudeArray([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 550
    if-nez p1, :cond_0

    .line 551
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    .line 555
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 556
    const/4 v0, 0x1

    return v0

    .line 553
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    goto :goto_0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 297
    const/4 v2, 0x0

    .line 299
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->length()I

    move-result v1

    .line 302
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    return v4

    .line 306
    :cond_0
    new-array v0, v1, [B

    .line 308
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 309
    add-int/lit8 v2, v1, 0x0

    .line 311
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector$BfFlags;->setByteArray([B)V

    .line 314
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportCrankCumulativeCrankRevolutions()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 315
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    array-length v1, v3

    .line 317
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 318
    return v4

    .line 321
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankCumulativeCrankRevolutions:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 322
    add-int/2addr v2, v1

    .line 325
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportCrankLastCrankEventTime()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 326
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    array-length v1, v3

    .line 328
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_4

    .line 329
    return v4

    .line 332
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mCrankLastCrankEventTime:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 333
    add-int/2addr v2, v1

    .line 336
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportFirstCrankMeasurementAngle()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 337
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    array-length v1, v3

    .line 339
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_6

    .line 340
    return v4

    .line 343
    :cond_6
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mFirstCrankMeasurementAngle:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 344
    add-int/2addr v2, v1

    .line 347
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportInstantaneousForceMagnitudeArray()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 348
    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    .line 349
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    array-length v1, v3

    .line 350
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousForceMagnitudeArray:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 351
    add-int/2addr v2, v1

    .line 354
    .end local v1    # "fieldLen":I
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->isSupportInstantaneousTorqueMagnitudeArray()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 355
    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    .line 356
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    array-length v1, v3

    .line 357
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->mInstantaneousTorqueMagnitudeArray:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 358
    add-int/2addr v2, v1

    .line 361
    .end local v1    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->updateGattCharacteristic()V

    .line 362
    const/4 v3, 0x1

    return v3
.end method
