.class public Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "LocationAndSpeed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;
    }
.end annotation


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mElevation:[B

.field private mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

.field private mHeading:[B

.field private mInstantaneousSpeed:[B

.field private mLocationLatitude:[B

.field private mLocationLongitude:[B

.field private mRollingTime:[B

.field private mTotalDistance:[B

.field private mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A67"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    .line 83
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    .line 91
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    .line 99
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    .line 107
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    .line 115
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    .line 123
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    .line 138
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 146
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;)Z

    .line 147
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setInstantaneousSpeed(I)Z

    .line 148
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setTotalDistance(I)Z

    .line 149
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setLocationLatitude(I)Z

    .line 150
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setLocationLongitude(I)Z

    .line 151
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setElevation(I)Z

    .line 152
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setHeading(I)Z

    .line 153
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setRollingTime(I)Z

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;IIIIIIILcom/mediatek/bluetoothgatt/characteristic/DateTime;)V
    .locals 4
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;
    .param p2, "instantaneousSpeed"    # I
    .param p3, "totalDistance"    # I
    .param p4, "locationLatitude"    # I
    .param p5, "locationLongitude"    # I
    .param p6, "elevation"    # I
    .param p7, "heading"    # I
    .param p8, "rollingTime"    # I
    .param p9, "utcTime"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 190
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    .line 91
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    .line 99
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    .line 107
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    .line 138
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;)Z

    .line 202
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setInstantaneousSpeed(I)Z

    .line 203
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setTotalDistance(I)Z

    .line 204
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setLocationLatitude(I)Z

    .line 205
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setLocationLongitude(I)Z

    .line 206
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setElevation(I)Z

    .line 207
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setHeading(I)Z

    .line 208
    invoke-virtual {p0, p8}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setRollingTime(I)Z

    .line 209
    invoke-virtual {p0, p9}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setUtcTime(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;IIIIIIILcom/mediatek/bluetoothgatt/characteristic/DateTime;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;
    .param p2, "instantaneousSpeed"    # I
    .param p3, "totalDistance"    # I
    .param p4, "locationLatitude"    # I
    .param p5, "locationLongitude"    # I
    .param p6, "elevation"    # I
    .param p7, "heading"    # I
    .param p8, "rollingTime"    # I
    .param p9, "utcTime"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .param p10, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 226
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    .line 91
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    .line 99
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    .line 107
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    .line 138
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 237
    invoke-virtual {p0, p10}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;)Z

    .line 239
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setInstantaneousSpeed(I)Z

    .line 240
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setTotalDistance(I)Z

    .line 241
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setLocationLatitude(I)Z

    .line 242
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setLocationLongitude(I)Z

    .line 243
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setElevation(I)Z

    .line 244
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setHeading(I)Z

    .line 245
    invoke-virtual {p0, p8}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setRollingTime(I)Z

    .line 246
    invoke-virtual {p0, p9}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setUtcTime(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 236
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 161
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    .line 91
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    .line 99
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    .line 107
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    .line 138
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setValue([B)Z

    .line 161
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 172
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    .line 91
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    .line 99
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    .line 107
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    .line 138
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 173
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setValue([B)Z

    .line 172
    return-void
.end method


# virtual methods
.method public getElevation()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint24ToInt([B)I

    move-result v0

    return v0
.end method

.method public getFlags()Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    return-object v0
.end method

.method public getHeading()I
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getInstantaneousSpeed()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getLocationLatitude()I
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint32ToInt([B)I

    move-result v0

    return v0
.end method

.method public getLocationLongitude()I
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint32ToInt([B)I

    move-result v0

    return v0
.end method

.method public getRollingTime()I
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getTotalDistance()I
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint24ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUtcTime()Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 297
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 299
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->length()I

    move-result v1

    .line 301
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 302
    add-int/lit8 v0, v1, 0x0

    .line 305
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportInstantaneousSpeed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    array-length v1, v3

    .line 307
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 308
    add-int/2addr v0, v1

    .line 311
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportTotalDistance()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    array-length v1, v3

    .line 313
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 314
    add-int/2addr v0, v1

    .line 317
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportLocationLatitude()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    array-length v1, v3

    .line 319
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 320
    add-int/2addr v0, v1

    .line 323
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportLocationLongitude()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 324
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    array-length v1, v3

    .line 325
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 326
    add-int/2addr v0, v1

    .line 329
    .end local v1    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportElevation()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 330
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    array-length v1, v3

    .line 331
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 332
    add-int/2addr v0, v1

    .line 335
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportHeading()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 336
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    array-length v1, v3

    .line 337
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 338
    add-int/2addr v0, v1

    .line 341
    .end local v1    # "fieldLen":I
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportRollingTime()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 342
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    array-length v1, v3

    .line 343
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 344
    add-int/2addr v0, v1

    .line 347
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportUtcTime()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 348
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 349
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 350
    add-int/2addr v0, v1

    .line 353
    .end local v1    # "fieldLen":I
    :cond_8
    return-object v2
.end method

.method public isSupportElevation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 675
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getElevationPresent()I

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
    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportHeading()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 709
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getHeadingPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportInstantaneousSpeed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 539
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getInstantaneousSpeedPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportLocationLatitude()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 607
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getLocationPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportLocationLongitude()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 641
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getLocationPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportRollingTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 743
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getRollingTimePresent()I

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

    .line 573
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getTotalDistancePresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportUtcTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 791
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getUtcTimePresent()I

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

    .line 259
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->length()I

    move-result v0

    .line 261
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportInstantaneousSpeed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    array-length v2, v2

    .line 259
    :goto_1
    add-int/2addr v2, v0

    .line 263
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportTotalDistance()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    array-length v0, v0

    .line 259
    :goto_2
    add-int/2addr v2, v0

    .line 265
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportLocationLatitude()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    array-length v0, v0

    .line 259
    :goto_3
    add-int/2addr v2, v0

    .line 267
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportLocationLongitude()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    array-length v0, v0

    .line 259
    :goto_4
    add-int/2addr v2, v0

    .line 269
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportElevation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    array-length v0, v0

    .line 259
    :goto_5
    add-int/2addr v2, v0

    .line 271
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportHeading()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 272
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    array-length v0, v0

    .line 259
    :goto_6
    add-int/2addr v2, v0

    .line 273
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportRollingTime()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 274
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    array-length v0, v0

    .line 259
    :goto_7
    add-int/2addr v0, v2

    .line 275
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportUtcTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 259
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 260
    goto :goto_0

    :cond_2
    move v2, v1

    .line 262
    goto :goto_1

    :cond_3
    move v0, v1

    .line 264
    goto :goto_2

    :cond_4
    move v0, v1

    .line 266
    goto :goto_3

    :cond_5
    move v0, v1

    .line 268
    goto :goto_4

    :cond_6
    move v0, v1

    .line 270
    goto :goto_5

    :cond_7
    move v0, v1

    .line 272
    goto :goto_6

    :cond_8
    move v0, v1

    .line 274
    goto :goto_7
.end method

.method public setElevation(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 661
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint24RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    const/4 v0, 0x0

    return v0

    .line 664
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint24(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    .line 665
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 666
    const/4 v0, 0x1

    return v0
.end method

.method public setFlags(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    .line 495
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public setHeading(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 695
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    const/4 v0, 0x0

    return v0

    .line 698
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    .line 699
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 700
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousSpeed(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 525
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x0

    return v0

    .line 528
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    .line 529
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 530
    const/4 v0, 0x1

    return v0
.end method

.method public setLocationLatitude(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 593
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint32RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    const/4 v0, 0x0

    return v0

    .line 596
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint32(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    .line 597
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 598
    const/4 v0, 0x1

    return v0
.end method

.method public setLocationLongitude(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 627
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint32RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    const/4 v0, 0x0

    return v0

    .line 630
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint32(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    .line 631
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 632
    const/4 v0, 0x1

    return v0
.end method

.method public setRollingTime(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 729
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    const/4 v0, 0x0

    return v0

    .line 732
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    .line 733
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 734
    const/4 v0, 0x1

    return v0
.end method

.method public setTotalDistance(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 559
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint24RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    const/4 v0, 0x0

    return v0

    .line 562
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint24(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    .line 563
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 564
    const/4 v0, 0x1

    return v0
.end method

.method public setUtcTime(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    const/4 v0, 0x0

    return v0

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 782
    const/4 v0, 0x1

    return v0
.end method

.method public setUtcTime([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 763
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    const/4 v0, 0x0

    return v0

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 767
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 364
    const/4 v2, 0x0

    .line 366
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->length()I

    move-result v1

    .line 369
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 370
    return v4

    .line 373
    :cond_0
    new-array v0, v1, [B

    .line 375
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 376
    add-int/lit8 v2, v1, 0x0

    .line 378
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setByteArray([B)V

    .line 381
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportInstantaneousSpeed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 382
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    array-length v1, v3

    .line 384
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 385
    return v4

    .line 388
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mInstantaneousSpeed:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 389
    add-int/2addr v2, v1

    .line 392
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportTotalDistance()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 393
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    array-length v1, v3

    .line 395
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_4

    .line 396
    return v4

    .line 399
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mTotalDistance:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 400
    add-int/2addr v2, v1

    .line 403
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportLocationLatitude()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 404
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    array-length v1, v3

    .line 406
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_6

    .line 407
    return v4

    .line 410
    :cond_6
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLatitude:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 411
    add-int/2addr v2, v1

    .line 414
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportLocationLongitude()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 415
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    array-length v1, v3

    .line 417
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_8

    .line 418
    return v4

    .line 421
    :cond_8
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mLocationLongitude:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 422
    add-int/2addr v2, v1

    .line 425
    .end local v1    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportElevation()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 426
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    array-length v1, v3

    .line 428
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_a

    .line 429
    return v4

    .line 432
    :cond_a
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mElevation:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 433
    add-int/2addr v2, v1

    .line 436
    .end local v1    # "fieldLen":I
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportHeading()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 437
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    array-length v1, v3

    .line 439
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_c

    .line 440
    return v4

    .line 443
    :cond_c
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mHeading:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 444
    add-int/2addr v2, v1

    .line 447
    .end local v1    # "fieldLen":I
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportRollingTime()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 448
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    array-length v1, v3

    .line 450
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_e

    .line 451
    return v4

    .line 454
    :cond_e
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mRollingTime:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 455
    add-int/2addr v2, v1

    .line 458
    .end local v1    # "fieldLen":I
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->isSupportUtcTime()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 459
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 461
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_10

    .line 462
    return v4

    .line 465
    :cond_10
    new-array v0, v1, [B

    .line 467
    .restart local v0    # "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 468
    add-int/2addr v2, v1

    .line 470
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->mUtcTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    .line 473
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_11
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 474
    const/4 v3, 0x1

    return v3
.end method
