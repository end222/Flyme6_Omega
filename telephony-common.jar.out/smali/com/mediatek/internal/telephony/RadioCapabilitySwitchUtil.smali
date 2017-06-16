.class public Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;
.super Ljava/lang/Object;
.source "RadioCapabilitySwitchUtil.java"


# static fields
.field public static final CN_MCC:Ljava/lang/String; = "460"

.field public static final DO_SWITCH:I = 0x0

.field public static final ICCID_ERROR:I = 0x3

.field public static final IMSI_NOT_READY:Ljava/lang/String; = "0"

.field public static final IMSI_NOT_READY_OR_SIM_LOCKED:I = 0x2

.field public static final IMSI_READY:Ljava/lang/String; = "1"

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAIN_SIM_PROP:Ljava/lang/String; = "persist.radio.simswitch.iccid"

.field public static final NOT_SHOW_DIALOG:I = 0x1

.field public static final NOT_SWITCH:I = 0x1

.field public static final NOT_SWITCH_SIM_INFO_NOT_READY:I = 0x2

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field public static final OP01_6M_PRIORITY_OP01_SIM:I = 0x1

.field public static final OP01_6M_PRIORITY_OP01_USIM:I = 0x0

.field public static final OP01_6M_PRIORITY_OTHER:I = 0x2

.field private static final PLMN_TABLE_OP01:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP02:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP09:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP18:[Ljava/lang/String;

.field private static final PROPERTY_ICCID:Ljava/lang/String; = "ril.iccid.sim"

.field private static final PROPERTY_SIM_ICCID:[Ljava/lang/String;

.field private static final PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

.field public static final SHOW_DIALOG:I = 0x0

.field public static final SIM_OP_INFO_OP01:I = 0x2

.field public static final SIM_OP_INFO_OP02:I = 0x3

.field public static final SIM_OP_INFO_OP09:I = 0x4

.field public static final SIM_OP_INFO_OP18:I = 0x5

.field public static final SIM_OP_INFO_OVERSEA:I = 0x1

.field public static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field public static final SIM_SWITCH_MODE_DUAL_TALK:I = 0x3

.field public static final SIM_SWITCH_MODE_DUAL_TALK_SWAP:I = 0x4

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS:I = 0x1

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE:I = 0x2

.field public static final SIM_TYPE_OTHER:I = 0x2

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_USIM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    .line 86
    const-string/jumbo v1, "46000"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46002"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46007"

    aput-object v1, v0, v5

    const-string/jumbo v1, "46008"

    aput-object v1, v0, v6

    const-string/jumbo v1, "45412"

    aput-object v1, v0, v7

    const-string/jumbo v1, "45413"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "00101"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "00211"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "00321"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "00431"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "00541"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "00651"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "00761"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "00871"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "00902"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "01012"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "01122"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "01232"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "46004"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "46602"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "50270"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 85
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    .line 94
    new-array v0, v7, [Ljava/lang/String;

    .line 95
    const-string/jumbo v1, "46001"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46006"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46009"

    aput-object v1, v0, v5

    const-string/jumbo v1, "45407"

    aput-object v1, v0, v6

    .line 94
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    .line 99
    new-array v0, v7, [Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "46005"

    aput-object v1, v0, v3

    const-string/jumbo v1, "45502"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46003"

    aput-object v1, v0, v5

    const-string/jumbo v1, "46011"

    aput-object v1, v0, v6

    .line 99
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    .line 104
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    .line 105
    const-string/jumbo v1, "405840"

    aput-object v1, v0, v3

    const-string/jumbo v1, "405854"

    aput-object v1, v0, v4

    const-string/jumbo v1, "405855"

    aput-object v1, v0, v5

    const-string/jumbo v1, "405856"

    aput-object v1, v0, v6

    .line 106
    const-string/jumbo v1, "405857"

    aput-object v1, v0, v7

    const-string/jumbo v1, "405858"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "405855"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "405856"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 107
    const-string/jumbo v1, "405857"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "405858"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "405859"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "405860"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "405861"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "405862"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "405863"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "405864"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 109
    const-string/jumbo v1, "405865"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "405866"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "405867"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "405868"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "405869"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "405870"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "405871"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "405872"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "405873"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "405874"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 104
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    .line 117
    new-array v0, v7, [Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    .line 119
    const-string/jumbo v1, "ril.iccid.sim2"

    aput-object v1, v0, v4

    .line 120
    const-string/jumbo v1, "ril.iccid.sim3"

    aput-object v1, v0, v5

    .line 121
    const-string/jumbo v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    .line 117
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    .line 133
    new-array v0, v7, [Ljava/lang/String;

    .line 134
    const-string/jumbo v1, "ril.imsi.status.sim1"

    aput-object v1, v0, v3

    .line 135
    const-string/jumbo v1, "ril.imsi.status.sim2"

    aput-object v1, v0, v4

    .line 136
    const-string/jumbo v1, "ril.imsi.status.sim3"

    aput-object v1, v0, v5

    .line 137
    const-string/jumbo v1, "ril.imsi.status.sim4"

    aput-object v1, v0, v6

    .line 133
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOp01(I[I[I)Z
    .locals 11
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 445
    const-string/jumbo v6, "persist.radio.simswitch"

    const-string/jumbo v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 444
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 446
    .local v0, "curPhoneId":I
    const/4 v3, 0x0

    .line 447
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 448
    .local v4, "insertedStatus":I
    array-length v5, p1

    .line 449
    .local v5, "phoneNum":I
    new-array v1, v5, [Ljava/lang/String;

    .line 450
    .local v1, "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ril.iccid.sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 452
    const-string/jumbo v6, "N/A"

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 453
    add-int/lit8 v3, v3, 0x1

    .line 454
    shl-int v6, v8, v2

    or-int/2addr v4, v6

    .line 450
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkOp01 : curPhoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", insertedSimCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 459
    if-ne v3, v8, :cond_2

    .line 460
    const-string/jumbo v6, "checkOp01 : single SIM case, switch!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 461
    return v8

    .line 463
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isOp01LCProject()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 464
    aget v6, p2, p0

    if-ne v6, v10, :cond_3

    .line 465
    aget v6, p2, v0

    if-eq v6, v10, :cond_3

    .line 466
    const-string/jumbo v6, "checkOp01 : case L+C; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 467
    return v9

    .line 470
    :cond_3
    aget v6, p1, p0

    if-ne v6, v10, :cond_6

    .line 471
    aget v6, p2, p0

    if-nez v6, :cond_5

    .line 472
    aget v6, p1, v0

    if-ne v6, v10, :cond_4

    .line 473
    aget v6, p2, v0

    if-eqz v6, :cond_4

    .line 474
    const-string/jumbo v6, "checkOp01 : case 1,2; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 475
    return v9

    .line 479
    :cond_4
    const-string/jumbo v6, "checkOp01 : case 3,4"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 480
    return v8

    .line 485
    :cond_5
    const-string/jumbo v6, "checkOp01 : case 1,2"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 486
    return v8

    .line 488
    :cond_6
    aget v6, p1, p0

    if-ne v6, v8, :cond_a

    .line 489
    aget v6, p1, v0

    if-ne v6, v10, :cond_7

    .line 490
    const-string/jumbo v6, "checkOp01 : case 1,2,3,4; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 491
    return v9

    .line 492
    :cond_7
    aget v6, p2, p0

    if-nez v6, :cond_9

    .line 493
    aget v6, p1, v0

    if-ne v6, v8, :cond_8

    .line 494
    aget v6, p2, v0

    if-eqz v6, :cond_8

    .line 495
    const-string/jumbo v6, "checkOp01 : case 5,6; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 496
    return v9

    .line 500
    :cond_8
    const-string/jumbo v6, "checkOp01 : case 7,8"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 501
    return v8

    .line 506
    :cond_9
    const-string/jumbo v6, "checkOp01 : case 5,6"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 507
    return v8

    .line 510
    :cond_a
    if-ne v3, v10, :cond_b

    .line 511
    aget v6, p2, v0

    if-ne v6, v10, :cond_b

    .line 512
    aget v6, p2, p0

    if-ne v6, v10, :cond_b

    .line 513
    const-string/jumbo v6, "checkOp01 : case C+C, switch!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 514
    return v8

    .line 516
    :cond_b
    aget v6, p1, p0

    if-nez v6, :cond_c

    .line 517
    const-string/jumbo v6, "checkOp01 : case 10, target IMSI not ready"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 518
    if-gt v4, v10, :cond_c

    .line 519
    const-string/jumbo v6, "checkOp01 : case 10, single SIM case, switch!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 520
    return v8

    .line 523
    :cond_c
    const-string/jumbo v6, "ro.mtk_world_phone_policy"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 524
    aget v6, p1, v0

    if-eq v6, v10, :cond_d

    .line 525
    aget v6, p1, v0

    if-eq v6, v8, :cond_d

    .line 526
    const-string/jumbo v6, "checkOp01 : case 11, op01-B, switch it!"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 527
    return v8

    .line 531
    :cond_d
    const-string/jumbo v6, "checkOp01 : case 9"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 532
    return v9
.end method

.method private static checkOp01LC(I[I[I)Z
    .locals 12
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 538
    const-string/jumbo v7, "persist.radio.simswitch"

    const-string/jumbo v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 537
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 539
    .local v0, "curPhoneId":I
    const/4 v3, 0x0

    .line 540
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 541
    .local v4, "insertedStatus":I
    array-length v5, p1

    .line 542
    .local v5, "phoneNum":I
    new-array v1, v5, [Ljava/lang/String;

    .line 543
    .local v1, "currIccId":[Ljava/lang/String;
    new-array v6, v5, [I

    .line 544
    .local v6, "priority":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_4

    .line 545
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ril.iccid.sim"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 546
    const-string/jumbo v7, "N/A"

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 547
    add-int/lit8 v3, v3, 0x1

    .line 548
    shl-int v7, v9, v2

    or-int/2addr v4, v7

    .line 550
    :cond_0
    aget v7, p1, v2

    if-ne v7, v11, :cond_3

    .line 551
    aget v7, p2, v2

    if-ne v7, v9, :cond_2

    .line 552
    aput v10, v6, v2

    .line 544
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    :cond_2
    aget v7, p2, v2

    if-nez v7, :cond_1

    .line 554
    aput v9, v6, v2

    goto :goto_1

    .line 557
    :cond_3
    aput v11, v6, v2

    goto :goto_1

    .line 561
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkOp01LC(curPhoneId): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 562
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkOp01LC(insertedSimCount): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 563
    if-ne v3, v9, :cond_5

    .line 564
    const-string/jumbo v7, "checkOp01LC : single SIM case, switch!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 565
    return v9

    .line 567
    :cond_5
    aget v7, v6, p0

    aget v8, v6, v0

    if-gt v7, v8, :cond_6

    .line 568
    const-string/jumbo v7, "checkOp01LC : target priority greater than or equal to current, switch!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 569
    return v9

    .line 571
    :cond_6
    const-string/jumbo v7, "checkOp01LC : target priority lower than current; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 572
    return v10
.end method

.method private static checkOp18(I[I[I)Z
    .locals 5
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 577
    const-string/jumbo v1, "persist.radio.simswitch"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 579
    .local v0, "curPhoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOp18 : curPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 580
    aget v1, p1, p0

    if-ne v1, v4, :cond_0

    .line 582
    const-string/jumbo v1, "checkOp18 : case 1"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 583
    return v3

    .line 585
    :cond_0
    aget v1, p1, v0

    if-ne v1, v4, :cond_1

    .line 586
    const-string/jumbo v1, "checkOp18 : case 2; stay in current phone"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 587
    const/4 v1, 0x0

    return v1

    .line 589
    :cond_1
    const-string/jumbo v1, "checkOp18 : case 3; all are not op18"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 590
    return v3
.end method

.method public static clearRilMccMnc(I)V
    .locals 3
    .param p0, "slot"    # I

    .prologue
    .line 797
    if-nez p0, :cond_0

    .line 798
    const-string/jumbo v0, "gsm.sim.ril.mcc.mnc"

    .line 802
    .local v0, "propStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clear property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 795
    return-void

    .line 800
    .end local v0    # "propStr":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "propStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I
    .locals 5
    .param p0, "curId"    # I
    .param p1, "op01Usim"    # [Z
    .param p2, "op01Sim"    # [Z
    .param p3, "overseaUsim"    # [Z
    .param p4, "overseaSim"    # [Z

    .prologue
    const/4 v4, -0x1

    .line 370
    const/4 v2, -0x1

    .line 371
    .local v2, "targetSim":I
    array-length v1, p1

    .line 373
    .local v1, "phoneNum":I
    aget-boolean v3, p1, p0

    if-eqz v3, :cond_0

    .line 374
    return p0

    .line 376
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 377
    aget-boolean v3, p1, v0

    if-eqz v3, :cond_1

    .line 378
    move v2, v0

    .line 376
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_2
    if-ne v2, v4, :cond_3

    aget-boolean v3, p2, p0

    if-eqz v3, :cond_4

    .line 382
    :cond_3
    return v2

    .line 384
    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_6

    .line 385
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_5

    .line 386
    move v2, v0

    .line 384
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 389
    :cond_6
    if-ne v2, v4, :cond_7

    aget-boolean v3, p3, p0

    if-eqz v3, :cond_8

    .line 390
    :cond_7
    return v2

    .line 392
    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_a

    .line 393
    aget-boolean v3, p3, v0

    if-eqz v3, :cond_9

    .line 394
    move v2, v0

    .line 392
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 397
    :cond_a
    if-ne v2, v4, :cond_b

    aget-boolean v3, p4, p0

    if-eqz v3, :cond_c

    .line 398
    :cond_b
    return v2

    .line 400
    :cond_c
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_e

    .line 401
    aget-boolean v3, p4, v0

    if-eqz v3, :cond_d

    .line 402
    move v2, v0

    .line 400
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 405
    :cond_e
    return v2
.end method

.method public static getHighestPriorityPhone(I[I)I
    .locals 9
    .param p0, "capPhoneId"    # I
    .param p1, "priority"    # [I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 416
    const/4 v4, 0x0

    .line 417
    .local v4, "targetPhone":I
    array-length v3, p1

    .line 418
    .local v3, "phoneNum":I
    const/4 v1, 0x0

    .line 419
    .local v1, "highestPriorityCount":I
    const/4 v0, 0x0

    .line 421
    .local v0, "highestPriorityBitMap":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 422
    aget v5, p1, v2

    aget v6, p1, v4

    if-ge v5, v6, :cond_1

    .line 423
    move v4, v2

    .line 424
    const/4 v1, 0x1

    .line 425
    shl-int v0, v7, v2

    .line 421
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    :cond_1
    aget v5, p1, v2

    aget v6, p1, v4

    if-ne v5, v6, :cond_0

    .line 427
    add-int/lit8 v1, v1, 0x1

    .line 428
    shl-int v5, v7, v2

    or-int/2addr v0, v5

    goto :goto_1

    .line 431
    :cond_2
    if-ne v1, v7, :cond_3

    .line 432
    return v4

    .line 433
    :cond_3
    if-ne p0, v8, :cond_4

    .line 436
    return v8

    .line 437
    :cond_4
    shl-int v5, v7, p0

    and-int/2addr v5, v0

    if-eqz v5, :cond_5

    .line 438
    return p0

    .line 440
    :cond_5
    return v8
.end method

.method public static getMainCapabilityPhoneId()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "phoneId":I
    const-string/jumbo v2, "ro.mtk_dt_support"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 603
    const-string/jumbo v2, "persist.ril.simswitch.swapmode"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 604
    .local v1, "swapMode":I
    if-ne v1, v4, :cond_1

    .line 605
    const/4 v0, 0x0

    .line 612
    .end local v1    # "swapMode":I
    :cond_0
    :goto_0
    const-string/jumbo v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[RadioCapSwitchUtil] getMainCapabilityPhoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return v0

    .line 606
    .restart local v1    # "swapMode":I
    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 607
    const/4 v0, 0x1

    goto :goto_0

    .line 610
    .end local v1    # "swapMode":I
    :cond_2
    const-string/jumbo v2, "persist.radio.simswitch"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private static getSimImsiStatus(I)Ljava/lang/String;
    .locals 2
    .param p0, "slot"    # I

    .prologue
    .line 791
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 792
    .local v0, "propStr":Ljava/lang/String;
    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimInfo([I[II)Z
    .locals 9
    .param p0, "simOpInfo"    # [I
    .param p1, "simType"    # [I
    .param p2, "insertedStatus"    # I

    .prologue
    .line 180
    array-length v5, p0

    new-array v3, v5, [Ljava/lang/String;

    .line 181
    .local v3, "strMnc":[Ljava/lang/String;
    array-length v5, p0

    new-array v4, v5, [Ljava/lang/String;

    .line 184
    .local v4, "strSimType":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_18

    .line 185
    if-nez v0, :cond_7

    .line 186
    const-string/jumbo v2, "gsm.ril.uicctype"

    .line 190
    .local v2, "propStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 191
    aget-object v5, v4, v0

    const-string/jumbo v6, "SIM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 192
    const/4 v5, 0x0

    aput v5, p1, v0

    .line 198
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SimType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", simType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 200
    if-nez v0, :cond_a

    .line 201
    const-string/jumbo v2, "gsm.sim.ril.mcc.mnc"

    .line 205
    :goto_3
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 206
    aget-object v5, v3, v0

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    aget-object v5, v3, v0

    const-string/jumbo v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 206
    if-nez v5, :cond_0

    .line 208
    aget-object v5, v3, v0

    const-string/jumbo v6, "sim_absent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 206
    if-eqz v5, :cond_c

    .line 209
    :cond_0
    const-string/jumbo v5, "1"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimImsiStatus(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 210
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isOp01LCProject()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    aget v5, p1, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ril.uim.subscriberid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 215
    :cond_1
    aget-object v5, v3, v0

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 216
    aget-object v5, v3, v0

    const-string/jumbo v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 215
    if-nez v5, :cond_2

    .line 217
    aget-object v5, v3, v0

    const-string/jumbo v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 215
    if-nez v5, :cond_2

    .line 218
    aget-object v5, v3, v0

    const-string/jumbo v6, "sim_absent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 215
    if-eqz v5, :cond_3

    .line 219
    :cond_2
    const-string/jumbo v2, "gsm.sim.operator.imsi"

    .line 220
    const-string/jumbo v5, ""

    invoke-static {v0, v2, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 222
    :cond_3
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_b

    .line 223
    aget-object v5, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 227
    :cond_4
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strMnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 233
    :cond_5
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insertedStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 234
    if-ltz p2, :cond_e

    const/4 v5, 0x1

    shl-int/2addr v5, v0

    and-int/2addr v5, p2

    if-lez v5, :cond_e

    .line 235
    aget-object v5, v3, v0

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    aget-object v5, v3, v0

    const-string/jumbo v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 236
    :cond_6
    const-string/jumbo v5, "SIM is inserted but no imsi"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 237
    const/4 v5, 0x0

    return v5

    .line 188
    .end local v2    # "propStr":Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gsm.ril.uicctype."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "propStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 193
    :cond_8
    aget-object v5, v4, v0

    const-string/jumbo v6, "USIM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 194
    const/4 v5, 0x1

    aput v5, p1, v0

    goto/16 :goto_2

    .line 196
    :cond_9
    const/4 v5, 0x2

    aput v5, p1, v0

    goto/16 :goto_2

    .line 203
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 224
    :cond_b
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4

    .line 225
    aget-object v5, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    goto/16 :goto_4

    .line 230
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strMnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] from ril.mcc.mnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 239
    :cond_d
    aget-object v5, v3, v0

    const-string/jumbo v6, "sim_lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 240
    const-string/jumbo v5, "SIM is lock, wait pin unlock"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 241
    const/4 v5, 0x0

    return v5

    .line 244
    :cond_e
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_6
    if-ge v5, v7, :cond_f

    aget-object v1, v6, v5

    .line 245
    .local v1, "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 246
    const/4 v5, 0x2

    aput v5, p0, v0

    .line 250
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_f
    aget v5, p0, v0

    if-nez v5, :cond_10

    .line 251
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_7
    if-ge v5, v7, :cond_10

    aget-object v1, v6, v5

    .line 252
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 253
    const/4 v5, 0x3

    aput v5, p0, v0

    .line 258
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_10
    aget v5, p0, v0

    if-nez v5, :cond_11

    .line 259
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_8
    if-ge v5, v7, :cond_11

    aget-object v1, v6, v5

    .line 260
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 261
    const/4 v5, 0x4

    aput v5, p0, v0

    .line 266
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_11
    const-string/jumbo v5, "ro.operator.optr"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "OP18"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 267
    aget v5, p0, v0

    if-nez v5, :cond_12

    .line 268
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_9
    if-ge v5, v7, :cond_12

    aget-object v1, v6, v5

    .line 269
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 270
    const/4 v5, 0x5

    aput v5, p0, v0

    .line 276
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_12
    aget v5, p0, v0

    if-nez v5, :cond_13

    .line 277
    aget-object v5, v3, v0

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 278
    const/4 v5, 0x1

    aput v5, p0, v0

    .line 281
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strMnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", simOpInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 244
    .restart local v1    # "mccmnc":Ljava/lang/String;
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 251
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 259
    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 268
    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 283
    .end local v1    # "mccmnc":Ljava/lang/String;
    .end local v2    # "propStr":Ljava/lang/String;
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSimInfo(simOpInfo): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSimInfo(simType): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 285
    const/4 v5, 0x1

    return v5
.end method

.method public static isAnySimLocked(I)Z
    .locals 9
    .param p0, "phoneNum"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 723
    const-string/jumbo v4, "ro.mtk_svlte_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 724
    const-string/jumbo v4, "ro.mtk_srlte_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 723
    if-eqz v4, :cond_1

    .line 725
    :cond_0
    const-string/jumbo v4, "isAnySimLocked always returns false in C2K"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 726
    return v6

    .line 729
    :cond_1
    new-array v2, p0, [Ljava/lang/String;

    .line 730
    .local v2, "mnc":[Ljava/lang/String;
    new-array v1, p0, [Ljava/lang/String;

    .line 732
    .local v1, "iccid":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_b

    .line 733
    sget-object v4, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 735
    aget-object v4, v1, v0

    const-string/jumbo v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 736
    const-string/jumbo v4, "gsm.sim.operator.imsi"

    const-string/jumbo v5, ""

    invoke-static {v0, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 737
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v8, :cond_5

    .line 738
    aget-object v4, v2, v0

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 742
    :cond_2
    :goto_1
    aget-object v4, v2, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 743
    if-nez v0, :cond_6

    .line 744
    const-string/jumbo v3, "gsm.sim.ril.mcc.mnc"

    .line 748
    .local v3, "propStr":Ljava/lang/String;
    :goto_2
    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mnc["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] from ril.mcc.mnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 756
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_3
    :goto_3
    aget-object v4, v1, v0

    const-string/jumbo v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    aget-object v4, v2, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 757
    aget-object v4, v2, v0

    const-string/jumbo v5, "sim_lock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 756
    if-eqz v4, :cond_8

    .line 758
    :cond_4
    const/4 v4, 0x1

    return v4

    .line 739
    :cond_5
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_2

    .line 740
    aget-object v4, v2, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    goto :goto_1

    .line 746
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 751
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from gsm.sim.operator.imsi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 752
    aget-object v5, v1, v0

    .line 751
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 761
    :cond_8
    const-string/jumbo v4, "1"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimImsiStatus(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "clear mcc.mnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 763
    if-nez v0, :cond_a

    .line 764
    const-string/jumbo v3, "gsm.sim.ril.mcc.mnc"

    .line 768
    .restart local v3    # "propStr":Ljava/lang/String;
    :goto_4
    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 766
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto :goto_4

    .line 772
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_b
    return v6
.end method

.method public static isNeedShowSimDialog()I
    .locals 14

    .prologue
    .line 631
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 632
    const-string/jumbo v12, "mtk_disable_cap_switch is true"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 633
    const/4 v12, 0x0

    return v12

    .line 636
    :cond_0
    const-string/jumbo v12, "isNeedShowSimDialog start"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 637
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .line 638
    .local v7, "phoneCount":I
    new-array v9, v7, [I

    .line 639
    .local v9, "simOpInfo":[I
    new-array v10, v7, [I

    .line 640
    .local v10, "simType":[I
    new-array v0, v7, [Ljava/lang/String;

    .line 641
    .local v0, "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 642
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 643
    .local v3, "insertedStatus":I
    const/4 v4, 0x0

    .line 644
    .local v4, "op02CardCount":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v11, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v8, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v5, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v6, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 650
    sget-object v12, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v1

    .line 651
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "currIccid["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 652
    aget-object v12, v0, v1

    if-eqz v12, :cond_1

    const-string/jumbo v12, ""

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 653
    :cond_1
    const-string/jumbo v12, "GSM"

    const-string/jumbo v13, "iccid not found, wait for next sim state change"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v12, 0x3

    return v12

    .line 656
    :cond_2
    const-string/jumbo v12, "N/A"

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 657
    add-int/lit8 v2, v2, 0x1

    .line 658
    const/4 v12, 0x1

    shl-int/2addr v12, v1

    or-int/2addr v3, v12

    .line 649
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_4
    const/4 v12, 0x2

    if-ge v2, v12, :cond_5

    .line 663
    const-string/jumbo v12, "isNeedShowSimDialog: insert sim count < 2, do not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 664
    const/4 v12, 0x1

    return v12

    .line 667
    :cond_5
    invoke-static {v9, v10, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v12

    if-nez v12, :cond_6

    .line 668
    const-string/jumbo v12, "GSM"

    const-string/jumbo v13, "isNeedShowSimDialog: Can\'t get SIM information"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v12, 0x2

    return v12

    .line 671
    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_a

    .line 673
    aget v12, v10, v1

    const/4 v13, 0x1

    if-ne v13, v12, :cond_8

    .line 674
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_7
    :goto_2
    aget v12, v9, v1

    const/4 v13, 0x3

    if-ne v13, v12, :cond_9

    .line 681
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 675
    :cond_8
    aget v12, v10, v1

    if-nez v12, :cond_7

    .line 676
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 683
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 686
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "usimIndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 687
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "op02IndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_d

    .line 691
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_c

    .line 692
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 693
    add-int/lit8 v4, v4, 0x1

    .line 691
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 697
    :cond_c
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 698
    const-string/jumbo v12, "isNeedShowSimDialog: One OP02Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 699
    const/4 v12, 0x1

    return v12

    .line 701
    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 702
    const-string/jumbo v12, "isNeedShowSimDialog: One Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 703
    const/4 v12, 0x1

    return v12

    .line 707
    :cond_e
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_10

    .line 708
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 709
    add-int/lit8 v4, v4, 0x1

    .line 707
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 713
    :cond_10
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 714
    const-string/jumbo v12, "isNeedShowSimDialog: One non-OP02 Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 715
    const/4 v12, 0x1

    return v12

    .line 718
    :cond_11
    const-string/jumbo v12, "isNeedShowSimDialog: Show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 719
    const/4 v12, 0x0

    return v12
.end method

.method public static isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)I
    .locals 14
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;
    .param p1, "rats"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 299
    const-string/jumbo v11, "ro.operator.optr"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "operatorSpec":Ljava/lang/String;
    array-length v11, p0

    new-array v6, v11, [I

    .line 301
    .local v6, "simOpInfo":[I
    array-length v11, p0

    new-array v7, v11, [I

    .line 303
    .local v7, "simType":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 304
    .local v5, "phoneCount":I
    const/4 v2, 0x0

    .line 305
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 306
    .local v3, "insertedStatus":I
    new-array v0, v5, [Ljava/lang/String;

    .line 308
    .local v0, "currIccId":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Operator Spec:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v11, "ro.mtk_disable_cap_switch"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 310
    const-string/jumbo v9, "mtk_disable_cap_switch is true"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 311
    return v10

    .line 312
    :cond_0
    const-string/jumbo v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 321
    sget-object v11, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v11, v11, v1

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v1

    .line 322
    aget-object v11, v0, v1

    if-eqz v11, :cond_1

    const-string/jumbo v11, ""

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 323
    :cond_1
    const-string/jumbo v9, "error: iccid not found, not switch, return NOT_SWITCH_SIM_INFO_NOT_READY"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 324
    return v13

    .line 316
    .end local v1    # "i":I
    :cond_2
    return v9

    .line 326
    .restart local v1    # "i":I
    :cond_3
    const-string/jumbo v11, "N/A"

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 327
    add-int/lit8 v2, v2, 0x1

    .line 328
    shl-int v11, v10, v1

    or-int/2addr v3, v11

    .line 320
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    :cond_5
    invoke-static {v6, v7, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v11

    if-nez v11, :cond_6

    .line 332
    if-eq v2, v10, :cond_6

    .line 333
    return v13

    .line 338
    :cond_6
    const/4 v8, 0x0

    .local v8, "targetPhoneId":I
    :goto_1
    array-length v11, p1

    if-ge v8, v11, :cond_7

    .line 339
    const-string/jumbo v11, "ro.mtk_lte_support"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 340
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit16 v11, v11, 0x4000

    .line 341
    const/16 v12, 0x4000

    .line 340
    if-ne v11, v12, :cond_9

    .line 351
    :cond_7
    const-string/jumbo v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 352
    invoke-static {v8, v6, v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->checkOp01LC(I[I[I)Z

    move-result v11

    if-eqz v11, :cond_a

    :goto_2
    return v9

    .line 345
    :cond_8
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    .line 346
    const/16 v12, 0x8

    .line 345
    if-eq v11, v12, :cond_7

    .line 338
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_a
    move v9, v10

    .line 352
    goto :goto_2

    .line 354
    :cond_b
    return v9
.end method

.method public static isOp01LCProject()Z
    .locals 2

    .prologue
    .line 776
    const-string/jumbo v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    const-string/jumbo v0, "ro.operator.optr"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 776
    if-eqz v0, :cond_0

    .line 778
    const-string/jumbo v0, "return true for OP01 L+C project"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 779
    const/4 v0, 0x1

    return v0

    .line 781
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 617
    const-string/jumbo v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[RadioCapSwitchUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method public static updateIccid([Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "bIsMajorPhone":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 152
    const/4 v0, 0x0

    .line 153
    const-string/jumbo v3, "ro.mtk_lte_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 154
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit16 v3, v3, 0x4000

    .line 155
    const/16 v4, 0x4000

    .line 154
    if-ne v3, v4, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 164
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril.iccid.sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "currIccId":Ljava/lang/String;
    const-string/jumbo v3, "persist.radio.simswitch.iccid"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIccid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 149
    .end local v1    # "currIccId":Ljava/lang/String;
    :cond_1
    return-void

    .line 159
    :cond_2
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    .line 160
    const/16 v4, 0x8

    .line 159
    if-ne v3, v4, :cond_0

    .line 161
    const/4 v0, 0x1

    goto :goto_1

    .line 151
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static updateSimImsiStatus(ILjava/lang/String;)V
    .locals 3
    .param p0, "slot"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSimImsiStatus slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 786
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 787
    .local v0, "propStr":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return-void
.end method
