.class public Lcom/mediatek/bluetoothgatt/profile/CppCpSensor;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.source "CppCpSensor.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CppCpSensor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;-><init>(Landroid/content/Context;)V

    .line 74
    const-string/jumbo v0, "CppCpSensor"

    const-string/jumbo v1, "CppCpSensor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method


# virtual methods
.method protected loadServicesConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Cps;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Cps;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CppCpSensor;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 81
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Dis;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Dis;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CppCpSensor;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 82
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Bas;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Bas;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CppCpSensor;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 83
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CppCpSensor;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 84
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CppCpSensor;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 85
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BAS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/CppCpSensor;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 79
    return-void
.end method

.method public notifyBasBatteryLevel(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 148
    const-string/jumbo v0, "CppCpSensor"

    const-string/jumbo v1, "notifyBasBatteryLevel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BAS:Ljava/util/UUID;

    .line 152
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BATTERY_LEVEL:Ljava/util/UUID;

    .line 153
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 151
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CppCpSensor;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 146
    return-void
.end method

.method public notifyCpsCyclingPowerControlPoint(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 131
    const-string/jumbo v0, "CppCpSensor"

    const-string/jumbo v1, "notifyCpsCyclingPowerControlPoint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 135
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_CONTROL_POINT:Ljava/util/UUID;

    .line 136
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 134
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CppCpSensor;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 129
    return-void
.end method

.method public notifyCpsCyclingPowerMeasurement(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 97
    const-string/jumbo v0, "CppCpSensor"

    const-string/jumbo v1, "notifyCpsCyclingPowerMeasurement()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 101
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_MEASUREMENT:Ljava/util/UUID;

    .line 102
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 100
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CppCpSensor;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 95
    return-void
.end method

.method public notifyCpsCyclingPowerVector(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 114
    const-string/jumbo v0, "CppCpSensor"

    const-string/jumbo v1, "notifyCpsCyclingPowerVector()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CPS:Ljava/util/UUID;

    .line 118
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CYCLING_POWER_VECTOR:Ljava/util/UUID;

    .line 119
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 117
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/CppCpSensor;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 112
    return-void
.end method
