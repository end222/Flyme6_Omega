.class public Lcom/mediatek/bluetoothgatt/service/Rscs;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Rscs.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "1814"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 65
    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Rscs;->GATT_UUID:Ljava/util/UUID;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addRscFeature()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 117
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RSC_FEATURE:Ljava/util/UUID;

    .line 120
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscFeature;->getValue()[B

    move-result-object v5

    .line 118
    const/4 v3, 0x2

    move-object v0, p0

    move v4, v1

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Rscs;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 113
    return-void
.end method

.method addRscMeasurement()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 96
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RSC_MEASUREMENT:Ljava/util/UUID;

    .line 99
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RscMeasurement;->getValue()[B

    move-result-object v5

    .line 97
    const/16 v3, 0x10

    .line 98
    const/4 v4, 0x0

    move-object v0, p0

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Rscs;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 104
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 105
    const/16 v2, 0x11

    .line 102
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Rscs;->addDescriptor(ZLjava/util/UUID;I)V

    .line 92
    return-void
.end method

.method addScControlPoint()V
    .locals 6

    .prologue
    .line 147
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SC_CONTROL_POINT:Ljava/util/UUID;

    .line 151
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ScControlPoint;->getValue()[B

    move-result-object v5

    .line 146
    const/4 v1, 0x0

    .line 148
    const/16 v3, 0x28

    .line 150
    const/16 v4, 0x10

    move-object v0, p0

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Rscs;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 156
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 155
    const/4 v1, 0x1

    .line 157
    const/16 v2, 0x11

    .line 154
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Rscs;->addDescriptor(ZLjava/util/UUID;I)V

    .line 143
    return-void
.end method

.method addSensorLocation()V
    .locals 6

    .prologue
    .line 132
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SENSOR_LOCATION:Ljava/util/UUID;

    .line 135
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->getValue()[B

    move-result-object v5

    .line 131
    const/4 v1, 0x0

    .line 133
    const/4 v3, 0x2

    .line 134
    const/4 v4, 0x1

    move-object v0, p0

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Rscs;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 128
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Rscs;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Rscs;->addRscMeasurement()V

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Rscs;->addRscFeature()V

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Rscs;->addSensorLocation()V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Rscs;->addScControlPoint()V

    .line 82
    return-void
.end method
