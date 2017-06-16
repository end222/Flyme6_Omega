.class public Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "CscFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;
    }
.end annotation


# static fields
.field public static final CRANK_REVOLUTION_DATA:I = 0x2

.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final MULTI_SENSOR_LOCATIONS:I = 0x4

.field public static final WHEEL_REVOLUTION_DATA:I = 0x1


# instance fields
.field private mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A5C"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 88
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->setCscFeature(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;)Z

    .line 86
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "cscFeature"    # I

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    .line 143
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->setWheelRevolutionDataSupported(I)Z

    .line 146
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->setCrankRevolutionDataSupported(I)Z

    .line 149
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->setMultipleSensorLocationsSupported(I)Z

    .line 142
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;)V
    .locals 1
    .param p1, "cscFeature"    # Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->setCscFeature(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;)Z

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "cscFeature"    # Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    .line 132
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->setCscFeature(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;)Z

    .line 131
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->setValue([B)Z

    .line 96
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    .line 108
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->setValue([B)Z

    .line 107
    return-void
.end method


# virtual methods
.method public getCscFeature()Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 183
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 185
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->isSupportCscFeature()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->length()I

    move-result v1

    .line 187
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 188
    add-int/lit8 v0, v1, 0x0

    .line 191
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportCscFeature()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->isSupportCscFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->length()I

    move-result v0

    .line 161
    :goto_0
    return v0

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCscFeature(Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    .line 241
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->updateGattCharacteristic()V

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 202
    const/4 v2, 0x0

    .line 204
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->isSupportCscFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->length()I

    move-result v1

    .line 207
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    return v4

    .line 211
    :cond_0
    new-array v0, v1, [B

    .line 213
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 214
    add-int/lit8 v2, v1, 0x0

    .line 216
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->mCscFeature:Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature$BfCscFeature;->setByteArray([B)V

    .line 219
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CscFeature;->updateGattCharacteristic()V

    .line 220
    const/4 v3, 0x1

    return v3
.end method
