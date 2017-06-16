.class public Lcom/mediatek/bluetoothgatt/profile/CppCollector;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBase;
.source "CppCollector.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CppCollector"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;-><init>(Landroid/content/Context;)V

    .line 72
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "CppCollector()"

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
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

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

.method public readBasBatteryLevel()Z
    .locals 2

    .prologue
    .line 256
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readBasBatteryLevel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BAS:Ljava/util/UUID;

    .line 260
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BATTERY_LEVEL:Ljava/util/UUID;

    .line 258
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readBasBatteryLevelCccd()Z
    .locals 3

    .prologue
    .line 369
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readBasBatteryLevelCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BAS:Ljava/util/UUID;

    .line 373
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BATTERY_LEVEL:Ljava/util/UUID;

    .line 374
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 371
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readBasBatteryLevelCpfd()Z
    .locals 3

    .prologue
    .line 353
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readBasBatteryLevelCpfd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BAS:Ljava/util/UUID;

    .line 357
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BATTERY_LEVEL:Ljava/util/UUID;

    .line 358
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CHARACTERISTIC_PRESENTATION_FORMAT:Ljava/util/UUID;

    .line 355
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readCpsCyclingPowerControlPointCccd()Z
    .locals 3

    .prologue
    .line 337
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readCpsCyclingPowerControlPointCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 341
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_CONTROL_POINT:Ljava/util/UUID;

    .line 342
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 339
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readCpsCyclingPowerFeature()Z
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readCpsCyclingPowerFeature()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 95
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_FEATURE:Ljava/util/UUID;

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readCpsCyclingPowerMeasurementCccd()Z
    .locals 3

    .prologue
    .line 289
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readCpsCyclingPowerMeasurementCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 293
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_MEASUREMENT:Ljava/util/UUID;

    .line 294
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 291
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readCpsCyclingPowerMeasurementSccd()Z
    .locals 3

    .prologue
    .line 305
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readCpsCyclingPowerMeasurementSccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 309
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_MEASUREMENT:Ljava/util/UUID;

    .line 310
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_SERVER_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 307
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readCpsCyclingPowerVectorCccd()Z
    .locals 3

    .prologue
    .line 321
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readCpsCyclingPowerVectorCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 325
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_VECTOR:Ljava/util/UUID;

    .line 326
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 323
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readCpsSensorLocation()Z
    .locals 2

    .prologue
    .line 106
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readCpsSensorLocation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 110
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SENSOR_LOCATION:Ljava/util/UUID;

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisFirmwareRevisionString()Z
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readDisFirmwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 185
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    .line 183
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisHardwareRevisionString()Z
    .locals 2

    .prologue
    .line 166
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readDisHardwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 170
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisManufacturerNameString()Z
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readDisManufacturerNameString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 125
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisModelNumberString()Z
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readDisModelNumberString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 140
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisPnpId()Z
    .locals 2

    .prologue
    .line 241
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readDisPnpId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 245
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_PNP_ID:Ljava/util/UUID;

    .line 243
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisRegCertDataList()Z
    .locals 2

    .prologue
    .line 226
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readDisRegCertDataList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 230
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REG_CERT_DATA_LIST:Ljava/util/UUID;

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSerialNumberString()Z
    .locals 2

    .prologue
    .line 151
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readDisSerialNumberString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 155
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSoftwareRevisionString()Z
    .locals 2

    .prologue
    .line 196
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readDisSoftwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 200
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSystemId()Z
    .locals 2

    .prologue
    .line 211
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "readDisSystemId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 215
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public writeBasBatteryLevelCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 459
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "writeBasBatteryLevelCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BAS:Ljava/util/UUID;

    .line 463
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BATTERY_LEVEL:Ljava/util/UUID;

    .line 464
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 461
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method

.method public writeCpsCyclingPowerControlPoint(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z
    .locals 2
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 273
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "writeCpsCyclingPowerControlPoint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 275
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->writeCharacteristic(Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z

    move-result v0

    return v0
.end method

.method public writeCpsCyclingPowerControlPointCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 441
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "writeCpsCyclingPowerControlPointCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 445
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_CONTROL_POINT:Ljava/util/UUID;

    .line 446
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 443
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method

.method public writeCpsCyclingPowerMeasurementCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 387
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "writeCpsCyclingPowerMeasurementCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 391
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_MEASUREMENT:Ljava/util/UUID;

    .line 392
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 389
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method

.method public writeCpsCyclingPowerMeasurementSccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 405
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "writeCpsCyclingPowerMeasurementSccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 409
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_MEASUREMENT:Ljava/util/UUID;

    .line 410
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_SERVER_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 407
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method

.method public writeCpsCyclingPowerVectorCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 423
    const-string/jumbo v0, "CppCollector"

    const-string/jumbo v1, "writeCpsCyclingPowerVectorCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 427
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_VECTOR:Ljava/util/UUID;

    .line 428
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 425
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/CppCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method
