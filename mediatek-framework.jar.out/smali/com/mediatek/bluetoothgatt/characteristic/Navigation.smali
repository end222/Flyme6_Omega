.class public Lcom/mediatek/bluetoothgatt/characteristic/Navigation;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "Navigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;
    }
.end annotation


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mBearing:[B

.field private mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

.field private mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

.field private mHeading:[B

.field private mRemainingDistance:[B

.field private mRemainingVerticalDistance:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A68"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/Navigation;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    .line 83
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    .line 91
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    .line 99
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    .line 107
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    .line 114
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 122
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/Navigation;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;)Z

    .line 123
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setBearing(I)Z

    .line 124
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setHeading(I)Z

    .line 125
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setRemainingDistance(I)Z

    .line 126
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setRemainingVerticalDistance(I)Z

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;IIIILcom/mediatek/bluetoothgatt/characteristic/DateTime;)V
    .locals 3
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;
    .param p2, "bearing"    # I
    .param p3, "heading"    # I
    .param p4, "remainingDistance"    # I
    .param p5, "remainingVerticalDistance"    # I
    .param p6, "estimatedTimeOfArrival"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 160
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/Navigation;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    .line 99
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    .line 114
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;)Z

    .line 169
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setBearing(I)Z

    .line 170
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setHeading(I)Z

    .line 171
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setRemainingDistance(I)Z

    .line 172
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setRemainingVerticalDistance(I)Z

    .line 173
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setEstimatedTimeOfArrival(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;IIIILcom/mediatek/bluetoothgatt/characteristic/DateTime;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;
    .param p2, "bearing"    # I
    .param p3, "heading"    # I
    .param p4, "remainingDistance"    # I
    .param p5, "remainingVerticalDistance"    # I
    .param p6, "estimatedTimeOfArrival"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .param p7, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 187
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/Navigation;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    .line 99
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    .line 114
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 195
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;)Z

    .line 197
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setBearing(I)Z

    .line 198
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setHeading(I)Z

    .line 199
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setRemainingDistance(I)Z

    .line 200
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setRemainingVerticalDistance(I)Z

    .line 201
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setEstimatedTimeOfArrival(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 194
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 134
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/Navigation;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    .line 99
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    .line 114
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setValue([B)Z

    .line 134
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 145
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/Navigation;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    .line 99
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    .line 107
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    .line 114
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 146
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setValue([B)Z

    .line 145
    return-void
.end method


# virtual methods
.method public getBearing()I
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getEstimatedTimeOfArrival()Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    return-object v0
.end method

.method public getFlags()Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    return-object v0
.end method

.method public getHeading()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getRemainingDistance()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint24ToInt([B)I

    move-result v0

    return v0
.end method

.method public getRemainingVerticalDistance()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint24ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 246
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 248
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->length()I

    move-result v1

    .line 250
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 251
    add-int/lit8 v0, v1, 0x0

    .line 254
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportBearing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    array-length v1, v3

    .line 256
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 257
    add-int/2addr v0, v1

    .line 260
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportHeading()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    array-length v1, v3

    .line 262
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 263
    add-int/2addr v0, v1

    .line 266
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportRemainingDistance()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    array-length v1, v3

    .line 268
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 269
    add-int/2addr v0, v1

    .line 272
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportRemainingVerticalDistance()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 273
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    array-length v1, v3

    .line 274
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 275
    add-int/2addr v0, v1

    .line 278
    .end local v1    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportEstimatedTimeOfArrival()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 279
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 280
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 281
    add-int/2addr v0, v1

    .line 284
    .end local v1    # "fieldLen":I
    :cond_5
    return-object v2
.end method

.method public isSupportBearing()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportEstimatedTimeOfArrival()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 587
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getEstimatedTimeOfArrivalPresent()I

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
    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportHeading()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportRemainingDistance()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 505
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getRemainingDistancePresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportRemainingVerticalDistance()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 539
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->getRemainingVerticalDistancePresent()I

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

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->length()I

    move-result v0

    .line 216
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportBearing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    array-length v2, v2

    .line 214
    :goto_1
    add-int/2addr v2, v0

    .line 218
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportHeading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    array-length v0, v0

    .line 214
    :goto_2
    add-int/2addr v2, v0

    .line 220
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportRemainingDistance()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    array-length v0, v0

    .line 214
    :goto_3
    add-int/2addr v2, v0

    .line 222
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportRemainingVerticalDistance()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    array-length v0, v0

    .line 214
    :goto_4
    add-int/2addr v0, v2

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportEstimatedTimeOfArrival()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 214
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 215
    goto :goto_0

    :cond_2
    move v2, v1

    .line 217
    goto :goto_1

    :cond_3
    move v0, v1

    .line 219
    goto :goto_2

    :cond_4
    move v0, v1

    .line 221
    goto :goto_3

    :cond_5
    move v0, v1

    .line 223
    goto :goto_4
.end method

.method public setBearing(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 423
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x0

    return v0

    .line 426
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    .line 427
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public setEstimatedTimeOfArrival(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x0

    return v0

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 578
    const/4 v0, 0x1

    return v0
.end method

.method public setEstimatedTimeOfArrival([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 559
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    const/4 v0, 0x0

    return v0

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public setFlags(Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    .line 393
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method public setHeading(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 457
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    return v0

    .line 460
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    .line 461
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public setRemainingDistance(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 491
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint24RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    return v0

    .line 494
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint24(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    .line 495
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public setRemainingVerticalDistance(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 525
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint24RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x0

    return v0

    .line 528
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint24(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    .line 529
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 530
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 295
    const/4 v2, 0x0

    .line 297
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->length()I

    move-result v1

    .line 300
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    return v4

    .line 304
    :cond_0
    new-array v0, v1, [B

    .line 306
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 307
    add-int/lit8 v2, v1, 0x0

    .line 309
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation$BfFlags;->setByteArray([B)V

    .line 312
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportBearing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    array-length v1, v3

    .line 315
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 316
    return v4

    .line 319
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mBearing:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 320
    add-int/2addr v2, v1

    .line 323
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportHeading()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 324
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    array-length v1, v3

    .line 326
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_4

    .line 327
    return v4

    .line 330
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mHeading:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 331
    add-int/2addr v2, v1

    .line 334
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportRemainingDistance()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 335
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    array-length v1, v3

    .line 337
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_6

    .line 338
    return v4

    .line 341
    :cond_6
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingDistance:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 342
    add-int/2addr v2, v1

    .line 345
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportRemainingVerticalDistance()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 346
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    array-length v1, v3

    .line 348
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_8

    .line 349
    return v4

    .line 352
    :cond_8
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mRemainingVerticalDistance:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 353
    add-int/2addr v2, v1

    .line 356
    .end local v1    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->isSupportEstimatedTimeOfArrival()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 357
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 359
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_a

    .line 360
    return v4

    .line 363
    :cond_a
    new-array v0, v1, [B

    .line 365
    .restart local v0    # "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 366
    add-int/2addr v2, v1

    .line 368
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->mEstimatedTimeOfArrival:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    .line 371
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->updateGattCharacteristic()V

    .line 372
    const/4 v3, 0x1

    return v3
.end method
