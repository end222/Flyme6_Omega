.class public Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "CyclingPowerMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;
    }
.end annotation


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mAccumulatedEnergy:[B

.field private mAccumulatedTorque:[B

.field private mBottomDeadSpotAngle:[B

.field private mCrankCumulativeCrankRevolutions:[B

.field private mCrankLastCrankEventTime:[B

.field private mExtremeAnglesMaximumAngle:[B

.field private mExtremeAnglesMinimumAngle:[B

.field private mExtremeMaximumForceMagnitude:[B

.field private mExtremeMaximumTorqueMagnitude:[B

.field private mExtremeMinimumForceMagnitude:[B

.field private mExtremeMinimumTorqueMagnitude:[B

.field private mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

.field private mInstantaneousPower:[B

.field private mPedalPowerBalance:[B

.field private mTopDeadSpotAngle:[B

.field private mWheelCumulativeWheelRevolutions:[B

.field private mWheelLastWheelEventTime:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A63"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 209
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    .line 115
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    .line 131
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    .line 139
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    .line 147
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    .line 155
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    .line 163
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    .line 171
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    .line 179
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    .line 187
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    .line 195
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    .line 203
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 211
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;)Z

    .line 212
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setInstantaneousPower(I)Z

    .line 213
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setPedalPowerBalance(I)Z

    .line 214
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setAccumulatedTorque(I)Z

    .line 215
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setWheelCumulativeWheelRevolutions(J)Z

    .line 216
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setWheelLastWheelEventTime(I)Z

    .line 217
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setCrankCumulativeCrankRevolutions(I)Z

    .line 218
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setCrankLastCrankEventTime(I)Z

    .line 219
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMaximumForceMagnitude(I)Z

    .line 220
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMinimumForceMagnitude(I)Z

    .line 221
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMaximumTorqueMagnitude(I)Z

    .line 222
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMinimumTorqueMagnitude(I)Z

    .line 223
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeAnglesMaximumAngle(I)Z

    .line 224
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeAnglesMinimumAngle(I)Z

    .line 225
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setTopDeadSpotAngle(I)Z

    .line 226
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setBottomDeadSpotAngle(I)Z

    .line 227
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setAccumulatedEnergy(I)Z

    .line 209
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;IIIJIIIIIIIIIIII)V
    .locals 3
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;
    .param p2, "instantaneousPower"    # I
    .param p3, "pedalPowerBalance"    # I
    .param p4, "accumulatedTorque"    # I
    .param p5, "wheelCumulativeWheelRevolutions"    # J
    .param p7, "wheelLastWheelEventTime"    # I
    .param p8, "crankCumulativeCrankRevolutions"    # I
    .param p9, "crankLastCrankEventTime"    # I
    .param p10, "extremeMaximumForceMagnitude"    # I
    .param p11, "extremeMinimumForceMagnitude"    # I
    .param p12, "extremeMaximumTorqueMagnitude"    # I
    .param p13, "extremeMinimumTorqueMagnitude"    # I
    .param p14, "extremeAnglesMaximumAngle"    # I
    .param p15, "extremeAnglesMinimumAngle"    # I
    .param p16, "topDeadSpotAngle"    # I
    .param p17, "bottomDeadSpotAngle"    # I
    .param p18, "accumulatedEnergy"    # I

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v1, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;)V

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    .line 83
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    .line 91
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    .line 99
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    .line 107
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    .line 115
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    .line 123
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    .line 131
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    .line 139
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    .line 147
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    .line 155
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    .line 163
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    .line 171
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    .line 179
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    .line 187
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    .line 195
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    .line 203
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    .line 290
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 291
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;)Z

    .line 292
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setInstantaneousPower(I)Z

    .line 293
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setPedalPowerBalance(I)Z

    .line 294
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setAccumulatedTorque(I)Z

    .line 295
    invoke-virtual {p0, p5, p6}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setWheelCumulativeWheelRevolutions(J)Z

    .line 296
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setWheelLastWheelEventTime(I)Z

    .line 297
    invoke-virtual {p0, p8}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setCrankCumulativeCrankRevolutions(I)Z

    .line 298
    invoke-virtual {p0, p9}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setCrankLastCrankEventTime(I)Z

    .line 299
    invoke-virtual {p0, p10}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMaximumForceMagnitude(I)Z

    .line 300
    invoke-virtual {p0, p11}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMinimumForceMagnitude(I)Z

    .line 301
    invoke-virtual {p0, p12}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMaximumTorqueMagnitude(I)Z

    .line 302
    move/from16 v0, p13

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMinimumTorqueMagnitude(I)Z

    .line 303
    move/from16 v0, p14

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeAnglesMaximumAngle(I)Z

    .line 304
    move/from16 v0, p15

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeAnglesMinimumAngle(I)Z

    .line 305
    move/from16 v0, p16

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setTopDeadSpotAngle(I)Z

    .line 306
    move/from16 v0, p17

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setBottomDeadSpotAngle(I)Z

    .line 307
    move/from16 v0, p18

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setAccumulatedEnergy(I)Z

    .line 289
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;IIIJIIIIIIIIIIIILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "flags"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;
    .param p2, "instantaneousPower"    # I
    .param p3, "pedalPowerBalance"    # I
    .param p4, "accumulatedTorque"    # I
    .param p5, "wheelCumulativeWheelRevolutions"    # J
    .param p7, "wheelLastWheelEventTime"    # I
    .param p8, "crankCumulativeCrankRevolutions"    # I
    .param p9, "crankLastCrankEventTime"    # I
    .param p10, "extremeMaximumForceMagnitude"    # I
    .param p11, "extremeMinimumForceMagnitude"    # I
    .param p12, "extremeMaximumTorqueMagnitude"    # I
    .param p13, "extremeMinimumTorqueMagnitude"    # I
    .param p14, "extremeAnglesMaximumAngle"    # I
    .param p15, "extremeAnglesMinimumAngle"    # I
    .param p16, "topDeadSpotAngle"    # I
    .param p17, "bottomDeadSpotAngle"    # I
    .param p18, "accumulatedEnergy"    # I
    .param p19, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v1, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;)V

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    .line 83
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    .line 91
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    .line 99
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    .line 107
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    .line 115
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    .line 123
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    .line 131
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    .line 139
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    .line 147
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    .line 155
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    .line 163
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    .line 171
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    .line 179
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    .line 187
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    .line 195
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    .line 203
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    .line 351
    move-object/from16 v0, p19

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 352
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;)Z

    .line 353
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setInstantaneousPower(I)Z

    .line 354
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setPedalPowerBalance(I)Z

    .line 355
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setAccumulatedTorque(I)Z

    .line 356
    invoke-virtual {p0, p5, p6}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setWheelCumulativeWheelRevolutions(J)Z

    .line 357
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setWheelLastWheelEventTime(I)Z

    .line 358
    invoke-virtual {p0, p8}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setCrankCumulativeCrankRevolutions(I)Z

    .line 359
    invoke-virtual {p0, p9}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setCrankLastCrankEventTime(I)Z

    .line 360
    invoke-virtual {p0, p10}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMaximumForceMagnitude(I)Z

    .line 361
    invoke-virtual {p0, p11}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMinimumForceMagnitude(I)Z

    .line 362
    invoke-virtual {p0, p12}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMaximumTorqueMagnitude(I)Z

    .line 363
    move/from16 v0, p13

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeMinimumTorqueMagnitude(I)Z

    .line 364
    move/from16 v0, p14

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeAnglesMaximumAngle(I)Z

    .line 365
    move/from16 v0, p15

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setExtremeAnglesMinimumAngle(I)Z

    .line 366
    move/from16 v0, p16

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setTopDeadSpotAngle(I)Z

    .line 367
    move/from16 v0, p17

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setBottomDeadSpotAngle(I)Z

    .line 368
    move/from16 v0, p18

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setAccumulatedEnergy(I)Z

    .line 350
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x2

    .line 235
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    .line 115
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    .line 131
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    .line 139
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    .line 147
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    .line 155
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    .line 163
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    .line 171
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    .line 179
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    .line 187
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    .line 195
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    .line 203
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValue([B)Z

    .line 235
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x2

    .line 246
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    .line 83
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    .line 99
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    .line 115
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    .line 131
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    .line 139
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    .line 147
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    .line 155
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    .line 163
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    .line 171
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    .line 179
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    .line 187
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    .line 195
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    .line 203
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    .line 247
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 248
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValue([B)Z

    .line 246
    return-void
.end method


# virtual methods
.method public getAccumulatedEnergy()I
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getAccumulatedTorque()I
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getBottomDeadSpotAngle()I
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getCrankCumulativeCrankRevolutions()I
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getCrankLastCrankEventTime()I
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getExtremeAnglesMaximumAngle()I
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint12ToInt([B)I

    move-result v0

    return v0
.end method

.method public getExtremeAnglesMinimumAngle()I
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint12ToInt([B)I

    move-result v0

    return v0
.end method

.method public getExtremeMaximumForceMagnitude()I
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getExtremeMaximumTorqueMagnitude()I
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getExtremeMinimumForceMagnitude()I
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getExtremeMinimumTorqueMagnitude()I
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getFlags()Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    return-object v0
.end method

.method public getInstantaneousPower()I
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getPedalPowerBalance()I
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getTopDeadSpotAngle()I
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 434
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 435
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 437
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->length()I

    move-result v1

    .line 439
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 440
    add-int/lit8 v0, v1, 0x0

    .line 443
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportInstantaneousPower()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    array-length v1, v3

    .line 445
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 446
    add-int/2addr v0, v1

    .line 449
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportPedalPowerBalance()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 450
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    array-length v1, v3

    .line 451
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 452
    add-int/2addr v0, v1

    .line 455
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportAccumulatedTorque()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 456
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    array-length v1, v3

    .line 457
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 458
    add-int/2addr v0, v1

    .line 461
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportWheelCumulativeWheelRevolutions()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 462
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    array-length v1, v3

    .line 463
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 464
    add-int/2addr v0, v1

    .line 467
    .end local v1    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportWheelLastWheelEventTime()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 468
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    array-length v1, v3

    .line 469
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 470
    add-int/2addr v0, v1

    .line 473
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportCrankCumulativeCrankRevolutions()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 474
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    array-length v1, v3

    .line 475
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 476
    add-int/2addr v0, v1

    .line 479
    .end local v1    # "fieldLen":I
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportCrankLastCrankEventTime()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 480
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    array-length v1, v3

    .line 481
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 482
    add-int/2addr v0, v1

    .line 485
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMaximumForceMagnitude()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 486
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    array-length v1, v3

    .line 487
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 488
    add-int/2addr v0, v1

    .line 491
    .end local v1    # "fieldLen":I
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMinimumForceMagnitude()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 492
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    array-length v1, v3

    .line 493
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 494
    add-int/2addr v0, v1

    .line 497
    .end local v1    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMaximumTorqueMagnitude()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 498
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    array-length v1, v3

    .line 499
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 500
    add-int/2addr v0, v1

    .line 503
    .end local v1    # "fieldLen":I
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMinimumTorqueMagnitude()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 504
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    array-length v1, v3

    .line 505
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 506
    add-int/2addr v0, v1

    .line 509
    .end local v1    # "fieldLen":I
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeAnglesMaximumAngle()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 510
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    array-length v1, v3

    .line 511
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 512
    add-int/2addr v0, v1

    .line 515
    .end local v1    # "fieldLen":I
    :cond_c
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeAnglesMinimumAngle()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 516
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    array-length v1, v3

    .line 517
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 518
    add-int/2addr v0, v1

    .line 521
    .end local v1    # "fieldLen":I
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportTopDeadSpotAngle()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 522
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    array-length v1, v3

    .line 523
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 524
    add-int/2addr v0, v1

    .line 527
    .end local v1    # "fieldLen":I
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportBottomDeadSpotAngle()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 528
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    array-length v1, v3

    .line 529
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 530
    add-int/2addr v0, v1

    .line 533
    .end local v1    # "fieldLen":I
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportAccumulatedEnergy()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 534
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    array-length v1, v3

    .line 535
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 536
    add-int/2addr v0, v1

    .line 539
    .end local v1    # "fieldLen":I
    :cond_10
    return-object v2
.end method

.method public getWheelCumulativeWheelRevolutions()J
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint32ToLong([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWheelLastWheelEventTime()I
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public isSupportAccumulatedEnergy()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1319
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getAccumulatedEnergyPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportAccumulatedTorque()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 877
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getAccumulatedTorquePresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportBottomDeadSpotAngle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1285
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getBottomDeadSpotAnglePresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportCrankCumulativeCrankRevolutions()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 979
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getCrankRevolutionDataPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportCrankLastCrankEventTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1013
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getCrankRevolutionDataPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportExtremeAnglesMaximumAngle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1183
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getExtremeAnglesPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportExtremeAnglesMinimumAngle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1217
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getExtremeAnglesPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportExtremeMaximumForceMagnitude()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1047
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getExtremeForceMagnitudesPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportExtremeMaximumTorqueMagnitude()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1115
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getExtremeTorqueMagnitudesPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportExtremeMinimumForceMagnitude()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1081
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getExtremeForceMagnitudesPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportExtremeMinimumTorqueMagnitude()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1149
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getExtremeTorqueMagnitudesPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportFlags()Z
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportInstantaneousPower()Z
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPedalPowerBalance()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 843
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getPedalPowerBalancePresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportTopDeadSpotAngle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1251
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getTopDeadSpotAnglePresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportWheelCumulativeWheelRevolutions()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 911
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getWheelRevolutionDataPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportWheelLastWheelEventTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 945
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->getWheelRevolutionDataPresent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->length()I

    move-result v0

    .line 383
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportInstantaneousPower()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    array-length v2, v2

    .line 381
    :goto_1
    add-int/2addr v2, v0

    .line 385
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportPedalPowerBalance()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 386
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    array-length v0, v0

    .line 381
    :goto_2
    add-int/2addr v2, v0

    .line 387
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportAccumulatedTorque()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    array-length v0, v0

    .line 381
    :goto_3
    add-int/2addr v2, v0

    .line 389
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportWheelCumulativeWheelRevolutions()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 390
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    array-length v0, v0

    .line 381
    :goto_4
    add-int/2addr v2, v0

    .line 391
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportWheelLastWheelEventTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 392
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    array-length v0, v0

    .line 381
    :goto_5
    add-int/2addr v2, v0

    .line 393
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportCrankCumulativeCrankRevolutions()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 394
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    array-length v0, v0

    .line 381
    :goto_6
    add-int/2addr v2, v0

    .line 395
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportCrankLastCrankEventTime()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 396
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    array-length v0, v0

    .line 381
    :goto_7
    add-int/2addr v2, v0

    .line 397
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMaximumForceMagnitude()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 398
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    array-length v0, v0

    .line 381
    :goto_8
    add-int/2addr v2, v0

    .line 399
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMinimumForceMagnitude()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 400
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    array-length v0, v0

    .line 381
    :goto_9
    add-int/2addr v2, v0

    .line 401
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMaximumTorqueMagnitude()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 402
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    array-length v0, v0

    .line 381
    :goto_a
    add-int/2addr v2, v0

    .line 403
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMinimumTorqueMagnitude()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 404
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    array-length v0, v0

    .line 381
    :goto_b
    add-int/2addr v2, v0

    .line 405
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeAnglesMaximumAngle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 406
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    array-length v0, v0

    .line 381
    :goto_c
    add-int/2addr v2, v0

    .line 407
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeAnglesMinimumAngle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 408
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    array-length v0, v0

    .line 381
    :goto_d
    add-int/2addr v2, v0

    .line 409
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportTopDeadSpotAngle()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 410
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    array-length v0, v0

    .line 381
    :goto_e
    add-int/2addr v2, v0

    .line 411
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportBottomDeadSpotAngle()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 412
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    array-length v0, v0

    .line 381
    :goto_f
    add-int/2addr v0, v2

    .line 413
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportAccumulatedEnergy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    array-length v1, v1

    .line 381
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 382
    goto/16 :goto_0

    :cond_2
    move v2, v1

    .line 384
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 386
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 388
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 390
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 392
    goto :goto_5

    :cond_7
    move v0, v1

    .line 394
    goto :goto_6

    :cond_8
    move v0, v1

    .line 396
    goto :goto_7

    :cond_9
    move v0, v1

    .line 398
    goto :goto_8

    :cond_a
    move v0, v1

    .line 400
    goto :goto_9

    :cond_b
    move v0, v1

    .line 402
    goto :goto_a

    :cond_c
    move v0, v1

    .line 404
    goto :goto_b

    :cond_d
    move v0, v1

    .line 406
    goto :goto_c

    :cond_e
    move v0, v1

    .line 408
    goto :goto_d

    :cond_f
    move v0, v1

    .line 410
    goto :goto_e

    :cond_10
    move v0, v1

    .line 412
    goto :goto_f
.end method

.method public setAccumulatedEnergy(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1305
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    const/4 v0, 0x0

    return v0

    .line 1308
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    .line 1309
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1310
    const/4 v0, 0x1

    return v0
.end method

.method public setAccumulatedTorque(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 863
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    const/4 v0, 0x0

    return v0

    .line 866
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    .line 867
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 868
    const/4 v0, 0x1

    return v0
.end method

.method public setBottomDeadSpotAngle(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1271
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    const/4 v0, 0x0

    return v0

    .line 1274
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    .line 1275
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1276
    const/4 v0, 0x1

    return v0
.end method

.method public setCrankCumulativeCrankRevolutions(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 965
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    const/4 v0, 0x0

    return v0

    .line 968
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    .line 969
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 970
    const/4 v0, 0x1

    return v0
.end method

.method public setCrankLastCrankEventTime(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 999
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    const/4 v0, 0x0

    return v0

    .line 1002
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    .line 1003
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1004
    const/4 v0, 0x1

    return v0
.end method

.method public setExtremeAnglesMaximumAngle(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1169
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint12RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    const/4 v0, 0x0

    return v0

    .line 1172
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint12(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    .line 1173
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1174
    const/4 v0, 0x1

    return v0
.end method

.method public setExtremeAnglesMinimumAngle(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1203
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint12RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    const/4 v0, 0x0

    return v0

    .line 1206
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint12(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    .line 1207
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1208
    const/4 v0, 0x1

    return v0
.end method

.method public setExtremeMaximumForceMagnitude(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1033
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    const/4 v0, 0x0

    return v0

    .line 1036
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    .line 1037
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1038
    const/4 v0, 0x1

    return v0
.end method

.method public setExtremeMaximumTorqueMagnitude(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1101
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    const/4 v0, 0x0

    return v0

    .line 1104
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    .line 1105
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1106
    const/4 v0, 0x1

    return v0
.end method

.method public setExtremeMinimumForceMagnitude(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1067
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    const/4 v0, 0x0

    return v0

    .line 1070
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    .line 1071
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1072
    const/4 v0, 0x1

    return v0
.end method

.method public setExtremeMinimumTorqueMagnitude(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1135
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    const/4 v0, 0x0

    return v0

    .line 1138
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    .line 1139
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1140
    const/4 v0, 0x1

    return v0
.end method

.method public setFlags(Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    .line 765
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 766
    const/4 v0, 0x1

    return v0
.end method

.method public setInstantaneousPower(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 795
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    const/4 v0, 0x0

    return v0

    .line 798
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    .line 799
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 800
    const/4 v0, 0x1

    return v0
.end method

.method public setPedalPowerBalance(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 829
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    const/4 v0, 0x0

    return v0

    .line 832
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    .line 833
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 834
    const/4 v0, 0x1

    return v0
.end method

.method public setTopDeadSpotAngle(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1237
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    const/4 v0, 0x0

    return v0

    .line 1240
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    .line 1241
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 1242
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 550
    const/4 v2, 0x0

    .line 552
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportFlags()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->length()I

    move-result v1

    .line 555
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    return v4

    .line 559
    :cond_0
    new-array v0, v1, [B

    .line 561
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 562
    add-int/lit8 v2, v1, 0x0

    .line 564
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mFlags:Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement$BfFlags;->setByteArray([B)V

    .line 567
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportInstantaneousPower()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 568
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    array-length v1, v3

    .line 570
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 571
    return v4

    .line 574
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mInstantaneousPower:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 575
    add-int/2addr v2, v1

    .line 578
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportPedalPowerBalance()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 579
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    array-length v1, v3

    .line 581
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_4

    .line 582
    return v4

    .line 585
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mPedalPowerBalance:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 586
    add-int/2addr v2, v1

    .line 589
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportAccumulatedTorque()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 590
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    array-length v1, v3

    .line 592
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_6

    .line 593
    return v4

    .line 596
    :cond_6
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedTorque:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 597
    add-int/2addr v2, v1

    .line 600
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportWheelCumulativeWheelRevolutions()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 601
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    array-length v1, v3

    .line 603
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_8

    .line 604
    return v4

    .line 607
    :cond_8
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 608
    add-int/2addr v2, v1

    .line 611
    .end local v1    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportWheelLastWheelEventTime()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 612
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    array-length v1, v3

    .line 614
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_a

    .line 615
    return v4

    .line 618
    :cond_a
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 619
    add-int/2addr v2, v1

    .line 622
    .end local v1    # "fieldLen":I
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportCrankCumulativeCrankRevolutions()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 623
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    array-length v1, v3

    .line 625
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_c

    .line 626
    return v4

    .line 629
    :cond_c
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankCumulativeCrankRevolutions:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 630
    add-int/2addr v2, v1

    .line 633
    .end local v1    # "fieldLen":I
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportCrankLastCrankEventTime()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 634
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    array-length v1, v3

    .line 636
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_e

    .line 637
    return v4

    .line 640
    :cond_e
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mCrankLastCrankEventTime:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 641
    add-int/2addr v2, v1

    .line 644
    .end local v1    # "fieldLen":I
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMaximumForceMagnitude()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 645
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    array-length v1, v3

    .line 647
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_10

    .line 648
    return v4

    .line 651
    :cond_10
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumForceMagnitude:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 652
    add-int/2addr v2, v1

    .line 655
    .end local v1    # "fieldLen":I
    :cond_11
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMinimumForceMagnitude()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 656
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    array-length v1, v3

    .line 658
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_12

    .line 659
    return v4

    .line 662
    :cond_12
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumForceMagnitude:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 663
    add-int/2addr v2, v1

    .line 666
    .end local v1    # "fieldLen":I
    :cond_13
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMaximumTorqueMagnitude()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 667
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    array-length v1, v3

    .line 669
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_14

    .line 670
    return v4

    .line 673
    :cond_14
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMaximumTorqueMagnitude:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 674
    add-int/2addr v2, v1

    .line 677
    .end local v1    # "fieldLen":I
    :cond_15
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeMinimumTorqueMagnitude()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 678
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    array-length v1, v3

    .line 680
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_16

    .line 681
    return v4

    .line 684
    :cond_16
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeMinimumTorqueMagnitude:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 685
    add-int/2addr v2, v1

    .line 688
    .end local v1    # "fieldLen":I
    :cond_17
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeAnglesMaximumAngle()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 689
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    array-length v1, v3

    .line 691
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_18

    .line 692
    return v4

    .line 695
    :cond_18
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMaximumAngle:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 696
    add-int/2addr v2, v1

    .line 699
    .end local v1    # "fieldLen":I
    :cond_19
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportExtremeAnglesMinimumAngle()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 700
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    array-length v1, v3

    .line 702
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 703
    return v4

    .line 706
    :cond_1a
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mExtremeAnglesMinimumAngle:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 707
    add-int/2addr v2, v1

    .line 710
    .end local v1    # "fieldLen":I
    :cond_1b
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportTopDeadSpotAngle()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 711
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    array-length v1, v3

    .line 713
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 714
    return v4

    .line 717
    :cond_1c
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mTopDeadSpotAngle:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 718
    add-int/2addr v2, v1

    .line 721
    .end local v1    # "fieldLen":I
    :cond_1d
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportBottomDeadSpotAngle()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 722
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    array-length v1, v3

    .line 724
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 725
    return v4

    .line 728
    :cond_1e
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mBottomDeadSpotAngle:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 729
    add-int/2addr v2, v1

    .line 732
    .end local v1    # "fieldLen":I
    :cond_1f
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->isSupportAccumulatedEnergy()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 733
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    array-length v1, v3

    .line 735
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_20

    .line 736
    return v4

    .line 739
    :cond_20
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mAccumulatedEnergy:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 740
    add-int/2addr v2, v1

    .line 743
    .end local v1    # "fieldLen":I
    :cond_21
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 744
    const/4 v3, 0x1

    return v3
.end method

.method public setWheelCumulativeWheelRevolutions(J)Z
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 897
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint32RangeCheck(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    const/4 v0, 0x0

    return v0

    .line 900
    :cond_0
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->longToUint32(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelCumulativeWheelRevolutions:[B

    .line 901
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 902
    const/4 v0, 0x1

    return v0
.end method

.method public setWheelLastWheelEventTime(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 931
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    const/4 v0, 0x0

    return v0

    .line 934
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->mWheelLastWheelEventTime:[B

    .line 935
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CyclingPowerMeasurement;->updateGattCharacteristic()V

    .line 936
    const/4 v0, 0x1

    return v0
.end method
