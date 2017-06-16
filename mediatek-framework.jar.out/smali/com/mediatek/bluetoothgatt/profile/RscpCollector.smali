.class public Lcom/mediatek/bluetoothgatt/profile/RscpCollector;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBase;
.source "RscpCollector.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "RscpCollector"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;-><init>(Landroid/content/Context;)V

    .line 72
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "RscpCollector()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method


# virtual methods
.method protected handleServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)Z
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RSCS:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readDisFirmwareRevisionString()Z
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readDisFirmwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 185
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    .line 183
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisHardwareRevisionString()Z
    .locals 2

    .prologue
    .line 166
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readDisHardwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 170
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisManufacturerNameString()Z
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readDisManufacturerNameString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 125
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisModelNumberString()Z
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readDisModelNumberString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 140
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisPnpId()Z
    .locals 2

    .prologue
    .line 241
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readDisPnpId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 245
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_PNP_ID:Ljava/util/UUID;

    .line 243
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisRegCertDataList()Z
    .locals 2

    .prologue
    .line 226
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readDisRegCertDataList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 230
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REG_CERT_DATA_LIST:Ljava/util/UUID;

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSerialNumberString()Z
    .locals 2

    .prologue
    .line 151
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readDisSerialNumberString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 155
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSoftwareRevisionString()Z
    .locals 2

    .prologue
    .line 196
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readDisSoftwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 200
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSystemId()Z
    .locals 2

    .prologue
    .line 211
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readDisSystemId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 215
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readRscsRscFeature()Z
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readRscsRscFeature()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RSCS:Ljava/util/UUID;

    .line 95
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RSC_FEATURE:Ljava/util/UUID;

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readRscsRscMeasurementCccd()Z
    .locals 3

    .prologue
    .line 274
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readRscsRscMeasurementCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RSCS:Ljava/util/UUID;

    .line 278
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RSC_MEASUREMENT:Ljava/util/UUID;

    .line 279
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 276
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readRscsScControlPointCccd()Z
    .locals 3

    .prologue
    .line 290
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readRscsScControlPointCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RSCS:Ljava/util/UUID;

    .line 294
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SC_CONTROL_POINT:Ljava/util/UUID;

    .line 295
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 292
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readRscsSensorLocation()Z
    .locals 2

    .prologue
    .line 106
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "readRscsSensorLocation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RSCS:Ljava/util/UUID;

    .line 110
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SENSOR_LOCATION:Ljava/util/UUID;

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public writeRscsRscMeasurementCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 308
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "writeRscsRscMeasurementCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RSCS:Ljava/util/UUID;

    .line 312
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RSC_MEASUREMENT:Ljava/util/UUID;

    .line 313
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 310
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method

.method public writeRscsScControlPoint(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z
    .locals 2
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 258
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "writeRscsScControlPoint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RSCS:Ljava/util/UUID;

    .line 260
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->writeCharacteristic(Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z

    move-result v0

    return v0
.end method

.method public writeRscsScControlPointCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 326
    const-string/jumbo v0, "RscpCollector"

    const-string/jumbo v1, "writeRscsScControlPointCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RSCS:Ljava/util/UUID;

    .line 330
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SC_CONTROL_POINT:Ljava/util/UUID;

    .line 331
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 328
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/RscpCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method
