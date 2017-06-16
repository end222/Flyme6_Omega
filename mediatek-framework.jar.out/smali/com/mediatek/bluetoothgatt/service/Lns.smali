.class public Lcom/mediatek/bluetoothgatt/service/Lns;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Lns.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "1819"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 66
    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Lns;->GATT_UUID:Ljava/util/UUID;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addLnControlPoint()V
    .locals 6

    .prologue
    .line 149
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_LN_CONTROL_POINT:Ljava/util/UUID;

    .line 153
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnControlPoint;->getValue()[B

    move-result-object v5

    .line 148
    const/4 v1, 0x0

    .line 150
    const/16 v3, 0x28

    .line 152
    const/16 v4, 0x10

    move-object v0, p0

    .line 147
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Lns;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 158
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 157
    const/4 v1, 0x1

    .line 159
    const/16 v2, 0x11

    .line 156
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Lns;->addDescriptor(ZLjava/util/UUID;I)V

    .line 145
    return-void
.end method

.method addLnFeature()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 98
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_LN_FEATURE:Ljava/util/UUID;

    .line 101
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LnFeature;->getValue()[B

    move-result-object v5

    .line 99
    const/4 v3, 0x2

    move-object v0, p0

    move v4, v1

    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Lns;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 94
    return-void
.end method

.method addLocationAndSpeed()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 113
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_LOCATION_AND_SPEED:Ljava/util/UUID;

    .line 116
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->getValue()[B

    move-result-object v5

    .line 114
    const/16 v3, 0x10

    .line 115
    const/4 v4, 0x0

    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Lns;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 121
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 122
    const/16 v2, 0x11

    .line 119
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Lns;->addDescriptor(ZLjava/util/UUID;I)V

    .line 109
    return-void
.end method

.method addNavigation()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 171
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_NAVIGATION:Ljava/util/UUID;

    .line 174
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/Navigation;->getValue()[B

    move-result-object v5

    .line 172
    const/16 v3, 0x10

    move-object v0, p0

    move v4, v1

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Lns;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 179
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 178
    const/4 v1, 0x1

    .line 180
    const/16 v2, 0x11

    .line 177
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Lns;->addDescriptor(ZLjava/util/UUID;I)V

    .line 167
    return-void
.end method

.method addPositionQuality()V
    .locals 6

    .prologue
    .line 134
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_POSITION_QUALITY:Ljava/util/UUID;

    .line 137
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PositionQuality;->getValue()[B

    move-result-object v5

    .line 133
    const/4 v1, 0x0

    .line 135
    const/4 v3, 0x2

    .line 136
    const/4 v4, 0x1

    move-object v0, p0

    .line 132
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Lns;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 130
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Lns;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Lns;->addLnFeature()V

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Lns;->addLocationAndSpeed()V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Lns;->addPositionQuality()V

    .line 87
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Lns;->addLnControlPoint()V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Lns;->addNavigation()V

    .line 83
    return-void
.end method
