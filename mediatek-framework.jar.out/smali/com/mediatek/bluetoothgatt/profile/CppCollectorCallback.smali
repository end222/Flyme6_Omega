.class public Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;
.source "CppCollectorCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CppCollectorCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 233
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 234
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 237
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 241
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    .line 240
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerMeasurementNotify(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;)V

    .line 242
    return-void

    .line 243
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_VECTOR:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 246
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    .line 245
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerVectorNotify(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;)V

    .line 247
    return-void

    .line 248
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 249
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 251
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;

    .line 250
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerControlPointNotify(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;)V

    .line 252
    return-void

    .line 255
    :cond_2
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BAS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BATTERY_LEVEL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 257
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 259
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;

    .line 258
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onBasBatteryLevelNotify(Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;)V

    .line 260
    return-void

    .line 265
    :cond_3
    const-string/jumbo v3, "CppCollectorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Characteristic UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method dispatchCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 79
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 82
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_FEATURE:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;-><init>()V

    .line 85
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 86
    if-nez p3, :cond_0

    .line 87
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 90
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;

    .line 89
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerFeatureReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;I)V

    .line 91
    return-void

    .line 92
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SENSOR_LOCATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;-><init>()V

    .line 94
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 95
    if-nez p3, :cond_2

    .line 96
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 99
    :cond_2
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;

    .line 98
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsSensorLocationReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;I)V

    .line 100
    return-void

    .line 103
    :cond_3
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 104
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 105
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;-><init>()V

    .line 106
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 107
    if-nez p3, :cond_4

    .line 108
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 111
    :cond_4
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    .line 110
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onDisManufacturerNameStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;I)V

    .line 112
    return-void

    .line 113
    :cond_5
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 114
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;-><init>()V

    .line 115
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 116
    if-nez p3, :cond_6

    .line 117
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 120
    :cond_6
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    .line 119
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onDisModelNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;I)V

    .line 121
    return-void

    .line 122
    :cond_7
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 123
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;-><init>()V

    .line 124
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 125
    if-nez p3, :cond_8

    .line 126
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 129
    :cond_8
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    .line 128
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onDisSerialNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;I)V

    .line 130
    return-void

    .line 131
    :cond_9
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 132
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;-><init>()V

    .line 133
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 134
    if-nez p3, :cond_a

    .line 135
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 138
    :cond_a
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    .line 137
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onDisHardwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;I)V

    .line 139
    return-void

    .line 140
    :cond_b
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 141
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;-><init>()V

    .line 142
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 143
    if-nez p3, :cond_c

    .line 144
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 147
    :cond_c
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    .line 146
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onDisFirmwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;I)V

    .line 148
    return-void

    .line 149
    :cond_d
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 150
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;-><init>()V

    .line 151
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 152
    if-nez p3, :cond_e

    .line 153
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 156
    :cond_e
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    .line 155
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onDisSoftwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;I)V

    .line 157
    return-void

    .line 158
    :cond_f
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 159
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;-><init>()V

    .line 160
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 161
    if-nez p3, :cond_10

    .line 162
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 165
    :cond_10
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    .line 164
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onDisSystemIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SystemId;I)V

    .line 166
    return-void

    .line 167
    :cond_11
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REG_CERT_DATA_LIST:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 168
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;-><init>()V

    .line 169
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 170
    if-nez p3, :cond_12

    .line 171
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 174
    :cond_12
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    .line 173
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onDisRegCertDataListReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;I)V

    .line 175
    return-void

    .line 176
    :cond_13
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_PNP_ID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 177
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;-><init>()V

    .line 178
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 179
    if-nez p3, :cond_14

    .line 180
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 183
    :cond_14
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    .line 182
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onDisPnpIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/PnpId;I)V

    .line 184
    return-void

    .line 187
    :cond_15
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BAS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 188
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BATTERY_LEVEL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 189
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;-><init>()V

    .line 190
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 191
    if-nez p3, :cond_16

    .line 192
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 195
    :cond_16
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;

    .line 194
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onBasBatteryLevelReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;I)V

    .line 196
    return-void

    .line 201
    :cond_17
    const-string/jumbo v3, "CppCollectorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Characteristic UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method dispatchCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 208
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 209
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 212
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;-><init>()V

    .line 215
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 216
    if-nez p3, :cond_0

    .line 217
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 220
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;

    .line 219
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerControlPointWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;I)V

    .line 221
    return-void

    .line 226
    :cond_1
    const-string/jumbo v3, "CppCollectorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Characteristic UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method dispatchDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 272
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 273
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 274
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 276
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 277
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 277
    if-eqz v3, :cond_0

    .line 279
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerMeasurementCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 280
    return-void

    .line 281
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_SERVER_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 281
    if-eqz v3, :cond_1

    .line 283
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerMeasurementSccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 284
    return-void

    .line 285
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_VECTOR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 285
    if-eqz v3, :cond_2

    .line 287
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerVectorCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 288
    return-void

    .line 289
    :cond_2
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 290
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 289
    if-eqz v3, :cond_3

    .line 291
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerControlPointCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 292
    return-void

    .line 295
    :cond_3
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BAS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 296
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BATTERY_LEVEL:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CHARACTERISTIC_PRESENTATION_FORMAT:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 296
    if-eqz v3, :cond_4

    .line 298
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onBasBatteryLevelCpfdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 299
    return-void

    .line 300
    :cond_4
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BATTERY_LEVEL:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 301
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 300
    if-eqz v3, :cond_5

    .line 302
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onBasBatteryLevelCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 303
    return-void

    .line 308
    :cond_5
    const-string/jumbo v3, "CppCollectorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Descriptor UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method dispatchDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 315
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 316
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 317
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 319
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 320
    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerMeasurementCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 323
    return-void

    .line 324
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_SERVER_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 324
    if-eqz v3, :cond_1

    .line 326
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerMeasurementSccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 327
    return-void

    .line 328
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_VECTOR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 328
    if-eqz v3, :cond_2

    .line 330
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerVectorCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 331
    return-void

    .line 332
    :cond_2
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 332
    if-eqz v3, :cond_3

    .line 334
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onCpsCyclingPowerControlPointCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 335
    return-void

    .line 338
    :cond_3
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BAS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 339
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BATTERY_LEVEL:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 340
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 339
    if-eqz v3, :cond_4

    .line 341
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/CppCollectorCallback;->onBasBatteryLevelCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 342
    return-void

    .line 347
    :cond_4
    const-string/jumbo v3, "CppCollectorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Descriptor UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method public onBasBatteryLevelCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 597
    return-void
.end method

.method public onBasBatteryLevelCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 663
    return-void
.end method

.method public onBasBatteryLevelCpfdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 584
    return-void
.end method

.method public onBasBatteryLevelNotify(Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;)V
    .locals 0
    .param p1, "batteryLevel"    # Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;

    .prologue
    .line 708
    return-void
.end method

.method public onBasBatteryLevelReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;I)V
    .locals 0
    .param p1, "batteryLevel"    # Lcom/mediatek/bluetoothgatt/characteristic/BatteryLevel;
    .param p2, "status"    # I

    .prologue
    .line 504
    return-void
.end method

.method public onCpsCyclingPowerControlPointCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 571
    return-void
.end method

.method public onCpsCyclingPowerControlPointCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 650
    return-void
.end method

.method public onCpsCyclingPowerControlPointNotify(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;)V
    .locals 0
    .param p1, "cyclingPowerControlPoint"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;

    .prologue
    .line 697
    return-void
.end method

.method public onCpsCyclingPowerControlPointWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;I)V
    .locals 0
    .param p1, "cyclingPowerControlPoint"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerControlPoint;
    .param p2, "status"    # I

    .prologue
    .line 518
    return-void
.end method

.method public onCpsCyclingPowerFeatureReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;I)V
    .locals 0
    .param p1, "cyclingPowerFeature"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerFeature;
    .param p2, "status"    # I

    .prologue
    .line 361
    return-void
.end method

.method public onCpsCyclingPowerMeasurementCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 532
    return-void
.end method

.method public onCpsCyclingPowerMeasurementCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 611
    return-void
.end method

.method public onCpsCyclingPowerMeasurementNotify(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;)V
    .locals 0
    .param p1, "cyclingPowerMeasurement"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;

    .prologue
    .line 675
    return-void
.end method

.method public onCpsCyclingPowerMeasurementSccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 545
    return-void
.end method

.method public onCpsCyclingPowerMeasurementSccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 624
    return-void
.end method

.method public onCpsCyclingPowerVectorCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 558
    return-void
.end method

.method public onCpsCyclingPowerVectorCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 637
    return-void
.end method

.method public onCpsCyclingPowerVectorNotify(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;)V
    .locals 0
    .param p1, "cyclingPowerVector"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerVector;

    .prologue
    .line 686
    return-void
.end method

.method public onCpsSensorLocationReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;I)V
    .locals 0
    .param p1, "sensorLocation"    # Lcom/mediatek/bluetoothgatt/characteristic/SensorLocation;
    .param p2, "status"    # I

    .prologue
    .line 374
    return-void
.end method

.method public onDisFirmwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;I)V
    .locals 0
    .param p1, "firmwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;
    .param p2, "status"    # I

    .prologue
    .line 439
    return-void
.end method

.method public onDisHardwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;I)V
    .locals 0
    .param p1, "hardwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;
    .param p2, "status"    # I

    .prologue
    .line 426
    return-void
.end method

.method public onDisManufacturerNameStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;I)V
    .locals 0
    .param p1, "manufacturerNameString"    # Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;
    .param p2, "status"    # I

    .prologue
    .line 387
    return-void
.end method

.method public onDisModelNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;I)V
    .locals 0
    .param p1, "modelNumberString"    # Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;
    .param p2, "status"    # I

    .prologue
    .line 400
    return-void
.end method

.method public onDisPnpIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/PnpId;I)V
    .locals 0
    .param p1, "pnpId"    # Lcom/mediatek/bluetoothgatt/characteristic/PnpId;
    .param p2, "status"    # I

    .prologue
    .line 491
    return-void
.end method

.method public onDisRegCertDataListReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;I)V
    .locals 0
    .param p1, "regCertDataList"    # Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;
    .param p2, "status"    # I

    .prologue
    .line 478
    return-void
.end method

.method public onDisSerialNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;I)V
    .locals 0
    .param p1, "serialNumberString"    # Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;
    .param p2, "status"    # I

    .prologue
    .line 413
    return-void
.end method

.method public onDisSoftwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;I)V
    .locals 0
    .param p1, "softwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;
    .param p2, "status"    # I

    .prologue
    .line 452
    return-void
.end method

.method public onDisSystemIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SystemId;I)V
    .locals 0
    .param p1, "systemId"    # Lcom/mediatek/bluetoothgatt/characteristic/SystemId;
    .param p2, "status"    # I

    .prologue
    .line 465
    return-void
.end method
