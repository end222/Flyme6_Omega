.class public Lcom/mediatek/bluetoothgatt/service/Cps;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Cps.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "1818"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 66
    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Cps;->GATT_UUID:Ljava/util/UUID;

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
.method addCyclingPowerControlPoint()V
    .locals 6

    .prologue
    .line 177
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_CONTROL_POINT:Ljava/util/UUID;

    .line 181
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;->getValue()[B

    move-result-object v5

    .line 176
    const/4 v1, 0x0

    .line 178
    const/16 v3, 0x28

    .line 180
    const/16 v4, 0x10

    move-object v0, p0

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Cps;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 186
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 185
    const/4 v1, 0x1

    .line 187
    const/16 v2, 0x11

    .line 184
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Cps;->addDescriptor(ZLjava/util/UUID;I)V

    .line 173
    return-void
.end method

.method addCyclingPowerFeature()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 126
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_FEATURE:Ljava/util/UUID;

    .line 129
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;->getValue()[B

    move-result-object v5

    .line 127
    const/4 v3, 0x2

    move-object v0, p0

    move v4, v1

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Cps;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 122
    return-void
.end method

.method addCyclingPowerMeasurement()V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 98
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_MEASUREMENT:Ljava/util/UUID;

    .line 101
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->getValue()[B

    move-result-object v5

    .line 99
    const/16 v3, 0x10

    move-object v0, p0

    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Cps;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 106
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 104
    invoke-virtual {p0, v1, v0, v6}, Lcom/mediatek/bluetoothgatt/service/Cps;->addDescriptor(ZLjava/util/UUID;I)V

    .line 113
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_SERVER_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 111
    invoke-virtual {p0, v4, v0, v6}, Lcom/mediatek/bluetoothgatt/service/Cps;->addDescriptor(ZLjava/util/UUID;I)V

    .line 94
    return-void
.end method

.method addCyclingPowerVector()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 156
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_VECTOR:Ljava/util/UUID;

    .line 159
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;->getValue()[B

    move-result-object v5

    .line 157
    const/16 v3, 0x10

    move-object v0, p0

    move v4, v1

    .line 154
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Cps;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 164
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 163
    const/4 v1, 0x1

    .line 165
    const/16 v2, 0x11

    .line 162
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Cps;->addDescriptor(ZLjava/util/UUID;I)V

    .line 152
    return-void
.end method

.method addSensorLocation()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 141
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SENSOR_LOCATION:Ljava/util/UUID;

    .line 144
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;->getValue()[B

    move-result-object v5

    .line 142
    const/4 v3, 0x2

    move-object v0, p0

    move v4, v1

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Cps;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 137
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Cps;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Cps;->addCyclingPowerMeasurement()V

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Cps;->addCyclingPowerFeature()V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Cps;->addSensorLocation()V

    .line 87
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Cps;->addCyclingPowerVector()V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Cps;->addCyclingPowerControlPoint()V

    .line 83
    return-void
.end method
