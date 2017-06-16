.class public Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClient;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBase;
.source "PaspPhoneAlertClient.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PaspPhoneAlertClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;-><init>(Landroid/content/Context;)V

    .line 72
    const-string/jumbo v0, "PaspPhoneAlertClient"

    const-string/jumbo v1, "PaspPhoneAlertClient()"

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
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

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

.method public readPassAlertStatus()Z
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "PaspPhoneAlertClient"

    const-string/jumbo v1, "readPassAlertStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    .line 95
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClient;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readPassAlertStatusCccd()Z
    .locals 3

    .prologue
    .line 139
    const-string/jumbo v0, "PaspPhoneAlertClient"

    const-string/jumbo v1, "readPassAlertStatusCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    .line 143
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    .line 144
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 141
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClient;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readPassRingerSetting()Z
    .locals 2

    .prologue
    .line 106
    const-string/jumbo v0, "PaspPhoneAlertClient"

    const-string/jumbo v1, "readPassRingerSetting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    .line 110
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClient;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readPassRingerSettingCccd()Z
    .locals 3

    .prologue
    .line 155
    const-string/jumbo v0, "PaspPhoneAlertClient"

    const-string/jumbo v1, "readPassRingerSettingCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    .line 159
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    .line 160
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 157
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClient;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public writePassAlertStatusCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 173
    const-string/jumbo v0, "PaspPhoneAlertClient"

    const-string/jumbo v1, "writePassAlertStatusCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    .line 177
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    .line 178
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 175
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClient;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method

.method public writePassRingerControlPoint(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z
    .locals 2
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 123
    const-string/jumbo v0, "PaspPhoneAlertClient"

    const-string/jumbo v1, "writePassRingerControlPoint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClient;->writeCharacteristic(Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z

    move-result v0

    return v0
.end method

.method public writePassRingerSettingCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 191
    const-string/jumbo v0, "PaspPhoneAlertClient"

    const-string/jumbo v1, "writePassRingerSettingCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    .line 195
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    .line 196
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 193
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClient;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method