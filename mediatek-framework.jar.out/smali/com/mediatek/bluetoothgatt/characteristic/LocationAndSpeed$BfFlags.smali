.class public Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;
.super Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.source "LocationAndSpeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BfFlags"
.end annotation


# static fields
.field private static final sLength:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;
    .param p2, "value"    # [B

    .prologue
    .line 821
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    .line 822
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 823
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setByteArray([B)V

    .line 821
    return-void
.end method


# virtual methods
.method public getElevationPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 904
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getElevationSource()I
    .locals 2

    .prologue
    .line 1048
    const/16 v0, 0xa

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getHeadingPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 928
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getHeadingSource()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 1072
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getInstantaneousSpeedPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 832
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getLocationPresent()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 880
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getPositionStatus()I
    .locals 2

    .prologue
    .line 1000
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getRollingTimePresent()I
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 952
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getSpeedAndDistanceFormat()I
    .locals 1

    .prologue
    const/16 v0, 0x9

    .line 1024
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getTotalDistancePresent()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 856
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getUtcTimePresent()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 976
    invoke-virtual {p0, v0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->getValue(II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x2

    return v0
.end method

.method public setElevationPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x3

    .line 915
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    const/4 v0, 0x0

    return v0

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 919
    const/4 v0, 0x1

    return v0
.end method

.method public setElevationSource(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1059
    const/16 v0, 0xa

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    const/4 v0, 0x0

    return v0

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 1063
    const/4 v0, 0x1

    return v0
.end method

.method public setHeadingPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x4

    .line 939
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 940
    const/4 v0, 0x0

    return v0

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 943
    const/4 v0, 0x1

    return v0
.end method

.method public setHeadingSource(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0xc

    .line 1083
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    const/4 v0, 0x0

    return v0

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 1087
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousSpeedPresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 843
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    return v1

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 847
    const/4 v0, 0x1

    return v0
.end method

.method public setLocationPresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x2

    .line 891
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    const/4 v0, 0x0

    return v0

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 895
    const/4 v0, 0x1

    return v0
.end method

.method public setPositionStatus(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1011
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    const/4 v0, 0x0

    return v0

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 1015
    const/4 v0, 0x1

    return v0
.end method

.method public setRollingTimePresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x5

    .line 963
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 964
    const/4 v0, 0x0

    return v0

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 967
    const/4 v0, 0x1

    return v0
.end method

.method public setSpeedAndDistanceFormat(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x9

    .line 1035
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    const/4 v0, 0x0

    return v0

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 1039
    const/4 v0, 0x1

    return v0
.end method

.method public setTotalDistancePresent(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 867
    invoke-virtual {p0, v1, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    const/4 v0, 0x0

    return v0

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 871
    return v1
.end method

.method public setUtcTimePresent(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x6

    .line 987
    invoke-virtual {p0, v0, v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->setValue(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    const/4 v0, 0x0

    return v0

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed$BfFlags;->this$0:Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocationAndSpeed;->updateGattCharacteristic()V

    .line 991
    const/4 v0, 0x1

    return v0
.end method
