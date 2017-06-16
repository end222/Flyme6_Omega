.class public Lcom/mediatek/bluetoothgatt/profile/CscpCscSensor;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.source "CscpCscSensor.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CscpCscSensor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;-><init>(Landroid/content/Context;)V

    .line 73
    const-string/jumbo v0, "CscpCscSensor"

    const-string/jumbo v1, "CscpCscSensor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method


# virtual methods
.method protected loadServicesConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Cscs;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Cscs;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CscpCscSensor;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Dis;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Dis;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CscpCscSensor;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 81
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CSCS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CscpCscSensor;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 82
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CscpCscSensor;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 83
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CscpCscSensor;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 85
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/CscpCscSensor;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 78
    return-void
.end method

.method public notifyCscsCscMeasurement(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 98
    const-string/jumbo v0, "CscpCscSensor"

    const-string/jumbo v1, "notifyCscsCscMeasurement()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CSCS:Ljava/util/UUID;

    .line 102
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CSC_MEASUREMENT:Ljava/util/UUID;

    .line 103
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 101
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CscpCscSensor;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 96
    return-void
.end method

.method public notifyCscsScControlPoint(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 115
    const-string/jumbo v0, "CscpCscSensor"

    const-string/jumbo v1, "notifyCscsScControlPoint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CSCS:Ljava/util/UUID;

    .line 119
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SC_CONTROL_POINT:Ljava/util/UUID;

    .line 120
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 118
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CscpCscSensor;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 113
    return-void
.end method
