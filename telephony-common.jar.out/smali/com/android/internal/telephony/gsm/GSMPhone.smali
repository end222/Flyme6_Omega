.class public Lcom/android/internal/telephony/gsm/GSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;,
        Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;,
        Lcom/android/internal/telephony/gsm/GSMPhone$1;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_DctConstants$StateSwitchesValues:[I = null

.field public static final ACT_TYPE_GSM:Ljava/lang/String; = "0"

.field public static final ACT_TYPE_LTE:Ljava/lang/String; = "7"

.field public static final ACT_TYPE_UTRAN:Ljava/lang/String; = "2"

.field private static final CFB_KEY:Ljava/lang/String; = "CFB"

.field private static final CFNRC_KEY:Ljava/lang/String; = "CFNRC"

.field private static final CFNR_KEY:Ljava/lang/String; = "CFNR"

.field private static final CFU_QUERY_ICCID_PROP:Ljava/lang/String; = "persist.radio.cfu.iccid."

.field private static final CFU_QUERY_MAX_COUNT:I = 0x3c

.field private static final CFU_QUERY_PROPERTY_NAME:Ljava/lang/String; = "gsm.poweron.cfu.query."

.field private static final CFU_QUERY_SIM_CHANGED_PROP:Ljava/lang/String; = "persist.radio.cfu.change."

.field public static final CIPHERING_KEY:Ljava/lang/String; = "ciphering_key"

.field private static final LOCAL_DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSMPhone"

.field public static final LTE_INDICATOR:Ljava/lang/String; = "4G"

.field private static final MCCMNC_BLOCK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MTK_IMS_SUPPORT:Z

.field static final MTK_SWITCH_ANTENNA_SUPPORT:Z

.field private static final OP03_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP05_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP07_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP08_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP15_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP18_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHONE_COUNT:I

.field public static final TBCW_NOT_OPTBCW:I = 0x1

.field public static final TBCW_OPTBCW_NOT_VOLTE_USER:I = 0x3

.field public static final TBCW_OPTBCW_VOLTE_USER:I = 0x2

.field public static final TBCW_OPTBCW_WITH_CS:I = 0x4

.field public static final TBCW_UNKNOWN:I = 0x0

.field public static final UTRAN_INDICATOR:Ljava/lang/String; = "3G"

.field private static final VDBG:Z = false

.field public static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field public static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"

.field private static final cfuQueryWaitTime:I = 0x3e8


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field private mCachedCrssn:Landroid/os/AsyncResult;

.field private mCachedSsn:Landroid/os/AsyncResult;

.field private mCallEstablished:Z

.field mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

.field private mCallState:I

.field private mCfuQueryRetryCount:I

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mImei:Ljava/lang/String;

.field private mImeiAbnormal:I

.field private mImeiSv:Ljava/lang/String;

.field private mImsExtInfo:Ljava/lang/String;

.field private mImsStatus:Z

.field public mIsNetworkInitiatedUssd:Z

.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field private mRatMode:I

.field mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

.field mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSsnRegistrants:Landroid/os/RegistrantList;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

.field private mTbcwMode:I

.field private mVmNumber:Ljava/lang/String;

.field private needQueryCfu:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/gsm/GSMPhone;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/gsm/GSMPhone;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    return v0
.end method

.method private static synthetic -getcom_android_internal_telephony_DctConstants$ActivitySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$Activity;->values()[Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$ActivitySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$State;->values()[Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->-com_android_internal_telephony_DctConstants$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/gsm/GSMPhone;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/GSMPhone;I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isIccCardMncMccAvailable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/gsm/GSMPhone;I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOpTbcwWithCS(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    const-string/jumbo v2, "ro.mtk_switch_antenna"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 233
    sput-boolean v2, Lcom/android/internal/telephony/gsm/GSMPhone;->MTK_SWITCH_ANTENNA_SUPPORT:Z

    .line 235
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    sput v2, Lcom/android/internal/telephony/gsm/GSMPhone;->PHONE_COUNT:I

    .line 241
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v3, "22210"

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 240
    sput-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->MCCMNC_BLOCK_LIST:Ljava/util/List;

    .line 243
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "20801"

    aput-object v3, v2, v1

    const-string/jumbo v3, "20802"

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->OP03_MCCMNC_LIST:Ljava/util/List;

    .line 245
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "26201"

    aput-object v3, v2, v1

    const-string/jumbo v3, "26206"

    aput-object v3, v2, v0

    .line 246
    const-string/jumbo v3, "26278"

    aput-object v3, v2, v5

    .line 245
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->OP05_MCCMNC_LIST:Ljava/util/List;

    .line 248
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "31030"

    aput-object v3, v2, v1

    const-string/jumbo v3, "31070"

    aput-object v3, v2, v0

    .line 249
    const-string/jumbo v3, "31080"

    aput-object v3, v2, v5

    const-string/jumbo v3, "31090"

    aput-object v3, v2, v6

    const-string/jumbo v3, "310150"

    aput-object v3, v2, v7

    const-string/jumbo v3, "310170"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "310280"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const-string/jumbo v3, "310380"

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string/jumbo v3, "310410"

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const-string/jumbo v3, "310560"

    const/16 v4, 0x9

    aput-object v3, v2, v4

    .line 250
    const-string/jumbo v3, "310680"

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const-string/jumbo v3, "311180"

    const/16 v4, 0xb

    aput-object v3, v2, v4

    .line 248
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->OP07_MCCMNC_LIST:Ljava/util/List;

    .line 252
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "23203"

    aput-object v3, v2, v1

    const-string/jumbo v3, "23204"

    aput-object v3, v2, v0

    .line 253
    const-string/jumbo v3, "21901"

    aput-object v3, v2, v5

    const-string/jumbo v3, "23001"

    aput-object v3, v2, v6

    const-string/jumbo v3, "21630"

    aput-object v3, v2, v7

    const-string/jumbo v3, "29702"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "20416"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const-string/jumbo v3, "20420"

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string/jumbo v3, "26002"

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const-string/jumbo v3, "22004"

    const/16 v4, 0x9

    aput-object v3, v2, v4

    const-string/jumbo v3, "23430"

    const/16 v4, 0xa

    aput-object v3, v2, v4

    .line 254
    const-string/jumbo v3, "310160"

    const/16 v4, 0xb

    aput-object v3, v2, v4

    const-string/jumbo v3, "310260"

    const/16 v4, 0xc

    aput-object v3, v2, v4

    const-string/jumbo v3, "310490"

    const/16 v4, 0xd

    aput-object v3, v2, v4

    const-string/jumbo v3, "310580"

    const/16 v4, 0xe

    aput-object v3, v2, v4

    const-string/jumbo v3, "310660"

    const/16 v4, 0xf

    aput-object v3, v2, v4

    .line 252
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->OP08_MCCMNC_LIST:Ljava/util/List;

    .line 256
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "26203"

    aput-object v3, v2, v1

    const-string/jumbo v3, "26207"

    aput-object v3, v2, v0

    .line 257
    const-string/jumbo v3, "26208"

    aput-object v3, v2, v5

    const-string/jumbo v3, "26211"

    aput-object v3, v2, v6

    const-string/jumbo v3, "26277"

    aput-object v3, v2, v7

    .line 256
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->OP15_MCCMNC_LIST:Ljava/util/List;

    .line 259
    const/16 v2, 0x16

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "405854"

    aput-object v3, v2, v1

    .line 260
    const-string/jumbo v3, "405855"

    aput-object v3, v2, v0

    .line 261
    const-string/jumbo v3, "405856"

    aput-object v3, v2, v5

    .line 262
    const-string/jumbo v3, "405872"

    aput-object v3, v2, v6

    .line 263
    const-string/jumbo v3, "405857"

    aput-object v3, v2, v7

    .line 264
    const-string/jumbo v3, "405858"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 265
    const-string/jumbo v3, "405859"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 266
    const-string/jumbo v3, "405860"

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 267
    const-string/jumbo v3, "405861"

    const/16 v4, 0x8

    aput-object v3, v2, v4

    .line 268
    const-string/jumbo v3, "405862"

    const/16 v4, 0x9

    aput-object v3, v2, v4

    .line 269
    const-string/jumbo v3, "405873"

    const/16 v4, 0xa

    aput-object v3, v2, v4

    .line 270
    const-string/jumbo v3, "405863"

    const/16 v4, 0xb

    aput-object v3, v2, v4

    .line 271
    const-string/jumbo v3, "405864"

    const/16 v4, 0xc

    aput-object v3, v2, v4

    .line 272
    const-string/jumbo v3, "405874"

    const/16 v4, 0xd

    aput-object v3, v2, v4

    .line 273
    const-string/jumbo v3, "405865"

    const/16 v4, 0xe

    aput-object v3, v2, v4

    .line 274
    const-string/jumbo v3, "405866"

    const/16 v4, 0xf

    aput-object v3, v2, v4

    .line 275
    const-string/jumbo v3, "405867"

    const/16 v4, 0x10

    aput-object v3, v2, v4

    .line 276
    const-string/jumbo v3, "405868"

    const/16 v4, 0x11

    aput-object v3, v2, v4

    .line 277
    const-string/jumbo v3, "405869"

    const/16 v4, 0x12

    aput-object v3, v2, v4

    .line 278
    const-string/jumbo v3, "405871"

    const/16 v4, 0x13

    aput-object v3, v2, v4

    .line 279
    const-string/jumbo v3, "405870"

    const/16 v4, 0x14

    aput-object v3, v2, v4

    .line 280
    const-string/jumbo v3, "405840"

    const/16 v4, 0x15

    aput-object v3, v2, v4

    .line 259
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->OP18_MCCMNC_LIST:Ljava/util/List;

    .line 557
    const-string/jumbo v2, "ro.mtk_ims_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    const-string/jumbo v3, "1"

    .line 557
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->MTK_IMS_SUPPORT:Z

    .line 139
    return-void

    :cond_0
    move v0, v1

    .line 558
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    .line 340
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 339
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 302
    const-string/jumbo v1, "GSM"

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 168
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 179
    iput v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiAbnormal:I

    .line 190
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    .line 194
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 195
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 199
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z

    .line 204
    iput v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    .line 218
    iput v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    .line 229
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsStatus:Z

    .line 238
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallEstablished:Z

    .line 296
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    .line 3889
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone$1;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 305
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v9}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 309
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 311
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 312
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 314
    if-nez p4, :cond_1

    .line 315
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 316
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v9, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x13

    invoke-virtual {v0, p0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x24

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v1, 0x68

    invoke-virtual {v0, p0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    .line 331
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string/jumbo v0, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string/jumbo v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I

    .prologue
    .line 346
    const-string/jumbo v1, "GSM"

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 168
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiAbnormal:I

    .line 190
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsStatus:Z

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallEstablished:Z

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    .line 3889
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone$1;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 349
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 353
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 355
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 356
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 358
    if-nez p4, :cond_1

    .line 359
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 360
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 364
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    .line 366
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0, p1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    invoke-interface {v0, p1, p5}, Lcom/mediatek/common/telephony/ISupplementaryServiceExt;->registerReceiver(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    if-nez p5, :cond_3

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAbnormalEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRelatedSuppSvc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 395
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 396
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string/jumbo v0, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string/jumbo v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GSMPhone: constructor: sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    .line 345
    return-void

    .line 373
    .end local v8    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v7

    .line 374
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private getActivePhone(I)Lcom/android/internal/telephony/PhoneBase;
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 4261
    const/4 v0, 0x0

    .line 4262
    .local v0, "csPhone":Lcom/android/internal/telephony/PhoneBase;
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    move-object v2, v1

    .line 4264
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .end local v0    # "csPhone":Lcom/android/internal/telephony/PhoneBase;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 4266
    .local v0, "csPhone":Lcom/android/internal/telephony/PhoneBase;
    const-string/jumbo v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getActivePhone: Phone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,csPhone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    return-object v0
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1400
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vm_sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleAbnormalEvent([Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3162
    aget-object v4, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3163
    .local v2, "caseId":I
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3164
    .local v0, "argNum":I
    packed-switch v2, :pswitch_data_0

    .line 3179
    const-string/jumbo v4, "Unknown abnormal case"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3161
    :goto_0
    return-void

    .line 3166
    :pswitch_0
    const-string/jumbo v4, "B40 broken"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3167
    const/4 v4, 0x3

    new-array v1, v4, [I

    .line 3168
    .local v1, "bandMode":[I
    const/16 v4, 0x64

    aput v4, v1, v5

    .line 3169
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 3170
    add-int/lit8 v4, v3, 0x2

    aget-object v4, p1, v4

    const-string/jumbo v5, "4294967295"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, 0x2

    aget-object v4, p1, v4

    const-string/jumbo v5, "FFFFFFFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3171
    :cond_0
    add-int/lit8 v4, v3, 0x1

    const/4 v5, -0x1

    aput v5, v1, v4

    .line 3169
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3173
    :cond_1
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v3, 0x2

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v4

    goto :goto_2

    .line 3176
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x6c

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode([ILandroid/os/Message;)V

    goto :goto_0

    .line 3164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 925
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 926
    const/4 v1, 0x0

    return v1

    .line 929
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 930
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v2, "MmiCode 0: rejectCall"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :cond_1
    :goto_0
    return v3

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GSMPhone"

    .line 935
    const-string/jumbo v2, "reject failed"

    .line 934
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 938
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    .line 939
    const-string/jumbo v1, "GSMPhone"

    .line 940
    const-string/jumbo v2, "MmiCode 0: hangupWaitingOrBackground"

    .line 939
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 10
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 990
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 992
    .local v5, "len":I
    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 993
    const/4 v6, 0x0

    return v6

    .line 996
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 998
    .local v0, "call":Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v5, v9, :cond_2

    .line 1000
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1001
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    .line 1002
    .local v1, "callIndex":I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v3

    .line 1005
    .local v3, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v3, :cond_1

    if-lt v1, v9, :cond_1

    const/4 v6, 0x7

    if-gt v1, v6, :cond_1

    .line 1006
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MmiCode 2: separate call "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 1037
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_0
    return v9

    .line 1010
    .restart local v1    # "callIndex":I
    .restart local v2    # "ch":C
    .restart local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "separate: invalid call index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1014
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v4

    .line 1015
    .local v4, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "GSMPhone"

    .line 1016
    const-string/jumbo v7, "separate failed"

    .line 1015
    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 1021
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    .line 1022
    const-string/jumbo v6, "GSMPhone"

    .line 1023
    const-string/jumbo v7, "MmiCode 2: accept ringing call"

    .line 1022
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1030
    :catch_1
    move-exception v4

    .line 1031
    .restart local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "GSMPhone"

    .line 1032
    const-string/jumbo v7, "switch failed"

    .line 1031
    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1033
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 1026
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_2
    const-string/jumbo v6, "GSMPhone"

    .line 1027
    const-string/jumbo v7, "MmiCode 2: switchWaitingOrHoldingAndActive"

    .line 1026
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 9
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 949
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 951
    .local v4, "len":I
    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 952
    const/4 v5, 0x0

    return v5

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 958
    .local v0, "call":Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v4, v8, :cond_2

    .line 959
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 960
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    .line 962
    .local v1, "callIndex":I
    if-lt v1, v8, :cond_1

    const/4 v5, 0x7

    if-gt v1, v5, :cond_1

    .line 963
    const-string/jumbo v5, "GSMPhone"

    .line 964
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 963
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V

    .line 986
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    :cond_1
    :goto_0
    return v8

    .line 969
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_3

    .line 970
    const-string/jumbo v5, "GSMPhone"

    .line 971
    const-string/jumbo v6, "MmiCode 1: hangup foreground"

    .line 970
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 980
    :catch_0
    move-exception v3

    .line 981
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v5, "GSMPhone"

    .line 982
    const-string/jumbo v6, "hangup failed"

    .line 981
    invoke-static {v5, v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 983
    sget-object v5, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 975
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "GSMPhone"

    .line 976
    const-string/jumbo v6, "MmiCode 1: switchWaitingOrHoldingAndActive"

    .line 975
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1065
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 1066
    const/4 v0, 0x0

    return v0

    .line 1069
    :cond_0
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "MmiCode 5: CCBS not supported!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1072
    return v2
.end method

.method private handleCfuInTimeSlotQueryResult([Lcom/android/internal/telephony/CallForwardInfoEx;)V
    .locals 7
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfoEx;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3817
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3818
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    .line 3819
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 3822
    :cond_0
    invoke-virtual {v1, v4, v3, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 3816
    :cond_1
    :goto_0
    return-void

    .line 3824
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p1

    .local v2, "s":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 3825
    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 3826
    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    if-ne v5, v4, :cond_3

    move v3, v4

    .line 3827
    :cond_3
    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 3826
    invoke-virtual {v1, v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 3828
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveTimeSlot([J)V

    goto :goto_0

    .line 3824
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 7
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3286
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3287
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    .line 3288
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 3291
    :cond_0
    invoke-virtual {v1, v4, v3, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 3285
    :cond_1
    :goto_0
    return-void

    .line 3293
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p1

    .local v2, "s":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 3294
    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 3295
    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v4, :cond_3

    move v3, v4

    .line 3296
    :cond_3
    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 3295
    invoke-virtual {v1, v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_0

    .line 3293
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1053
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1055
    .local v0, "len":I
    if-eq v0, v3, :cond_0

    .line 1056
    const/4 v1, 0x0

    return v1

    .line 1059
    :cond_0
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v2, "MmiCode 4: explicit call transfer"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->explicitCallTransfer()V

    .line 1061
    return v3
.end method

.method private handleImsUtCsfb(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4137
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/SuppSrvRequest;

    .line 4138
    .local v17, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    if-nez v17, :cond_0

    .line 4139
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v6, "handleImsUtCsfb: Error SuppSrvRequest null!"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    return-void

    .line 4143
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isDuringImsCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4145
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v16

    .line 4146
    .local v16, "resultCallback":Landroid/os/Message;
    if-eqz v16, :cond_1

    .line 4147
    new-instance v7, Lcom/android/internal/telephony/CommandException;

    .line 4148
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 4147
    invoke-direct {v7, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 4149
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4150
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 4153
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 4154
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 4157
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SuppSrvRequest;->setResultCallback(Landroid/os/Message;)V

    .line 4158
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4159
    return-void

    .line 4162
    .end local v16    # "resultCallback":Landroid/os/Message;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getRequestCode()I

    move-result v15

    .line 4163
    .local v15, "requestCode":I
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4164
    packed-switch v15, :pswitch_data_0

    .line 4242
    :pswitch_0
    const-string/jumbo v1, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "handleImsUtCsfb: invalid requestCode = "

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    :goto_0
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SuppSrvRequest;->setResultCallback(Landroid/os/Message;)V

    .line 4247
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4136
    return-void

    .line 4167
    :pswitch_1
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v6, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CF"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4169
    .local v3, "commandInterfaceCFReason":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0

    .line 4174
    .end local v3    # "commandInterfaceCFReason":I
    :pswitch_2
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v6, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CF"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4176
    .local v2, "commandInterfaceCFAction":I
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4177
    .restart local v3    # "commandInterfaceCFReason":I
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4178
    .local v4, "dialingNumber":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4180
    .local v5, "timerSeconds":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v6

    move-object/from16 v1, p0

    .line 4179
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 4185
    .end local v2    # "commandInterfaceCFAction":I
    .end local v3    # "commandInterfaceCFReason":I
    .end local v4    # "dialingNumber":Ljava/lang/String;
    .end local v5    # "timerSeconds":I
    :pswitch_3
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v6, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CLIR"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4186
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0

    .line 4191
    :pswitch_4
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v6, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CLIR"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4193
    .local v8, "commandInterfaceCLIRMode":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 4198
    .end local v8    # "commandInterfaceCLIRMode":I
    :pswitch_5
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v6, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CW"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4204
    :pswitch_6
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v6, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CW"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4205
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4206
    .local v11, "enableState":I
    if-eqz v11, :cond_4

    const/4 v10, 0x1

    .line 4207
    .local v10, "enable":Z
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 4206
    .end local v10    # "enable":Z
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "enable":Z
    goto :goto_1

    .line 4212
    .end local v10    # "enable":Z
    .end local v11    # "enableState":I
    :pswitch_7
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v6, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CB"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4214
    .local v13, "facility":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4215
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4220
    .end local v13    # "facility":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v6, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CB"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4222
    .restart local v13    # "facility":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4223
    .restart local v11    # "enableState":I
    if-eqz v11, :cond_5

    const/4 v10, 0x1

    .line 4224
    .restart local v10    # "enable":Z
    :goto_2
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4225
    .restart local v14    # "password":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10, v14, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4223
    .end local v10    # "enable":Z
    .end local v14    # "password":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "enable":Z
    goto :goto_2

    .line 4230
    .end local v10    # "enable":Z
    .end local v11    # "enableState":I
    .end local v13    # "facility":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 4231
    .local v9, "dialString":Ljava/lang/String;
    const-string/jumbo v1, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "handleImsUtCsfb: SUPP_SRV_REQ_MMI_CODE: dialString = "

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4235
    :catch_0
    move-exception v12

    .line 4236
    .local v12, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v6, "handleImsUtCsfb: SUPP_SRV_REQ_MMI_CODE: CallStateException!"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    invoke-virtual {v12}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 4164
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1042
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 1043
    const/4 v0, 0x0

    return v0

    .line 1046
    :cond_0
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "MmiCode 3: merge calls"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->conference()V

    .line 1048
    return v2
.end method

.method private handleUdubIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 908
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 909
    const/4 v0, 0x0

    return v0

    .line 912
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 913
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_2

    .line 914
    :cond_1
    const-string/jumbo v0, "GSMPhone"

    .line 915
    const-string/jumbo v1, "MmiCode 0: hangupWaitingOrBackground"

    .line 914
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    .line 919
    :cond_2
    return v2
.end method

.method private handleUssiCsfb(Ljava/lang/String;)V
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 4251
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUssiCsfb: dialString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4250
    :goto_0
    return-void

    .line 4254
    :catch_0
    move-exception v0

    .line 4255
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v2, "handleUssiCsfb: CallStateException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private initTbcwMode()V
    .locals 3

    .prologue
    .line 1847
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    if-nez v0, :cond_0

    .line 1848
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOpTbcwWithCS(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1849
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 1850
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 1857
    :cond_0
    :goto_0
    const-string/jumbo v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initTbcwMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    return-void

    .line 1851
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isUsimCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 1853
    const-string/jumbo v0, "persist.radio.terminal-based.cw"

    .line 1854
    const-string/jumbo v1, "disabled_tbcw"

    .line 1853
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isIccCardMncMccAvailable(I)Z
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4316
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 4317
    .local v2, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 4318
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 4319
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 4320
    .local v1, "mccMnc":Ljava/lang/String;
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isIccCardMncMccAvailable(): mccMnc is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    if-eqz v1, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 4323
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "GSMPhone"

    const-string/jumbo v5, "isIccCardMncMccAvailable(): false"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    return v4
.end method

.method private isManualSelProhibitedInGlobalMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3394
    const/4 v2, 0x0

    .line 3395
    .local v2, "isProhibited":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3398
    .local v1, "configString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3399
    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3401
    .local v0, "configArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3402
    array-length v3, v0

    if-ne v3, v5, :cond_0

    aget-object v3, v0, v6

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3403
    :cond_0
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    aget-object v3, v0, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3409
    .end local v0    # "configArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isManualNetSelAllowedInGlobal in current carrier is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    return v2

    .line 3404
    .restart local v0    # "configArray":[Ljava/lang/String;
    :cond_2
    aget-object v3, v0, v6

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 3403
    if-eqz v3, :cond_1

    .line 3405
    aget-object v3, v0, v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 3401
    if-eqz v3, :cond_1

    .line 3406
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isNotSupportXcap(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 4536
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4537
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNotSupportXcap, mccMnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    if-eqz v0, :cond_0

    .line 4539
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone;->MCCMNC_BLOCK_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4542
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isOpTbcwWithCS(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 4546
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isNotSupportXcap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4547
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "isOpTbcwWithCS(): TBCW operator not support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    const/4 v0, 0x1

    return v0

    .line 4551
    :cond_0
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "isOpTbcwWithCS(): TBCW operator"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4552
    const/4 v0, 0x0

    return v0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .prologue
    .line 1554
    packed-switch p1, :pswitch_data_0

    .line 1561
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1559
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .prologue
    .line 1532
    packed-switch p1, :pswitch_data_0

    .line 1541
    const/4 v0, 0x0

    return v0

    .line 1539
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1532
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 12
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 2261
    const-string/jumbo v8, "GSMPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onIncomingUSSD(): mIsNetworkInitiatedUssd = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    if-ne p1, v11, :cond_4

    const/4 v4, 0x1

    .line 2268
    .local v4, "isUssdRequest":Z
    :goto_0
    const/4 v8, 0x4

    if-eq p1, v8, :cond_5

    .line 2269
    const/4 v8, 0x5

    if-ne p1, v8, :cond_6

    const/4 v2, 0x1

    .line 2273
    .local v2, "isUssdError":Z
    :goto_1
    const/4 v8, 0x3

    if-ne p1, v8, :cond_7

    const/4 v5, 0x1

    .line 2276
    .local v5, "isUssdhandleByStk":Z
    :goto_2
    const/4 v8, 0x2

    if-ne p1, v8, :cond_8

    const/4 v3, 0x1

    .line 2277
    .local v3, "isUssdRelease":Z
    :goto_3
    const-string/jumbo v8, "GSMPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ussdMode= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    const-string/jumbo v8, "GSMPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isUssdRequest="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " isUssdError= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    const/4 v0, 0x0

    .line 2284
    .local v0, "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string/jumbo v8, "GSMPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "USSD:mPendingMMIs= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "s":I
    :goto_4
    if-ge v1, v7, :cond_0

    .line 2286
    const-string/jumbo v9, "GSMPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "i= "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " isPending="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2288
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 2289
    .local v0, "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string/jumbo v8, "GSMPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "found = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    .end local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_0
    if-eqz v0, :cond_d

    .line 2298
    const-string/jumbo v8, "GSMPhone"

    const-string/jumbo v9, "setUserInitiatedMMI  TRUE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->setUserInitiatedMMI(Z)V

    .line 2301
    if-eqz v3, :cond_a

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    if-eqz v8, :cond_a

    .line 2302
    const-string/jumbo v8, "GSMPhone"

    const-string/jumbo v9, "onIncomingUSSD(): USSD_MODE_NW_RELEASE."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdRelease()V

    .line 2345
    :cond_1
    :goto_5
    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    .line 2346
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    .line 2255
    :cond_3
    return-void

    .line 2264
    .end local v1    # "i":I
    .end local v2    # "isUssdError":Z
    .end local v3    # "isUssdRelease":Z
    .end local v4    # "isUssdRequest":Z
    .end local v5    # "isUssdhandleByStk":Z
    .end local v7    # "s":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isUssdRequest":Z
    goto/16 :goto_0

    .line 2268
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "isUssdError":Z
    goto/16 :goto_1

    .line 2269
    .end local v2    # "isUssdError":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "isUssdError":Z
    goto/16 :goto_1

    .line 2273
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "isUssdhandleByStk":Z
    goto/16 :goto_2

    .line 2276
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "isUssdRelease":Z
    goto/16 :goto_3

    .line 2285
    .local v0, "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v1    # "i":I
    .restart local v7    # "s":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 2304
    .end local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_a
    if-eqz v2, :cond_b

    .line 2305
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    goto :goto_5

    .line 2306
    :cond_b
    if-eqz v5, :cond_c

    .line 2307
    invoke-virtual {v0, p2, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdStkHandling(Ljava/lang/String;Z)V

    goto :goto_5

    .line 2309
    :cond_c
    invoke-virtual {v0, p2, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_5

    .line 2319
    :cond_d
    const-string/jumbo v8, "GSMPhone"

    const-string/jumbo v9, "The default value of UserInitiatedMMI is FALSE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    .line 2321
    const-string/jumbo v8, "GSMPhone"

    const-string/jumbo v9, "onIncomingUSSD(): Network Initialized USSD"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    if-nez v2, :cond_e

    if-eqz p2, :cond_e

    .line 2328
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2325
    invoke-static {p2, v4, p0, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v6

    .line 2329
    .local v6, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_5

    .line 2332
    .end local v6    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_e
    if-eqz v2, :cond_1

    .line 2337
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2334
    invoke-static {p2, v4, p0, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssdError(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v6

    .line 2338
    .restart local v6    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_5
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .prologue
    const/4 v2, 0x0

    .line 2248
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 2249
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2248
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2247
    return-void
.end method

.method private processIccRecordEvents(I)V
    .locals 0
    .param p1, "eventCode"    # I

    .prologue
    .line 3229
    packed-switch p1, :pswitch_data_0

    .line 3228
    :goto_0
    return-void

    .line 3231
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto :goto_0

    .line 3229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private registerForSimRecordEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3414
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3415
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 3416
    return-void

    .line 3419
    :cond_0
    const/16 v1, 0x1c

    .line 3418
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3420
    const/16 v1, 0x1d

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3421
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3413
    return-void
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1405
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1406
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_sim_imsi_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1407
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1403
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1354
    const-string/jumbo v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[GSMPhone] storeVoiceMailNumber, to SP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1356
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1357
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_number_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1358
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1359
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1353
    return-void
.end method

.method private unregisterForSimRecordEvents()V
    .locals 2

    .prologue
    .line 3425
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3426
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 3427
    return-void

    .line 3429
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    .line 3430
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 3431
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 3424
    return-void
.end method

.method private updateVoiceMail()V
    .locals 6

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "countVoiceMessages":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 535
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_0

    .line 537
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageCount()I

    move-result v0

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getStoredVoiceMessageCount()I

    move-result v1

    .line 540
    .local v1, "countVoiceMessagesStored":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_1

    .line 541
    move v0, v1

    .line 543
    :cond_1
    const-string/jumbo v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVoiceMail countVoiceMessages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 544
    const-string/jumbo v5, " subId "

    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 544
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v5

    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceMessageCount(I)V

    .line 532
    return-void
.end method


# virtual methods
.method public abortFemtoCellList(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4103
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "abortFemtoCellList()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4104
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->abortFemtoCellList(Landroid/os/Message;)V

    .line 4102
    return-void
.end method

.method public acceptCall(I)V
    .locals 2
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 820
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->acceptCall(I)V

    .line 818
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall(I)V

    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3329
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "[GSMPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3328
    return-void
.end method

.method public applyCFSharePreference(ILjava/lang/String;)Z
    .locals 10
    .param p1, "cfReason"    # I
    .param p2, "setNumber"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 4642
    const/4 v3, 0x0

    .line 4643
    .local v3, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 4654
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No need to store cfreason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4655
    return v9

    .line 4645
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CFB_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4658
    .local v3, "key":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4659
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v4, :cond_0

    .line 4660
    const-string/jumbo v6, "GSMPhone"

    const-string/jumbo v7, "No iccRecords"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    return v9

    .line 4648
    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .local v3, "key":Ljava/lang/String;
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CFNR_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    goto :goto_0

    .line 4651
    .local v3, "key":Ljava/lang/String;
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CFNRC_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    goto :goto_0

    .line 4664
    .restart local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 4666
    .local v1, "currentImsi":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4667
    :cond_1
    const-string/jumbo v6, "GSMPhone"

    const-string/jumbo v7, "currentImsi is empty"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    return v9

    .line 4671
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4672
    :cond_3
    const-string/jumbo v6, "GSMPhone"

    const-string/jumbo v7, "setNumber is empty"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    return v9

    .line 4676
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 4677
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4679
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4681
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4682
    :cond_5
    const-string/jumbo v6, "GSMPhone"

    const-string/jumbo v7, "imsi or content are empty or null."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    return v9

    .line 4686
    :cond_6
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4689
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4690
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4692
    const/4 v6, 0x1

    return v6

    .line 4643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public canConference()Z
    .locals 2

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, "canImsConference":Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    move-result v0

    .line 848
    .end local v0    # "canImsConference":Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canDial()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized cancelAvailableNetworks(Landroid/os/Message;)V
    .locals 8
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 2080
    :try_start_0
    const-string/jumbo v0, "cancelAvailableNetworks"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2081
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V

    .line 2082
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    .line 2084
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->cancelAvailableNetworks(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2079
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 3690
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isDuringImsCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3692
    if-eqz p4, :cond_0

    .line 3693
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    .line 3694
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 3693
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3695
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3696
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 3688
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return-void

    .line 3699
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newCfm"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 3709
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isDuringImsCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3711
    if-eqz p5, :cond_0

    .line 3712
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    .line 3713
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 3712
    invoke-direct {v6, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3714
    .local v6, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {p5, v1, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3715
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    .line 3707
    .end local v6    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return-void

    .line 3718
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public clearCFSharePreference(I)V
    .locals 6
    .param p1, "cfReason"    # I

    .prologue
    .line 4606
    const/4 v1, 0x0

    .line 4607
    .local v1, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 4618
    const-string/jumbo v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No need to store cfreason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    return-void

    .line 4609
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CFB_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4622
    .local v1, "key":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Read to clear the key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4624
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4625
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4626
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4627
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4628
    const-string/jumbo v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to commit the removal of CF preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4605
    :goto_1
    return-void

    .line 4612
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .local v1, "key":Ljava/lang/String;
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CFNR_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    goto :goto_0

    .line 4615
    .local v1, "key":Ljava/lang/String;
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CFNRC_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    goto :goto_0

    .line 4630
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const-string/jumbo v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Commit the removal of CF preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 866
    return-void
.end method

.method public conference()V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    const-string/jumbo v0, "conference() - delegated to IMS phone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    .line 860
    return-void

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    .line 856
    return-void
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1140
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1147
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    .line 1148
    .local v4, "isEmergency":Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1150
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isImsUseEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1151
    if-eqz v2, :cond_4

    .line 1152
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v6

    .line 1150
    if-eqz v6, :cond_4

    .line 1153
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v3, 0x1

    .line 1155
    .local v3, "imsUseEnabled":Z
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1156
    if-eqz v2, :cond_6

    .line 1155
    if-eqz v4, :cond_6

    .line 1158
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1159
    const v7, 0x1120082

    .line 1158
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 1155
    if-eqz v6, :cond_6

    .line 1160
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 1155
    if-eqz v6, :cond_6

    .line 1161
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v5, 0x1

    .line 1164
    .local v5, "useImsForEmergency":Z
    :goto_1
    const-string/jumbo v7, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "imsUseEnabled="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1165
    const-string/jumbo v8, ", useImsForEmergency="

    .line 1164
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1166
    const-string/jumbo v8, ", imsPhone="

    .line 1164
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1167
    const-string/jumbo v8, ", imsPhone.isVolteEnabled()="

    .line 1164
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1168
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1164
    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1169
    const-string/jumbo v8, ", imsPhone.isVowifiEnabled()="

    .line 1164
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1170
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1164
    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1171
    const-string/jumbo v8, ", imsPhone.getServiceState().getState()="

    .line 1164
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1172
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1164
    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/content/Context;)V

    .line 1178
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IMS: imsphone = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "isEmergencyNumber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    if-eqz v2, :cond_1

    .line 1180
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "service state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_1
    if-nez v3, :cond_2

    if-eqz v5, :cond_c

    .line 1186
    :cond_2
    if-nez p3, :cond_a

    .line 1187
    :try_start_0
    const-string/jumbo v6, "GSMPhone"

    const-string/jumbo v7, "Trying IMS PS call"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 1153
    .end local v3    # "imsUseEnabled":Z
    .end local v5    # "useImsForEmergency":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "imsUseEnabled":Z
    goto/16 :goto_0

    .line 1150
    .end local v3    # "imsUseEnabled":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "imsUseEnabled":Z
    goto/16 :goto_0

    .line 1161
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "useImsForEmergency":Z
    goto/16 :goto_1

    .line 1155
    .end local v5    # "useImsForEmergency":Z
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "useImsForEmergency":Z
    goto/16 :goto_1

    .line 1168
    :cond_7
    const-string/jumbo v6, "N/A"

    goto/16 :goto_2

    .line 1170
    :cond_8
    const-string/jumbo v6, "N/A"

    goto/16 :goto_3

    .line 1172
    :cond_9
    const-string/jumbo v6, "N/A"

    goto/16 :goto_4

    .line 1190
    :cond_a
    :try_start_1
    const-string/jumbo v6, "ro.mtk_vilte_support"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1191
    const-string/jumbo v6, "GSMPhone"

    const-string/jumbo v7, "Trying IMS PS video call"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v6

    return-object v6

    .line 1195
    :cond_b
    const-string/jumbo v6, "GSMPhone"

    const-string/jumbo v7, "Trying (non-IMS) CS video call"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6

    .line 1200
    :catch_0
    move-exception v1

    .line 1201
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IMS PS call exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1202
    const-string/jumbo v8, "imsUseEnabled ="

    .line 1201
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1202
    const-string/jumbo v8, ", imsPhone ="

    .line 1201
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const-string/jumbo v6, "cs_fallback"

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 1204
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .line 1205
    .local v0, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1206
    throw v0

    .line 1211
    .end local v0    # "ce":Lcom/android/internal/telephony/CallStateException;
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    .line 1212
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v4, :cond_e

    .line 1215
    :cond_d
    const-string/jumbo v6, "GSMPhone"

    const-string/jumbo v7, "Trying (non-IMS) CS call"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-virtual {p0, p1, v9, p3, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v6

    return-object v6

    .line 1213
    :cond_e
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v7, "cannot dial in current state"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public dial(Ljava/util/List;I)Lcom/android/internal/telephony/Connection;
    .locals 8
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/android/internal/telephony/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 4277
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 4279
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4280
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v4

    .line 4279
    if-eqz v4, :cond_0

    .line 4281
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 4283
    :goto_0
    if-nez v3, :cond_1

    .line 4284
    const-string/jumbo v4, "GSMPhone"

    const-string/jumbo v5, "IMS is disabled and can not dial conference call directly."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    return-object v7

    .line 4279
    :cond_0
    const/4 v3, 0x0

    .local v3, "imsUseEnabled":Z
    goto :goto_0

    .line 4288
    .end local v3    # "imsUseEnabled":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 4289
    const-string/jumbo v4, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "service state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 4293
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_3

    .line 4296
    :try_start_0
    const-string/jumbo v4, "GSMPhone"

    const-string/jumbo v5, "Trying IMS PS conference call"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dial(Ljava/util/List;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 4299
    :catch_0
    move-exception v1

    .line 4301
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v4, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IMS PS conference call exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    const-string/jumbo v4, "cs_fallback"

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4304
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .line 4305
    .local v0, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 4306
    throw v0

    .line 4311
    .end local v0    # "ce":Lcom/android/internal/telephony/CallStateException;
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    return-object v7
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1228
    move-object v2, p1

    .line 1229
    .local v2, "newDialString":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1231
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1236
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1237
    return-object v6

    .line 1241
    :cond_1
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1243
    .local v1, "networkPortion":Ljava/lang/String;
    const-string/jumbo v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network portion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v1, p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1247
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string/jumbo v3, "GSMPhone"

    .line 1248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dialing w/ mmi \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1247
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    if-nez v0, :cond_4

    .line 1253
    if-nez p3, :cond_2

    .line 1254
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2, p2, p4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3

    .line 1256
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->is3GVTEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1257
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "cannot vtDial for non-3GVT-capable device"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1259
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2, p2, p4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3

    .line 1262
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1265
    if-nez p3, :cond_5

    .line 1266
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2, p4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3

    .line 1268
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->is3GVTEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1269
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "cannot vtDial for non-3GVT-capable device"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1271
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2, p4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3

    .line 1276
    :cond_7
    const-string/jumbo v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[dial]mPendingMMIs.add(mmi) + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v6, v0, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1280
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 1283
    return-object v6
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableLocationUpdates()V

    .line 2179
    return-void
.end method

.method public dispose()V
    .locals 9

    .prologue
    .line 414
    sget-object v8, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v8

    .line 415
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->dispose()V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 424
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSs(Landroid/os/Handler;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V

    .line 434
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    .line 436
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "GSMPhone:dispose: clear mPendingMMIs"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 413
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "mode"    # I
    .param p3, "tag"    # I
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 4047
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 4046
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3447
    const-string/jumbo v0, "GSMPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3448
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPendingMMIs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSimPhoneBookIntManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSubInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mVmNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3446
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableLocationUpdates()V

    .line 2174
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    .line 3441
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->exitEmergencyCallbackMode()V

    .line 3439
    :cond_0
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    .line 876
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 462
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "GSMPhone finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method public forceNotifyServiceStateChange()V
    .locals 1

    .prologue
    .line 3435
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-super {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 3434
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 8
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2069
    const-string/jumbo v0, "getAvailableNetworks"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2071
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v0

    int-to-long v2, v0

    .line 2072
    const-string/jumbo v5, "queryPLMN"

    const-wide/32 v6, 0x50910

    .line 2071
    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    .line 2074
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x7a328

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForGetAvailableNetworksDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2075
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 2068
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCFPreviousDialNumber(I)Ljava/lang/String;
    .locals 13
    .param p1, "cfReason"    # I

    .prologue
    const/4 v12, 0x0

    .line 4702
    const/4 v5, 0x0

    .line 4703
    .local v5, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 4714
    const-string/jumbo v9, "GSMPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No need to do the reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    return-object v12

    .line 4705
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CFB_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4718
    .local v5, "key":Ljava/lang/String;
    :goto_0
    const-string/jumbo v9, "GSMPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4720
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4721
    .local v7, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v7, :cond_0

    .line 4722
    const-string/jumbo v9, "GSMPhone"

    const-string/jumbo v10, "No iccRecords"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    return-object v12

    .line 4708
    .end local v7    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .local v5, "key":Ljava/lang/String;
    :pswitch_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CFNR_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "key":Ljava/lang/String;
    goto :goto_0

    .line 4711
    .local v5, "key":Ljava/lang/String;
    :pswitch_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CFNRC_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "key":Ljava/lang/String;
    goto :goto_0

    .line 4726
    .restart local v7    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 4728
    .local v0, "currentImsi":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4729
    :cond_1
    const-string/jumbo v9, "GSMPhone"

    const-string/jumbo v10, "currentImsi is empty"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    return-object v12

    .line 4733
    :cond_2
    const-string/jumbo v9, "GSMPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "currentImsi: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 4736
    .local v8, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v8, v5, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4738
    .local v3, "info":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 4739
    const-string/jumbo v9, "GSMPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Sharedpref not with: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    return-object v12

    .line 4743
    :cond_3
    const-string/jumbo v9, ";"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4745
    .local v4, "infoAry":[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v9, v4

    const/4 v10, 0x2

    if-ge v9, v10, :cond_5

    .line 4746
    :cond_4
    const-string/jumbo v9, "GSMPhone"

    const-string/jumbo v10, "infoAry.length < 2"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4747
    return-object v12

    .line 4750
    :cond_5
    const/4 v9, 0x0

    aget-object v2, v4, v9

    .line 4751
    .local v2, "imsi":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v6, v4, v9

    .line 4753
    .local v6, "number":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4754
    :cond_6
    const-string/jumbo v9, "GSMPhone"

    const-string/jumbo v10, "Sharedpref imsi is empty."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    return-object v12

    .line 4758
    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4759
    :cond_8
    const-string/jumbo v9, "GSMPhone"

    const-string/jumbo v10, "Sharedpref number is empty."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    return-object v12

    .line 4763
    :cond_9
    const-string/jumbo v9, "GSMPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Sharedpref imsi: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    const-string/jumbo v9, "GSMPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Sharedpref number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4767
    const-string/jumbo v9, "GSMPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Get dial number from sharepref: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    return-object v6

    .line 4770
    :cond_a
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4771
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4772
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v9

    if-nez v9, :cond_b

    .line 4773
    const-string/jumbo v9, "GSMPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to commit the removal of CF preference: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    :cond_b
    return-object v12

    .line 4703
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCallForwardInTimeSlot(ILandroid/os/Message;)V
    .locals 4
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3740
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 3741
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v2

    .line 3740
    if-eqz v2, :cond_0

    .line 3741
    if-eqz v0, :cond_0

    .line 3742
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    .line 3743
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardInTimeSlot(ILandroid/os/Message;)V

    .line 3744
    return-void

    .line 3747
    :cond_0
    if-nez p1, :cond_3

    .line 3749
    const-string/jumbo v2, "GSMPhone"

    const-string/jumbo v3, "requesting call forwarding in time slot query."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    const/16 v2, 0x6d

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3754
    .local v1, "resp":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_2

    .line 3755
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isGsmUtSupport()Z

    move-result v2

    .line 3754
    if-eqz v2, :cond_2

    .line 3756
    const-string/jumbo v2, "persist.radio.ut.cfu.mode"

    .line 3757
    const-string/jumbo v3, "disabled_ut_cfu_mode"

    .line 3756
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    .line 3761
    const/4 v3, 0x1

    .line 3759
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    .line 3738
    .end local v1    # "resp":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 3764
    .restart local v1    # "resp":Landroid/os/Message;
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 3763
    invoke-virtual {p0, p2, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0

    .line 3766
    .end local v1    # "resp":Landroid/os/Message;
    :cond_3
    if-eqz p2, :cond_1

    .line 3767
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 8
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1575
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1576
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_0

    .line 1578
    const/16 v4, 0xc

    invoke-static {v4, p2}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v3

    .line 1580
    .local v3, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    iget-object v4, v3, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    const/16 v4, 0x7d0

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1582
    .local v1, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1583
    return-void

    .line 1586
    .end local v1    # "imsUtResult":Landroid/os/Message;
    .end local v3    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1587
    const-string/jumbo v4, "GSMPhone"

    const-string/jumbo v5, "requesting call forwarding query."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    if-nez p1, :cond_1

    .line 1590
    const/16 v4, 0xd

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1596
    .local v2, "resp":Landroid/os/Message;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v4

    if-nez v4, :cond_2

    .line 1597
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isGsmUtSupport()Z

    move-result v4

    .line 1596
    if-eqz v4, :cond_2

    .line 1598
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {v4, p1, v6, v7, v2}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1600
    return-void

    .line 1592
    .end local v2    # "resp":Landroid/os/Message;
    :cond_1
    move-object v2, p2

    .restart local v2    # "resp":Landroid/os/Message;
    goto :goto_0

    .line 1604
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1605
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 1607
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p1, v6, v7, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1574
    .end local v2    # "resp":Landroid/os/Message;
    :cond_4
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 7
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1921
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    if-nez v2, :cond_0

    .line 1922
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->initTbcwMode()V

    .line 1926
    :cond_0
    const-string/jumbo v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCallWaiting(): mTbcwMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1927
    const-string/jumbo v4, ", onComplete = "

    .line 1926
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    if-ne v2, v6, :cond_1

    .line 1930
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    .line 1931
    return-void

    .line 1932
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1933
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v5, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1934
    return-void

    .line 1935
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1936
    const/16 v2, 0x12d

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1937
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1938
    return-void

    .line 1941
    .end local v1    # "resp":Landroid/os/Message;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1942
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 1943
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_4

    .line 1949
    const-string/jumbo v2, "GSMPhone"

    const-string/jumbo v3, "getCallWaiting(): IMS in service"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 1951
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 1952
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    .line 1953
    return-void

    .line 1957
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_5

    .line 1958
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isGsmUtSupport()Z

    move-result v2

    .line 1957
    if-eqz v2, :cond_5

    .line 1959
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {v2, v5, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1960
    return-void

    .line 1966
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1967
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 1969
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v5, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1920
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3340
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "[GSMPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3339
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 691
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 693
    .local v0, "ret":Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 694
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->-getcom_android_internal_telephony_DctConstants$ActivitySwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 712
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 717
    :cond_0
    :goto_0
    return-object v0

    .line 696
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 700
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 704
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 708
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 2164
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 9
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 562
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 563
    .local v4, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]  getDataConnectionState, mtk_ims_support:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 564
    sget-boolean v7, Lcom/android/internal/telephony/gsm/GSMPhone;->MTK_IMS_SUPPORT:Z

    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 564
    const-string/jumbo v7, " E "

    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 566
    if-nez p1, :cond_0

    .line 567
    const-string/jumbo p1, ""

    .line 571
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v6, :cond_2

    .line 574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] C1: mSST null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 575
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 685
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]  getDataConnectionState X, return state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 686
    return-object v4

    .line 576
    :cond_2
    const-string/jumbo v6, "emergency"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 577
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v6

    if-eqz v6, :cond_4

    .line 583
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] C2: dataConnectionState is not in service"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 584
    sget-boolean v6, Lcom/android/internal/telephony/gsm/GSMPhone;->MTK_IMS_SUPPORT:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "ims"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 585
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->-getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 601
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 587
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] apnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 588
    const-string/jumbo v7, " is in retrying state!! return connecting state"

    .line 587
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 589
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 592
    :pswitch_2
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 596
    :pswitch_3
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 605
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 607
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 608
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 612
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] C3: apnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", apnTypeEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 613
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v7

    .line 612
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 613
    const-string/jumbo v7, ", apnTypeActive: "

    .line 612
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 614
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v7

    .line 612
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 616
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 618
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    .line 619
    .local v5, "state":Lcom/android/internal/telephony/DctConstants$State;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] C4: mSST.gprsState is in service, DcTracker.getState(apnType):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->-getcom_android_internal_telephony_DctConstants$StateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    .line 636
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 638
    .local v0, "callState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 639
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v6, :cond_7

    .line 640
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 643
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 647
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 648
    .local v3, "phoneCount":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 649
    const-string/jumbo v6, "ro.mtk_dt_support"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    .line 650
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_8

    .line 651
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getActivePhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    .line 653
    .local v2, "pb":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v6

    if-eq v1, v6, :cond_b

    .line 654
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_b

    .line 655
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GSMPhone["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Phone"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 656
    const-string/jumbo v8, " is in call"

    .line 655
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string/jumbo v6, "GSMPhone"

    const-string/jumbo v7, "Data state set to SUSPENDED"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 667
    .end local v1    # "i":I
    .end local v2    # "pb":Lcom/android/internal/telephony/PhoneBase;
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v4, v6, :cond_1

    .line 668
    const-string/jumbo v6, "default"

    if-ne p1, v6, :cond_1

    .line 669
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v6, v7, :cond_1

    .line 670
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 671
    const-string/jumbo v6, "Connected but default data is not open."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 672
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 624
    .end local v0    # "callState":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v3    # "phoneCount":I
    :pswitch_5
    const-string/jumbo v6, "mms"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 625
    const-string/jumbo v6, "mms is retrying!!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 626
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 631
    :cond_9
    :pswitch_6
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 641
    .restart local v0    # "callState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_a
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_1

    .line 650
    .restart local v1    # "i":I
    .restart local v2    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .restart local v3    # "phoneCount":I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 678
    .end local v0    # "callState":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v1    # "i":I
    .end local v2    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneCount":I
    :pswitch_7
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 621
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1427
    const-string/jumbo v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GSMPhone] getDeviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1433
    const-string/jumbo v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GSMPhone] getDeviceSvn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getEfRatBalancing()I
    .locals 1

    .prologue
    .line 4000
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4001
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfRatBalancing()I

    move-result v0

    return v0

    .line 4003
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1449
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "[GSMPhone] getEsn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const-string/jumbo v0, "0"

    return-object v0
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3600
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3601
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 3602
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 3605
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3606
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v3

    .line 3605
    if-eqz v3, :cond_0

    .line 3608
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 3607
    invoke-virtual {p0, p3, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3609
    return-void

    .line 3613
    :cond_0
    const/16 v3, 0xa

    invoke-static {v3, p3}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v2

    .line 3615
    .local v2, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    iget-object v3, v2, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3616
    iget-object v3, v2, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3617
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3619
    .local v1, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    .line 3620
    return-void

    .line 3624
    .end local v1    # "imsUtResult":Landroid/os/Message;
    .end local v2    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_2

    .line 3625
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isGsmUtSupport()Z

    move-result v3

    .line 3624
    if-eqz v3, :cond_2

    .line 3626
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {v3, p1, p2, v5, p3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 3628
    return-void

    .line 3632
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 3633
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 3635
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2, v5, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 3599
    return-void
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "rat"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 4098
    const-string/jumbo v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFemtoCellList(),operatorNumeric="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",rat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4099
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V

    .line 4097
    return-void
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1476
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1477
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1482
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1483
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid2()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 3318
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1500
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1501
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1488
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1489
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLocatedPlmn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4085
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1455
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "[GSMPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const-string/jumbo v0, "0"

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1494
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1495
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMvnoMatchType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4008
    const-string/jumbo v0, ""

    .line 4009
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4010
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getMvnoMatchType()Ljava/lang/String;

    move-result-object v0

    .line 4012
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMvnoMatchType: Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 4013
    return-object v0
.end method

.method public getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 4017
    const-string/jumbo v0, ""

    .line 4018
    .local v0, "pattern":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMvnoPattern:Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 4020
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4021
    const-string/jumbo v1, "spn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4022
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v0

    .line 4033
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMvnoPattern: pattern = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 4034
    return-object v0

    .line 4023
    :cond_1
    const-string/jumbo v1, "imsi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4024
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->isOperatorMvnoForImsi()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4025
    :cond_2
    const-string/jumbo v1, "pnn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4026
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->isOperatorMvnoForEfPnn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4027
    :cond_3
    const-string/jumbo v1, "gid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4028
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4030
    :cond_4
    const-string/jumbo v1, "getMvnoPattern: Wrong type."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNai()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 1461
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1462
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string/jumbo v2, "GSMPhone"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1463
    const-string/jumbo v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IccRecords is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNAI()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    .line 2137
    return-void
.end method

.method public getNetworkHideState()I
    .locals 1

    .prologue
    .line 4074
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    if-eqz v0, :cond_0

    .line 4075
    const/4 v0, 0x1

    return v0

    .line 4077
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3490
    const/4 v0, 0x0

    .line 3491
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3492
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 3493
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3495
    .end local v0    # "operatorNumeric":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 8
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1713
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1714
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    .line 1715
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_5

    .line 1718
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1720
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1719
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1721
    return-void

    .line 1725
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSavedClirSetting()[I

    move-result-object v2

    .line 1726
    .local v2, "result":[I
    aget v4, v2, v7

    if-nez v4, :cond_2

    .line 1727
    const-string/jumbo v4, "GSMPhone"

    const-string/jumbo v5, "CLIR DEFAULT, so return DEFAULT directly."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    if-eqz p1, :cond_1

    .line 1729
    invoke-static {p1, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1730
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1732
    :cond_1
    return-void

    .line 1735
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOpTbClir()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1736
    if-eqz p1, :cond_3

    .line 1737
    invoke-static {p1, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1738
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1740
    :cond_3
    return-void

    .line 1743
    :cond_4
    const/4 v4, 0x4

    invoke-static {v4, p1}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v3

    .line 1745
    .local v3, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    const/16 v4, 0x7d0

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1746
    .local v1, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1747
    return-void

    .line 1751
    .end local v1    # "imsUtResult":Landroid/os/Message;
    .end local v2    # "result":[I
    .end local v3    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v4

    if-nez v4, :cond_b

    .line 1752
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isGsmUtSupport()Z

    move-result v4

    .line 1751
    if-eqz v4, :cond_b

    .line 1753
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1755
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1754
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1756
    return-void

    .line 1759
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSavedClirSetting()[I

    move-result-object v2

    .line 1760
    .restart local v2    # "result":[I
    aget v4, v2, v7

    if-nez v4, :cond_8

    .line 1761
    const-string/jumbo v4, "GSMPhone"

    const-string/jumbo v5, "CLIR DEFAULT, so return DEFAULT directly."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    if-eqz p1, :cond_7

    .line 1763
    invoke-static {p1, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1764
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1766
    :cond_7
    return-void

    .line 1769
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOpTbClir()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1770
    if-eqz p1, :cond_9

    .line 1771
    invoke-static {p1, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1772
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1774
    :cond_9
    return-void

    .line 1777
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCLIR(Landroid/os/Message;)V

    .line 1778
    return-void

    .line 1782
    .end local v2    # "result":[I
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 1783
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 1785
    :cond_c
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1712
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    const-string/jumbo v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingMMIs.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 3992
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    return v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x1

    return v0
.end method

.method public getPol(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4061
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentPOLList(Landroid/os/Message;)V

    .line 4060
    return-void
.end method

.method public getPolCapability(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4057
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPOLCapabilty(Landroid/os/Message;)V

    .line 4056
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 895
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v1

    .line 897
    :cond_0
    if-eqz v0, :cond_1

    .line 898
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    return-object v1

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v1
.end method

.method public getSavedClirSetting()[I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1683
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1684
    .local v4, "sp":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clir_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1687
    .local v0, "clirSetting":I
    if-eqz v0, :cond_0

    if-ne v0, v7, :cond_1

    .line 1689
    :cond_0
    const/4 v3, 0x4

    .line 1690
    .local v3, "presentationMode":I
    const/4 v2, 0x0

    .line 1701
    .local v2, "getClirResult":I
    :goto_0
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 1702
    .local v1, "getClirResponse":[I
    aput v2, v1, v8

    .line 1703
    aput v3, v1, v9

    .line 1705
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getClirResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "presentationMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    return-object v1

    .line 1691
    .end local v1    # "getClirResponse":[I
    .end local v2    # "getClirResult":I
    .end local v3    # "presentationMode":I
    :cond_1
    if-ne v0, v9, :cond_2

    .line 1693
    const/4 v3, 0x3

    .line 1694
    .restart local v3    # "presentationMode":I
    const/4 v2, 0x1

    .restart local v2    # "getClirResult":I
    goto :goto_0

    .line 1697
    .end local v2    # "getClirResult":I
    .end local v3    # "presentationMode":I
    :cond_2
    const/4 v3, 0x4

    .line 1698
    .restart local v3    # "presentationMode":I
    const/4 v2, 0x2

    .restart local v2    # "getClirResult":I
    goto :goto_0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 3

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v1, :cond_0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getServiceState : getState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    const-string/jumbo v2, " getDataRegState() : "

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_3

    .line 477
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_3

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 482
    .local v0, "phone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_3

    .line 483
    const-string/jumbo v1, "return ImsPhone service state!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v1, :cond_2

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    .line 486
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 484
    invoke-static {v1, v2}, Landroid/telephony/ServiceState;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v1

    return-object v1

    .line 485
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_0

    .line 491
    .end local v0    # "phone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v1, :cond_4

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    return-object v1

    .line 495
    :cond_4
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    return-object v1
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 508
    .local v0, "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 509
    return-object v0

    .line 513
    .end local v0    # "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1470
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1471
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 1547
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    const/4 v0, 0x0

    return-object v0

    .line 1550
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTbcwMode()I
    .locals 1

    .prologue
    .line 1861
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    if-nez v0, :cond_0

    .line 1862
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->initTbcwMode()V

    .line 1864
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    return v0
.end method

.method public getTerminalBasedCallWaiting(Landroid/os/Message;)V
    .locals 9
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1890
    const-string/jumbo v2, "persist.radio.terminal-based.cw"

    .line 1891
    const-string/jumbo v3, "disabled_tbcw"

    .line 1890
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1893
    .local v1, "tbcwMode":Ljava/lang/String;
    const-string/jumbo v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTerminalBasedCallWaiting(): tbcwMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1894
    const-string/jumbo v4, ", onComplete = "

    .line 1893
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    const-string/jumbo v2, "enabled_tbcw_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1897
    if-eqz p1, :cond_0

    .line 1898
    new-array v0, v8, [I

    .line 1899
    .local v0, "cwInfos":[I
    aput v7, v0, v6

    .line 1900
    aput v7, v0, v7

    .line 1901
    invoke-static {p1, v0, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1902
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1904
    .end local v0    # "cwInfos":[I
    :cond_0
    return-void

    .line 1905
    :cond_1
    const-string/jumbo v2, "enabled_tbcw_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1906
    if-eqz p1, :cond_2

    .line 1907
    new-array v0, v8, [I

    .line 1908
    .restart local v0    # "cwInfos":[I
    aput v6, v0, v6

    .line 1909
    invoke-static {p1, v0, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1910
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1912
    .end local v0    # "cwInfos":[I
    :cond_2
    return-void

    .line 1915
    :cond_3
    const-string/jumbo v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTerminalBasedCallWaiting(): ERROR: tbcwMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    return-void
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 3185
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    .line 3186
    const/4 v2, 0x1

    .line 3185
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1413
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1415
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 1417
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1418
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    .line 1419
    const v3, 0x1040004

    .line 1418
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1415
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1422
    :cond_2
    return-object v1
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1365
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1366
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 1367
    .local v3, "number":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[GSMPhone] getVoiceMailNumber, from SIMRecords "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1370
    .local v5, "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vm_number_key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1372
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[GSMPhone] getVoiceMailNumber, from SP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1374
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1375
    const v7, 0x107003e

    .line 1374
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1376
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_4

    array-length v6, v2

    if-lez v6, :cond_4

    .line 1377
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_4

    .line 1378
    aget-object v6, v2, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1379
    aget-object v6, v2, v1

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1380
    .local v0, "defaultVMNumberArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-lez v6, :cond_1

    .line 1381
    array-length v6, v0

    if-ne v6, v11, :cond_3

    .line 1382
    aget-object v3, v0, v9

    .line 1377
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1366
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, ""

    .restart local v3    # "number":Ljava/lang/String;
    goto/16 :goto_0

    .line 1383
    .restart local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "listArray":[Ljava/lang/String;
    :cond_3
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1384
    aget-object v6, v0, v11

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1385
    aget-object v6, v0, v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1383
    if-eqz v6, :cond_1

    .line 1386
    aget-object v3, v0, v9

    .line 1394
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[GSMPhone] getVoiceMailNumber, final "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    return-object v3
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1077
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1078
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v1, :cond_0

    .line 1079
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 1080
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1084
    return v4

    .line 1087
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1088
    return v4

    .line 1091
    :cond_2
    const/4 v2, 0x0

    .line 1092
    .local v2, "result":Z
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1093
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    .line 1124
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 1100
    .restart local v2    # "result":Z
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleUdubIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1105
    .local v2, "result":Z
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1109
    .local v2, "result":Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1112
    .local v2, "result":Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1115
    .local v2, "result":Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1118
    .local v2, "result":Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1093
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 49
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2378
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2386
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v5, :cond_0

    .line 2387
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2388
    const-string/jumbo v7, "["

    .line 2387
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2388
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    .line 2387
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2388
    const-string/jumbo v7, "] while being destroyed. Ignoring."

    .line 2387
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    return-void

    .line 2382
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 2383
    return-void

    .line 2391
    :cond_0
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 3157
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 2371
    :cond_1
    :goto_0
    return-void

    .line 2393
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2394
    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2393
    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 2396
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 2397
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 2398
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    .line 2399
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->startLceAfterRadioIsAvailable()V

    goto :goto_0

    .line 2409
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setDeviceRatMode(I)V

    goto :goto_0

    .line 2413
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOpTbClir()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2414
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    .line 2418
    :cond_2
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z

    if-eqz v5, :cond_1

    .line 2419
    const-string/jumbo v23, "0"

    .line 2420
    .local v23, "defaultQueryCfuMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    if-eqz v5, :cond_3

    .line 2421
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    invoke-interface {v5}, Lcom/mediatek/common/telephony/ISupplementaryServiceExt;->getOpDefaultQueryCfuMode()Ljava/lang/String;

    move-result-object v23

    .line 2422
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "defaultQueryCfuMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2427
    const-string/jumbo v5, "persist.radio.cfu.querytype"

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2432
    .local v16, "cfuSetting":Ljava/lang/String;
    :goto_1
    const-string/jumbo v36, "0"

    .line 2434
    .local v36, "isTestSim":Ljava/lang/String;
    const/16 v35, 0x0

    .line 2435
    .local v35, "isRRMEnv":Z
    const/16 v43, 0x0

    .line 2437
    .local v43, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    if-nez v5, :cond_8

    .line 2438
    const-string/jumbo v5, "gsm.sim.ril.testsim"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 2447
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v43

    .line 2448
    .local v43, "operatorNumeric":Ljava/lang/String;
    if-eqz v43, :cond_5

    const-string/jumbo v5, "46602"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2449
    const/16 v35, 0x1

    .line 2452
    :cond_5
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[GSMPhone] CFU_KEY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isTestSIM : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isRRMEnv : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    const-string/jumbo v5, "0"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v35, :cond_b

    .line 2455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist.radio.cfu.change."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 2456
    .local v34, "isChangedProp":Ljava/lang/String;
    const-string/jumbo v5, "0"

    move-object/from16 v0, v34

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2458
    .local v33, "isChanged":Ljava/lang/String;
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[GSMPhone] isChanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    const-string/jumbo v5, "2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2463
    const-string/jumbo v5, "0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "1"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2462
    if-eqz v5, :cond_9

    .line 2465
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    .line 2466
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->queryCfuOrWait()Z

    .line 2467
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z

    .line 2468
    const-string/jumbo v5, "0"

    move-object/from16 v0, v34

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2429
    .end local v16    # "cfuSetting":Ljava/lang/String;
    .end local v33    # "isChanged":Ljava/lang/String;
    .end local v34    # "isChangedProp":Ljava/lang/String;
    .end local v35    # "isRRMEnv":Z
    .end local v36    # "isTestSim":Ljava/lang/String;
    .end local v43    # "operatorNumeric":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "persist.radio.cfu.querytype"

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "cfuSetting":Ljava/lang/String;
    goto/16 :goto_1

    .line 2440
    .restart local v35    # "isRRMEnv":Z
    .restart local v36    # "isTestSim":Ljava/lang/String;
    .local v43, "operatorNumeric":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 2441
    const-string/jumbo v5, "gsm.sim.ril.testsim.2"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_2

    .line 2470
    .restart local v33    # "isChanged":Ljava/lang/String;
    .restart local v34    # "isChangedProp":Ljava/lang/String;
    .local v43, "operatorNumeric":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 2471
    const-string/jumbo v6, "disabled_ut_cfu_mode"

    .line 2470
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2472
    .local v48, "utCfuMode":Ljava/lang/String;
    const-string/jumbo v5, "enabled_ut_cfu_mode_on"

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2473
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2474
    .local v44, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v44, :cond_1

    .line 2475
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2477
    .end local v44    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_a
    const-string/jumbo v5, "enabled_ut_cfu_mode_off"

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2478
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2479
    .restart local v44    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v44, :cond_1

    .line 2480
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2485
    .end local v33    # "isChanged":Ljava/lang/String;
    .end local v34    # "isChangedProp":Ljava/lang/String;
    .end local v44    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v48    # "utCfuMode":Ljava/lang/String;
    :cond_b
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 2486
    const-string/jumbo v6, "disabled_ut_cfu_mode"

    .line 2485
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2487
    .restart local v48    # "utCfuMode":Ljava/lang/String;
    const-string/jumbo v5, "enabled_ut_cfu_mode_on"

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2488
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2489
    .restart local v44    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v44, :cond_1

    .line 2490
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2492
    .end local v44    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_c
    const-string/jumbo v5, "enabled_ut_cfu_mode_off"

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2493
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2494
    .restart local v44    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v44, :cond_1

    .line 2495
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2504
    .end local v16    # "cfuSetting":Ljava/lang/String;
    .end local v23    # "defaultQueryCfuMode":Ljava/lang/String;
    .end local v35    # "isRRMEnv":Z
    .end local v36    # "isTestSim":Ljava/lang/String;
    .end local v43    # "operatorNumeric":Ljava/lang/String;
    .end local v44    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v48    # "utCfuMode":Ljava/lang/String;
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 2508
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v31

    .line 2509
    .local v31, "imsi":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v32

    .line 2510
    .local v32, "imsiFromSIM":Ljava/lang/String;
    if-eqz v31, :cond_d

    if-eqz v32, :cond_d

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2515
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2516
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateVoiceMail()V

    goto/16 :goto_0

    .line 2511
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2512
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    goto :goto_3

    .line 2520
    .end local v31    # "imsi":Ljava/lang/String;
    .end local v32    # "imsiFromSIM":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2522
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 2526
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Baseband version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    .line 2528
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2527
    invoke-virtual {v6, v7, v5}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2532
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2534
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_f

    .line 2535
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "Null IMEI!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDeviceIdAbnormal(I)V

    goto/16 :goto_0

    .line 2540
    :cond_f
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    .line 2541
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IMEI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "zhaoyang EVENT_GET_IMEI_DONE"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_12

    .line 2546
    :cond_10
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "zhaoyang is SIM1,IMEI is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    const-string/jumbo v5, "gsm.mtk.imei1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    :cond_11
    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2555
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDeviceIdAbnormal(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2556
    :catch_0
    move-exception v26

    .line 2557
    .local v26, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDeviceIdAbnormal(I)V

    .line 2558
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "Invalid format IMEI!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2548
    .end local v26    # "e":Ljava/lang/NumberFormatException;
    :cond_12
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_11

    .line 2549
    :cond_13
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "zhaoyang is SIM2,IMEI is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    const-string/jumbo v5, "gsm.mtk.imei2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2563
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2565
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 2569
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    goto/16 :goto_0

    .line 2573
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2575
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, [Ljava/lang/String;

    .line 2577
    .local v47, "ussdResult":[Ljava/lang/String;
    move-object/from16 v0, v47

    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 2579
    const/4 v5, 0x0

    :try_start_1
    aget-object v5, v47, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v47, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2580
    :catch_1
    move-exception v26

    .line 2581
    .restart local v26    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "error parsing USSD"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2592
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "e":Ljava/lang/NumberFormatException;
    .end local v47    # "ussdResult":[Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v28, v5, -0x1

    .local v28, "i":I
    :goto_5
    if-ltz v28, :cond_15

    .line 2593
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2594
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 2592
    :cond_14
    add-int/lit8 v28, v28, -0x1

    goto :goto_5

    .line 2597
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-object/from16 v30, v0

    .line 2598
    .local v30, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v30, :cond_16

    .line 2599
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v5

    if-nez v5, :cond_16

    .line 2602
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setState(I)V

    .line 2606
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2608
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2611
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V

    .line 2612
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    goto/16 :goto_0

    .line 2617
    .end local v28    # "i":I
    .end local v30    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2618
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 2620
    .local v40, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 2622
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2626
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2627
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2628
    .restart local v44    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v13, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;

    .line 2629
    .local v13, "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_18

    if-eqz v44, :cond_18

    .line 2633
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2634
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1d

    .line 2635
    iget-object v12, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2636
    .local v12, "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v12, :cond_17

    array-length v5, v12

    if-nez v5, :cond_1a

    .line 2637
    :cond_17
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "cfinfo is null or length is 0."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    .end local v12    # "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_18
    :goto_6
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_19

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_19

    .line 2656
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 2657
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 2658
    const-string/jumbo v6, "enabled_ut_cfu_mode_on"

    .line 2657
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    :cond_19
    :goto_7
    iget-object v5, v13, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    if-eqz v5, :cond_1

    .line 2665
    iget-object v5, v13, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v6, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2666
    iget-object v5, v13, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2639
    .restart local v12    # "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_1a
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "[EVENT_SET_CALL_FORWARD_DONE check cfinfo"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_8
    array-length v5, v12

    move/from16 v0, v28

    if-ge v0, v5, :cond_18

    .line 2641
    aget-object v5, v12, v28

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1c

    .line 2642
    aget-object v5, v12, v28

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    const/4 v5, 0x1

    .line 2643
    :goto_9
    aget-object v6, v12, v28

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2642
    const/4 v7, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v7, v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_6

    :cond_1b
    const/4 v5, 0x0

    goto :goto_9

    .line 2640
    :cond_1c
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 2649
    .end local v12    # "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v28    # "i":I
    :cond_1d
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "ar.result is null."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2652
    :cond_1e
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1f

    const/4 v5, 0x1

    :goto_a
    iget-object v6, v13, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v7, v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_6

    :cond_1f
    const/4 v5, 0x0

    goto :goto_a

    .line 2660
    :cond_20
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 2661
    const-string/jumbo v6, "enabled_ut_cfu_mode_off"

    .line 2660
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2671
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .end local v44    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2672
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[EVENT_GET_CALL_WAITING_]ar.exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/os/Message;

    .line 2675
    .local v42, "onComplete":Landroid/os/Message;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_23

    .line 2676
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    .line 2681
    .local v22, "cwArray":[I
    :try_start_2
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_GET_CALL_WAITING_DONE cwArray[0]:cwArray[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2682
    const/4 v7, 0x0

    aget v7, v22, v7

    .line 2681
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2682
    const-string/jumbo v7, ":"

    .line 2681
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2682
    const/4 v7, 0x1

    aget v7, v22, v7

    .line 2681
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    const/4 v5, 0x0

    aget v5, v22, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    .line 2685
    const/4 v5, 0x1

    aget v5, v22, v5

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    const/16 v21, 0x1

    .line 2687
    .local v21, "csEnable":Z
    :goto_b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 2689
    if-eqz v42, :cond_1

    .line 2690
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v42

    invoke-static {v0, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2691
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2694
    .end local v21    # "csEnable":Z
    :catch_2
    move-exception v25

    .line 2695
    .local v25, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_GET_CALL_WAITING_DONE: improper result: err ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2696
    invoke-virtual/range {v25 .. v25}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 2695
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    if-eqz v42, :cond_1

    .line 2698
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v42

    invoke-static {v0, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2699
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2685
    .end local v25    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_21
    const/16 v21, 0x0

    .restart local v21    # "csEnable":Z
    goto :goto_b

    .line 2684
    .end local v21    # "csEnable":Z
    :cond_22
    const/16 v21, 0x0

    .restart local v21    # "csEnable":Z
    goto :goto_b

    .line 2704
    .end local v21    # "csEnable":Z
    .end local v22    # "cwArray":[I
    :cond_23
    if-eqz v42, :cond_1

    .line 2705
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v42

    invoke-static {v0, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2706
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2713
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v42    # "onComplete":Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2714
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/os/Message;

    .line 2716
    .restart local v42    # "onComplete":Landroid/os/Message;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_24

    .line 2717
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EVENT_SET_CALL_WAITING_DONE: ar.exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    if-eqz v42, :cond_1

    .line 2720
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v42

    invoke-static {v0, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2721
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2725
    :cond_24
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    const/16 v27, 0x1

    .line 2726
    .local v27, "enable":Z
    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2725
    .end local v27    # "enable":Z
    :cond_25
    const/16 v27, 0x0

    .restart local v27    # "enable":Z
    goto :goto_c

    .line 2731
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "enable":Z
    .end local v42    # "onComplete":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2732
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "[GSMPhone] handle EVENT_SET_VM_NUMBER_DONE"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    const-class v5, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2734
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2735
    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2737
    :cond_26
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/os/Message;

    .line 2738
    .restart local v42    # "onComplete":Landroid/os/Message;
    if-eqz v42, :cond_1

    .line 2739
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v42

    invoke-static {v0, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2740
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2748
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v42    # "onComplete":Landroid/os/Message;
    :sswitch_f
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPhoneId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gsm.poweron.cfu.query."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2751
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[EVENT_GET_CALL_FORWARD_DONE]ar.exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_27

    .line 2754
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2756
    :cond_27
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/os/Message;

    .line 2757
    .restart local v42    # "onComplete":Landroid/os/Message;
    if-eqz v42, :cond_1

    .line 2758
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v42

    invoke-static {v0, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2759
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2765
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v42    # "onComplete":Landroid/os/Message;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2766
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 2767
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2768
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "SET_NETWORK_SELECTION_AUTOMATIC: set to automatic"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2771
    :cond_28
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "SET_NETWORK_SELECTION_AUTOMATIC: already automatic, ignore"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2776
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2777
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->processIccRecordEvents(I)V

    goto/16 :goto_0

    .line 2781
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2782
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_29

    .line 2783
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 2785
    :cond_29
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/os/Message;

    .line 2786
    .restart local v42    # "onComplete":Landroid/os/Message;
    if-eqz v42, :cond_1

    .line 2787
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v42

    invoke-static {v0, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2788
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2793
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v42    # "onComplete":Landroid/os/Message;
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2794
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "Event EVENT_SS received"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    new-instance v37, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 2799
    .local v37, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processSsData(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2805
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v37    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2807
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2808
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, [I

    .line 2809
    .local v15, "cfuResult":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v6, 0x0

    aget v6, v15, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2a

    const/4 v6, 0x1

    :goto_d
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    const/4 v6, 0x0

    goto :goto_d

    .line 2814
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "cfuResult":[I
    :sswitch_15
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[EVENT_CFU_QUERY_TIMEOUT]mCfuQueryRetryCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2815
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    .line 2814
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    const/16 v6, 0x3c

    if-ge v5, v6, :cond_1

    .line 2817
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->queryCfuOrWait()Z

    goto/16 :goto_0

    .line 2824
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2825
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/gsm/SuppCrssNotification;

    .line 2828
    .local v41, "noti":Lcom/android/internal/telephony/gsm/SuppCrssNotification;
    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->code:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2c

    .line 2830
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2b

    .line 2831
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/Connection;

    .line 2839
    .local v18, "cn":Lcom/android/internal/telephony/Connection;
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set number presentation to connection : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    iget v7, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->cli_validity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->cli_validity:I

    packed-switch v5, :pswitch_data_1

    .line 2855
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Connection;->setNumberPresentation(I)V

    .line 2880
    .end local v18    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_2b
    :goto_e
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 2882
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2842
    .restart local v18    # "cn":Lcom/android/internal/telephony/Connection;
    :pswitch_1
    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Connection;->setNumberPresentation(I)V

    goto :goto_e

    .line 2846
    :pswitch_2
    const/4 v5, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Connection;->setNumberPresentation(I)V

    goto :goto_e

    .line 2850
    :pswitch_3
    const/4 v5, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Connection;->setNumberPresentation(I)V

    goto :goto_e

    .line 2861
    .end local v18    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_2c
    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->code:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2b

    .line 2865
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[COLP]noti.number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2b

    .line 2867
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/Connection;

    .line 2868
    .restart local v18    # "cn":Lcom/android/internal/telephony/Connection;
    if-eqz v18, :cond_2b

    .line 2869
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2b

    .line 2870
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 2871
    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Connection;->setRedirectingAddress(Ljava/lang/String;)V

    .line 2872
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[COLP]Redirecting address = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2873
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getRedirectingAddress()Ljava/lang/String;

    move-result-object v7

    .line 2872
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2887
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "cn":Lcom/android/internal/telephony/Connection;
    .end local v41    # "noti":Lcom/android/internal/telephony/gsm/SuppCrssNotification;
    :sswitch_17
    const-string/jumbo v5, "handle EVENT_VOICE_CALL_INCOMING_INDICATION"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2888
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v7, v0, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2893
    :sswitch_18
    const-string/jumbo v5, "handle EVENT_GET_AVAILABLE_NETWORK_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2894
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V

    .line 2895
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    goto/16 :goto_0

    .line 2899
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2900
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-nez v4, :cond_2d

    .line 2901
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "EVENT_IMS_UT_DONE: Error AsyncResult null!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2903
    :cond_2d
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/SuppSrvRequest;

    .line 2904
    .local v46, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    if-nez v46, :cond_2e

    .line 2905
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "EVENT_IMS_UT_DONE: Error SuppSrvRequest null!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2907
    :cond_2e
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/SuppSrvRequest;->getRequestCode()I

    move-result v5

    .line 2906
    const/16 v6, 0x11

    if-ne v6, v5, :cond_32

    .line 2908
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2f

    .line 2909
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2910
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "EVENT_IMS_UT_DONE: SUPP_SRV_REQ_SET_CF_IN_TIME_SLOT"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2912
    .local v19, "commandInterfaceCFAction":I
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 2913
    .local v20, "commandInterfaceCFReason":I
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 2914
    .local v24, "dialingNumber":Ljava/lang/String;
    if-nez v20, :cond_2f

    .line 2915
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2916
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 2917
    const-string/jumbo v6, "enabled_ut_cfu_mode_on"

    .line 2916
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    .end local v19    # "commandInterfaceCFAction":I
    .end local v20    # "commandInterfaceCFReason":I
    .end local v24    # "dialingNumber":Ljava/lang/String;
    :cond_2f
    :goto_f
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v42

    .line 2925
    .restart local v42    # "onComplete":Landroid/os/Message;
    if-eqz v42, :cond_30

    .line 2926
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v42

    invoke-static {v0, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2927
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    .line 2929
    :cond_30
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_0

    .line 2919
    .end local v42    # "onComplete":Landroid/os/Message;
    .restart local v19    # "commandInterfaceCFAction":I
    .restart local v20    # "commandInterfaceCFReason":I
    .restart local v24    # "dialingNumber":Ljava/lang/String;
    :cond_31
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 2920
    const-string/jumbo v6, "enabled_ut_cfu_mode_off"

    .line 2919
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 2931
    .end local v19    # "commandInterfaceCFAction":I
    .end local v20    # "commandInterfaceCFReason":I
    .end local v24    # "dialingNumber":Ljava/lang/String;
    :cond_32
    const/16 v17, 0x0

    .line 2932
    .local v17, "cmdException":Lcom/android/internal/telephony/CommandException;
    const/16 v29, 0x0

    .line 2933
    .local v29, "imsException":Lcom/android/ims/ImsException;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_33

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_33

    .line 2934
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    .end local v17    # "cmdException":Lcom/android/internal/telephony/CommandException;
    check-cast v17, Lcom/android/internal/telephony/CommandException;

    .line 2936
    :cond_33
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_34

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/ims/ImsException;

    if-eqz v5, :cond_34

    .line 2937
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    .end local v29    # "imsException":Lcom/android/ims/ImsException;
    check-cast v29, Lcom/android/ims/ImsException;

    .line 2939
    :cond_34
    if-eqz v17, :cond_35

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    .line 2940
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_403_FORBIDDEN:Lcom/android/internal/telephony/CommandException$Error;

    .line 2939
    if-ne v5, v6, :cond_35

    .line 2941
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 2942
    const/16 v5, 0x7d1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .line 2943
    .local v38, "msgCSFB":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2944
    .end local v38    # "msgCSFB":Landroid/os/Message;
    :cond_35
    if-eqz v17, :cond_36

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    .line 2945
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->UT_UNKNOWN_HOST:Lcom/android/internal/telephony/CommandException$Error;

    .line 2944
    if-ne v5, v6, :cond_36

    .line 2946
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 2947
    const/16 v5, 0x7d1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .line 2948
    .restart local v38    # "msgCSFB":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2949
    .end local v38    # "msgCSFB":Landroid/os/Message;
    :cond_36
    if-eqz v29, :cond_37

    invoke-virtual/range {v29 .. v29}, Lcom/android/ims/ImsException;->getCode()I

    move-result v5

    .line 2950
    const/16 v6, 0x33e

    .line 2949
    if-ne v5, v6, :cond_37

    .line 2951
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 2952
    const/16 v5, 0x7d1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .line 2953
    .restart local v38    # "msgCSFB":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2954
    .end local v38    # "msgCSFB":Landroid/os/Message;
    :cond_37
    if-eqz v29, :cond_38

    invoke-virtual/range {v29 .. v29}, Lcom/android/ims/ImsException;->getCode()I

    move-result v5

    .line 2955
    const/16 v6, 0x33f

    .line 2954
    if-ne v5, v6, :cond_38

    .line 2956
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 2957
    const/16 v5, 0x7d1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .line 2958
    .restart local v38    # "msgCSFB":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2960
    .end local v38    # "msgCSFB":Landroid/os/Message;
    :cond_38
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_42

    .line 2961
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/SuppSrvRequest;->getRequestCode()I

    move-result v5

    const/16 v6, 0xb

    if-ne v6, v5, :cond_42

    .line 2962
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2963
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "EVENT_IMS_UT_DONE: SUPP_SRV_REQ_SET_CF"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2965
    .restart local v19    # "commandInterfaceCFAction":I
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 2966
    .restart local v20    # "commandInterfaceCFReason":I
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 2967
    .restart local v24    # "dialingNumber":Ljava/lang/String;
    if-nez v20, :cond_3a

    .line 2968
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2969
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3f

    .line 2971
    iget-object v12, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2973
    .restart local v12    # "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v12, :cond_39

    array-length v5, v12

    if-nez v5, :cond_3c

    .line 2974
    :cond_39
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "cfinfo is null or 0."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    .end local v12    # "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v19    # "commandInterfaceCFAction":I
    .end local v20    # "commandInterfaceCFReason":I
    .end local v24    # "dialingNumber":Ljava/lang/String;
    :cond_3a
    :goto_10
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v42

    .line 3065
    .restart local v42    # "onComplete":Landroid/os/Message;
    if-eqz v42, :cond_3b

    .line 3066
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v42

    invoke-static {v0, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3067
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    .line 3069
    :cond_3b
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_0

    .line 2976
    .end local v42    # "onComplete":Landroid/os/Message;
    .restart local v12    # "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v19    # "commandInterfaceCFAction":I
    .restart local v20    # "commandInterfaceCFReason":I
    .restart local v24    # "dialingNumber":Ljava/lang/String;
    :cond_3c
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_11
    array-length v5, v12

    move/from16 v0, v28

    if-ge v0, v5, :cond_3a

    .line 2977
    aget-object v5, v12, v28

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3e

    .line 2979
    aget-object v5, v12, v28

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3d

    .line 2980
    const-string/jumbo v5, "GSMPhone"

    .line 2981
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Set enable, serviceClass: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2982
    aget-object v7, v12, v28

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2981
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2980
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 2985
    const-string/jumbo v6, "enabled_ut_cfu_mode_on"

    .line 2983
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2987
    :cond_3d
    const-string/jumbo v5, "GSMPhone"

    .line 2988
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Set disable, serviceClass: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2989
    aget-object v7, v12, v28

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2988
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2987
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 2992
    const-string/jumbo v6, "enabled_ut_cfu_mode_off"

    .line 2990
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 2976
    :cond_3e
    add-int/lit8 v28, v28, 0x1

    goto :goto_11

    .line 2999
    .end local v12    # "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v28    # "i":I
    :cond_3f
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "ar.result is null."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 3002
    :cond_40
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 3003
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 3004
    const-string/jumbo v6, "enabled_ut_cfu_mode_on"

    .line 3003
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3006
    :cond_41
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 3007
    const-string/jumbo v6, "enabled_ut_cfu_mode_off"

    .line 3006
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3011
    .end local v19    # "commandInterfaceCFAction":I
    .end local v20    # "commandInterfaceCFReason":I
    .end local v24    # "dialingNumber":Ljava/lang/String;
    :cond_42
    if-eqz v29, :cond_45

    invoke-virtual/range {v29 .. v29}, Lcom/android/ims/ImsException;->getCode()I

    move-result v5

    .line 3012
    const/16 v6, 0x340

    .line 3011
    if-ne v5, v6, :cond_45

    .line 3016
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 3017
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/SuppSrvRequest;->getRequestCode()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_43

    .line 3018
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/SuppSrvRequest;->getRequestCode()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_44

    .line 3019
    :cond_43
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    .line 3020
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_404_NOT_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    .line 3019
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_10

    .line 3022
    :cond_44
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    .line 3023
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 3022
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_10

    .line 3025
    :cond_45
    if-eqz v17, :cond_48

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    .line 3026
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_404_NOT_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    .line 3025
    if-ne v5, v6, :cond_48

    .line 3030
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 3031
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/SuppSrvRequest;->getRequestCode()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_46

    .line 3032
    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/SuppSrvRequest;->getRequestCode()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_47

    .line 3033
    :cond_46
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "GSMPhone get UT_XCAP_404_NOT_FOUND."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 3035
    :cond_47
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    .line 3036
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 3035
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_10

    .line 3038
    :cond_48
    if-eqz v29, :cond_4a

    invoke-virtual/range {v29 .. v29}, Lcom/android/ims/ImsException;->getCode()I

    move-result v5

    .line 3039
    const/16 v6, 0x341

    .line 3038
    if-ne v5, v6, :cond_4a

    .line 3040
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isEnableXcapHttpResponse409()Z

    move-result v5

    if-nez v5, :cond_49

    .line 3042
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "GSMPhone get UT_XCAP_409_CONFLICT, return GENERIC_FAILURE"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    .line 3045
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 3044
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_10

    .line 3047
    :cond_49
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "GSMPhone get UT_XCAP_409_CONFLICT."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    .line 3049
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_409_CONFLICT:Lcom/android/internal/telephony/CommandException$Error;

    .line 3048
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_10

    .line 3051
    :cond_4a
    if-eqz v17, :cond_3a

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    .line 3052
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_409_CONFLICT:Lcom/android/internal/telephony/CommandException$Error;

    .line 3051
    if-ne v5, v6, :cond_3a

    .line 3053
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isEnableXcapHttpResponse409()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 3055
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "GSMPhone get UT_XCAP_409_CONFLICT, return GENERIC_FAILURE"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    .line 3058
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 3057
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_10

    .line 3060
    :cond_4b
    const-string/jumbo v5, "GSMPhone"

    const-string/jumbo v6, "GSMPhone get UT_XCAP_409_CONFLICT."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 3076
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v46    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :sswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleImsUtCsfb(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3079
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleUssiCsfb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3082
    :sswitch_1c
    const-string/jumbo v5, "handle EVENT_ABNORMAL_EVENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3083
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 3084
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4d

    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_4d

    .line 3085
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, [Ljava/lang/String;

    .line 3086
    .local v39, "msgString":[Ljava/lang/String;
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_12
    move-object/from16 v0, v39

    array-length v5, v0

    move/from16 v0, v28

    if-ge v0, v5, :cond_4c

    .line 3087
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "msgString["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v39, v28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3086
    add-int/lit8 v28, v28, 0x1

    goto :goto_12

    .line 3089
    :cond_4c
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleAbnormalEvent([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3091
    .end local v28    # "i":I
    .end local v39    # "msgString":[Ljava/lang/String;
    :cond_4d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AsyncResult is wrong "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3095
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_1d
    const-string/jumbo v5, "handle EVENT_SET_BAND_MODE_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3096
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 3097
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4e

    .line 3098
    const-string/jumbo v5, "B40 broken. set band mode complete"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3100
    :cond_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AsyncResult is wrong "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3106
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_1e
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gsm.poweron.cfu.query."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 3109
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE]ar.exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3110
    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 3109
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4f

    .line 3112
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuInTimeSlotQueryResult([Lcom/android/internal/telephony/CallForwardInfoEx;)V

    .line 3114
    :cond_4f
    const-string/jumbo v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE]msg.arg1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3115
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 3114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_50

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_50

    .line 3117
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/CommandException;

    .line 3118
    .local v17, "cmdException":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_50

    if-eqz v17, :cond_50

    .line 3119
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    .line 3120
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 3119
    if-ne v5, v6, :cond_50

    .line 3121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v5, :cond_50

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_50

    .line 3122
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_50

    .line 3124
    const/16 v5, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 3123
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 3128
    .end local v17    # "cmdException":Lcom/android/internal/telephony/CommandException;
    :cond_50
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/os/Message;

    .line 3129
    .restart local v42    # "onComplete":Landroid/os/Message;
    if-eqz v42, :cond_1

    .line 3130
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v42

    invoke-static {v0, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3131
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3136
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v42    # "onComplete":Landroid/os/Message;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 3137
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3138
    .local v45, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v14, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;

    .line 3139
    .local v14, "cfuEx":Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_51

    if-eqz v45, :cond_51

    .line 3140
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_52

    const/4 v5, 0x1

    :goto_13
    iget-object v6, v14, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mSetCfNumber:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v7, v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 3141
    iget-object v5, v14, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mSetTimeSlot:[J

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveTimeSlot([J)V

    .line 3142
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_53

    .line 3143
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 3144
    const-string/jumbo v6, "enabled_ut_cfu_mode_on"

    .line 3143
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3150
    :cond_51
    :goto_14
    iget-object v5, v14, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    if-eqz v5, :cond_1

    .line 3151
    iget-object v5, v14, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v6, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3152
    iget-object v5, v14, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3140
    :cond_52
    const/4 v5, 0x0

    goto :goto_13

    .line 3146
    :cond_53
    const-string/jumbo v5, "persist.radio.ut.cfu.mode"

    .line 3147
    const-string/jumbo v6, "enabled_ut_cfu_mode_off"

    .line 3146
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 2378
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2391
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_a
        0x3 -> :sswitch_4
        0x5 -> :sswitch_1
        0x6 -> :sswitch_5
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xc -> :sswitch_b
        0xd -> :sswitch_f
        0x12 -> :sswitch_12
        0x13 -> :sswitch_2
        0x14 -> :sswitch_e
        0x1c -> :sswitch_10
        0x1d -> :sswitch_11
        0x24 -> :sswitch_13
        0x65 -> :sswitch_14
        0x66 -> :sswitch_15
        0x67 -> :sswitch_16
        0x68 -> :sswitch_17
        0x6b -> :sswitch_1c
        0x6c -> :sswitch_1d
        0x6d -> :sswitch_1e
        0x6e -> :sswitch_1f
        0x12d -> :sswitch_c
        0x12e -> :sswitch_d
        0x7d0 -> :sswitch_19
        0x7d1 -> :sswitch_1a
        0x7d2 -> :sswitch_3
        0x7d3 -> :sswitch_1b
        0x7a328 -> :sswitch_18
    .end sparse-switch

    .line 2840
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1289
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1291
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1294
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 1295
    const/4 v1, 0x1

    return v1

    .line 1298
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3563
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAll()V

    .line 3562
    return-void
.end method

.method protected isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v0, 0x1

    .line 1570
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 2

    .prologue
    .line 3357
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3358
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isCspPlmnEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceIdAbnormal()I
    .locals 1

    .prologue
    .line 4114
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiAbnormal:I

    return v0
.end method

.method public isDuringImsCall()Z
    .locals 6

    .prologue
    .line 4122
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v4, :cond_1

    .line 4123
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 4124
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 4125
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 4126
    .local v3, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4127
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    .line 4126
    if-nez v4, :cond_0

    .line 4127
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    .line 4128
    :goto_0
    if-eqz v2, :cond_1

    .line 4129
    const-string/jumbo v4, "GSMPhone"

    const-string/jumbo v5, "During IMS call."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    const/4 v4, 0x1

    return v4

    .line 4126
    :cond_0
    const/4 v2, 0x1

    .local v2, "isDuringImsCall":Z
    goto :goto_0

    .line 4133
    .end local v0    # "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    .end local v1    # "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    .end local v2    # "isDuringImsCall":Z
    .end local v3    # "ringingCallState":Lcom/android/internal/telephony/Call$State;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public isEnableXcapHttpResponse409()Z
    .locals 2

    .prologue
    .line 4577
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4578
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "isEnableXcapHttpResponse409 is true."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    const/4 v0, 0x1

    return v0

    .line 4582
    :cond_0
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "isEnableXcapHttpResponse409 is false."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    const/4 v0, 0x0

    return v0
.end method

.method public isGsmUtSupport()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4334
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4335
    return v2

    .line 4338
    :cond_0
    const-string/jumbo v0, "ro.mtk_ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4339
    const-string/jumbo v0, "ro.mtk_volte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4338
    if-eqz v0, :cond_2

    .line 4340
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4341
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp03IccCard()Z

    move-result v0

    .line 4340
    if-nez v0, :cond_1

    .line 4342
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v0

    .line 4340
    if-nez v0, :cond_1

    .line 4343
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp06IccCard()Z

    move-result v0

    .line 4340
    if-nez v0, :cond_1

    .line 4344
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp07IccCard()Z

    move-result v0

    .line 4340
    if-nez v0, :cond_1

    .line 4345
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp15IccCard()Z

    move-result v0

    .line 4340
    if-nez v0, :cond_1

    .line 4346
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp18IccCard()Z

    move-result v0

    .line 4340
    if-eqz v0, :cond_2

    .line 4347
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isUsimCard()Z

    move-result v0

    .line 4340
    if-eqz v0, :cond_2

    .line 4348
    const/4 v0, 0x1

    return v0

    .line 4351
    :cond_2
    return v2
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1129
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1130
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1132
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1133
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    .line 1132
    if-nez v3, :cond_0

    .line 1134
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    .line 1132
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method isManualNetSelAllowed()Z
    .locals 5

    .prologue
    .line 3363
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 3364
    .local v0, "nwMode":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v1

    .line 3366
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3366
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3369
    const-string/jumbo v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isManualNetSelAllowed in mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isManualSelProhibitedInGlobalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3375
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 3376
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 3377
    :cond_0
    const-string/jumbo v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Manual selection not supported in mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    const/4 v2, 0x0

    return v2

    .line 3380
    :cond_1
    const-string/jumbo v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Manual selection is supported in mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    const/4 v2, 0x1

    return v2
.end method

.method public isOp01IccCard()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4372
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4373
    return v4

    .line 4376
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4377
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOp01IccCard, mccMnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4378
    if-eqz v0, :cond_2

    .line 4379
    const-string/jumbo v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4380
    const-string/jumbo v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4379
    if-nez v1, :cond_1

    .line 4380
    const-string/jumbo v1, "46008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4379
    if-eqz v1, :cond_2

    .line 4381
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4385
    :cond_2
    return v4
.end method

.method public isOp03IccCard()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4394
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4395
    return v3

    .line 4398
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4399
    .local v0, "mccMnc":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4400
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOp03IccCard, mccMnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone;->OP03_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4404
    :cond_1
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v2, "isOp03IccCard: false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4405
    return v3
.end method

.method public isOp05IccCard()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4414
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4415
    return v3

    .line 4418
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4419
    .local v0, "mccMnc":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4420
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOp05IccCard, mccMnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone;->OP05_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4424
    :cond_1
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v2, "isOp05IccCard: false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4425
    return v3
.end method

.method public isOp06IccCard()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4429
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4430
    return v4

    .line 4433
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4434
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOp06IccCard, mccMnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4435
    if-eqz v0, :cond_2

    .line 4436
    const-string/jumbo v1, "26202"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4437
    const-string/jumbo v1, "26204"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4438
    const-string/jumbo v1, "26209"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4439
    const-string/jumbo v1, "20205"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4440
    const-string/jumbo v1, "21670"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4441
    const-string/jumbo v1, "27402"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4442
    const-string/jumbo v1, "27403"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4443
    const-string/jumbo v1, "27201"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4444
    const-string/jumbo v1, "22210"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4445
    const-string/jumbo v1, "27801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4446
    const-string/jumbo v1, "20404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4447
    const-string/jumbo v1, "26801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4448
    const-string/jumbo v1, "22601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4449
    const-string/jumbo v1, "21401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4450
    const-string/jumbo v1, "21406"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4451
    const-string/jumbo v1, "28602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4452
    const-string/jumbo v1, "23415"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4453
    const-string/jumbo v1, "23591"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-nez v1, :cond_1

    .line 4454
    const-string/jumbo v1, "90128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4436
    if-eqz v1, :cond_2

    .line 4455
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4459
    :cond_2
    return v4
.end method

.method public isOp07IccCard()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4468
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4469
    return v3

    .line 4472
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4473
    .local v0, "mccMnc":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4474
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOp07IccCard, mccMnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone;->OP07_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4478
    :cond_1
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v2, "isOp07IccCard: false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    return v3
.end method

.method public isOp08IccCard()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4483
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4484
    return v3

    .line 4487
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4488
    .local v0, "mccMnc":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4489
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOp08IccCard, mccMnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone;->OP08_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4493
    :cond_1
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v2, "isOp07IccCard: false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    return v3
.end method

.method public isOp15IccCard()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4498
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4499
    return v4

    .line 4502
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4503
    .local v0, "mccMnc":Ljava/lang/String;
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOp15IccCard, mccMnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    if-eqz v0, :cond_2

    .line 4505
    const-string/jumbo v1, "26207"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "26208"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4506
    const-string/jumbo v1, "26211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4505
    if-eqz v1, :cond_2

    .line 4507
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4511
    :cond_2
    return v4
.end method

.method public isOp18IccCard()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4521
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4522
    return v3

    .line 4525
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4526
    .local v0, "mccMnc":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4527
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOp18IccCard, mccMnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4528
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone;->OP18_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4531
    :cond_1
    const-string/jumbo v1, "GSMPhone"

    const-string/jumbo v2, "isOp18IccCard: false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4532
    return v3
.end method

.method public isOpTbClir()Z
    .locals 2

    .prologue
    .line 4562
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp03IccCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4563
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp08IccCard()Z

    move-result v0

    .line 4562
    if-nez v0, :cond_0

    .line 4564
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v0

    .line 4562
    if-eqz v0, :cond_1

    .line 4565
    :cond_0
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "isOpTbClir(): true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    const/4 v0, 0x1

    return v0

    .line 4568
    :cond_1
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "isOpTbClir(): false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    const/4 v0, 0x0

    return v0
.end method

.method public isOutgoingCallBarring(Ljava/lang/String;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    .prologue
    .line 4363
    const-string/jumbo v0, "AO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4364
    const-string/jumbo v0, "OI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4363
    if-nez v0, :cond_0

    .line 4365
    const-string/jumbo v0, "OX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4363
    if-eqz v0, :cond_1

    .line 4366
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 4368
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSaveCFNumber()Z
    .locals 2

    .prologue
    .line 4592
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp07IccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4593
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "isSupportSaveCFNumber(): true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    const/4 v0, 0x1

    return v0

    .line 4597
    :cond_0
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "isSupportSaveCFNumber(): false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    const/4 v0, 0x0

    return v0
.end method

.method public isUsimCard()Z
    .locals 2

    .prologue
    .line 4355
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    .line 4356
    .local v0, "iccCardType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4357
    const/4 v1, 0x1

    return v1

    .line 4359
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3557
    const-string/jumbo v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GSMPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    return-void
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 769
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDisconnectCause(II)V

    .line 743
    return-void
.end method

.method public notifyEcbmTimerReset(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 3519
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 3518
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 763
    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 739
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 738
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 724
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 735
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 733
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 759
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 758
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/Phone$SuppService;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 753
    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 749
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 4
    .param p1, "mmi"    # Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .prologue
    const/4 v3, 0x0

    .line 2217
    const-string/jumbo v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingMMIs.remove(mmi) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2220
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 2221
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2220
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2209
    :cond_1
    return-void
.end method

.method public onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;Ljava/lang/Object;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2238
    const-string/jumbo v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingMMIs.remove(mmi) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 2242
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2241
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2231
    :cond_1
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3191
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_0

    .line 3192
    return-void

    .line 3196
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 3197
    .local v2, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 3199
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v2, :cond_1

    .line 3200
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 3201
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    const-string/jumbo v3, "New ISIM application found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3203
    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 3205
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 3207
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 3208
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v2, :cond_4

    .line 3209
    if-eqz v0, :cond_3

    .line 3210
    const-string/jumbo v3, "Removing stale icc objects."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3211
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3212
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 3213
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 3215
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3216
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3218
    :cond_3
    if-eqz v2, :cond_4

    .line 3219
    const-string/jumbo v3, "New Uicc application found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3220
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3221
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3222
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForSimRecordEvents()V

    .line 3223
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 3190
    :cond_4
    return-void
.end method

.method public queryCfuOrWait()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3846
    const/16 v4, 0x63

    .local v4, "sid1":I
    const/16 v5, 0x63

    .line 3861
    .local v5, "sid2":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gsm.poweron.cfu.query."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3862
    .local v2, "oppositePropertyValue1":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gsm.poweron.cfu.query."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3863
    .local v3, "oppositePropertyValue2":Ljava/lang/String;
    const-string/jumbo v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3864
    const-string/jumbo v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 3863
    if-eqz v6, :cond_1

    .line 3865
    :cond_0
    const/16 v6, 0x66

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3866
    .local v1, "message":Landroid/os/Message;
    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v1, v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3867
    return v9

    .line 3870
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDataEnabled()Z

    move-result v0

    .line 3871
    .local v0, "bDataEnable":Z
    const-string/jumbo v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bDataEnable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v6

    if-nez v6, :cond_2

    .line 3874
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isGsmUtSupport()Z

    move-result v6

    .line 3873
    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 3875
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    .line 3878
    const/16 v7, 0x6d

    invoke-virtual {p0, v7, v10, v9, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 3875
    invoke-virtual {v6, v9, v10, v7}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    .line 3885
    :goto_0
    return v10

    .line 3880
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 3881
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 3883
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xd

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v9, v10, v11, v7}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public queryPhbStorageInfo(ILandroid/os/Message;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 4050
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 1

    .prologue
    .line 4093
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->refreshSpnDisplay()V

    .line 4092
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3498
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3579
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3581
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 3582
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3578
    :cond_0
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3531
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3530
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 807
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 785
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    .line 832
    return-void
.end method

.method public removeReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "removeReferences"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 452
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 453
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 454
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 455
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 457
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 449
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 5
    .param p1, "commandInterfaceCLIRMode"    # I

    .prologue
    .line 3268
    const-string/jumbo v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveClirSetting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3273
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3276
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clir_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3281
    const-string/jumbo v2, "GSMPhone"

    const-string/jumbo v3, "failed to commit CLIR preference"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    :cond_0
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V
    .locals 3
    .param p1, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4108
    const-string/jumbo v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectFemtoCell(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V

    .line 4107
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2116
    new-instance v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;-><init>()V

    .line 2117
    .local v2, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iput-object p2, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 2118
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 2119
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 2121
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2123
    .local v1, "msg":Landroid/os/Message;
    const-string/jumbo v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GSMPhone selectNetworkManually() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const-string/jumbo v0, "0"

    .line 2126
    .local v0, "actype":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "3G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2127
    const-string/jumbo v0, "2"

    .line 2132
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2113
    return-void

    .line 2128
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "4G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2129
    const-string/jumbo v0, "7"

    goto :goto_0
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .param p1, "dtmfString"    # Ljava/lang/String;

    .prologue
    .line 1344
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "[GSMPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 1315
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1316
    const-string/jumbo v0, "GSMPhone"

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1316
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V
    .locals 4
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .prologue
    const/4 v3, 0x0

    .line 3837
    const-string/jumbo v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendErrorResponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    if-eqz p1, :cond_0

    .line 3839
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3840
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3836
    :cond_0
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1303
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1305
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[sendUssdResponse]mPendingMMIs.add(mmi) + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1309
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method public setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 21
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "timeSlot"    # [J
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3779
    .local v4, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v5

    if-nez v5, :cond_0

    .line 3780
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v5

    .line 3779
    if-eqz v5, :cond_0

    .line 3780
    if-eqz v4, :cond_0

    .line 3781
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    .line 3783
    const/16 v5, 0x11

    .line 3782
    move-object/from16 v0, p6

    invoke-static {v5, v0}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v20

    .line 3784
    .local v20, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3785
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3786
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3787
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3788
    const/16 v5, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .local v10, "imsUtResult":Landroid/os/Message;
    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    .line 3789
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V

    .line 3792
    return-void

    .line 3795
    .end local v10    # "imsUtResult":Landroid/os/Message;
    .end local v20    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3796
    if-nez p2, :cond_3

    .line 3798
    new-instance v19, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;-><init>(Ljava/lang/String;[JLandroid/os/Message;)V

    .line 3800
    .local v19, "cfuEx":Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 3799
    :goto_0
    const/16 v6, 0x6e

    .line 3800
    const/4 v7, 0x0

    .line 3799
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v5, v7, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 3802
    .local v18, "resp":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v5

    if-nez v5, :cond_2

    .line 3803
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isGsmUtSupport()Z

    move-result v5

    .line 3802
    if-eqz v5, :cond_2

    .line 3804
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    .line 3805
    const/4 v14, 0x1

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    .line 3804
    invoke-virtual/range {v11 .. v18}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    .line 3777
    .end local v18    # "resp":Landroid/os/Message;
    .end local v19    # "cfuEx":Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;
    :goto_1
    return-void

    .line 3800
    .restart local v19    # "cfuEx":Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 3809
    .restart local v18    # "resp":Landroid/os/Message;
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 3808
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_1

    .line 3812
    .end local v18    # "resp":Landroid/os/Message;
    .end local v19    # "cfuEx":Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_1
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 19
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1618
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 1619
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 1620
    const/16 v3, 0xb

    move-object/from16 v0, p5

    invoke-static {v3, v0}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v17

    .line 1622
    .local v17, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1625
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    const/16 v3, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .local v7, "imsUtResult":Landroid/os/Message;
    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    .line 1627
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1629
    return-void

    .line 1632
    .end local v7    # "imsUtResult":Landroid/os/Message;
    .end local v17    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1633
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v3

    .line 1632
    if-eqz v3, :cond_7

    .line 1636
    if-nez p2, :cond_4

    .line 1637
    const/16 v16, 0x0

    .line 1638
    .local v16, "origUtCfuMode":I
    const-string/jumbo v3, "persist.radio.ut.cfu.mode"

    .line 1639
    const-string/jumbo v4, "disabled_ut_cfu_mode"

    .line 1638
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1640
    .local v18, "utCfuMode":Ljava/lang/String;
    const-string/jumbo v3, "enabled_ut_cfu_mode_on"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1641
    const/16 v16, 0x1

    .line 1646
    :cond_1
    :goto_0
    const-string/jumbo v3, "persist.radio.ut.cfu.mode"

    .line 1647
    const-string/jumbo v4, "disabled_ut_cfu_mode"

    .line 1646
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    new-instance v15, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-direct {v15, v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 1651
    .local v15, "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 1650
    :goto_1
    const/16 v4, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v3, v1, v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1657
    .end local v15    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .end local v16    # "origUtCfuMode":I
    .end local v18    # "utCfuMode":Ljava/lang/String;
    .local v14, "resp":Landroid/os/Message;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_5

    .line 1658
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isGsmUtSupport()Z

    move-result v3

    .line 1657
    if-eqz v3, :cond_5

    .line 1659
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    .line 1660
    const/4 v11, 0x1

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    .line 1659
    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1662
    return-void

    .line 1642
    .end local v14    # "resp":Landroid/os/Message;
    .restart local v16    # "origUtCfuMode":I
    .restart local v18    # "utCfuMode":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "enabled_ut_cfu_mode_off"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1643
    const/16 v16, 0x2

    goto :goto_0

    .line 1651
    .restart local v15    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1653
    .end local v15    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .end local v16    # "origUtCfuMode":I
    .end local v18    # "utCfuMode":Ljava/lang/String;
    :cond_4
    move-object/from16 v14, p5

    .restart local v14    # "resp":Landroid/os/Message;
    goto :goto_2

    .line 1666
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1667
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 1669
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1671
    const/4 v11, 0x1

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    .line 1669
    invoke-interface/range {v8 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1616
    .end local v14    # "resp":Landroid/os/Message;
    :cond_7
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2012
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    if-nez v2, :cond_0

    .line 2013
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->initTbcwMode()V

    .line 2017
    :cond_0
    const-string/jumbo v2, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCallWaiting(): mTbcwMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2018
    const-string/jumbo v6, ", onComplete = "

    .line 2017
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    if-ne v2, v7, :cond_1

    .line 2022
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 2023
    return-void

    .line 2024
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 2025
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 2026
    return-void

    .line 2027
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_4

    .line 2029
    if-eqz p1, :cond_3

    move v2, v3

    .line 2028
    :goto_0
    const/16 v5, 0x12e

    invoke-virtual {p0, v5, v2, v4, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2030
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 2031
    return-void

    .end local v1    # "resp":Landroid/os/Message;
    :cond_3
    move v2, v4

    .line 2029
    goto :goto_0

    .line 2034
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2035
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 2036
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_5

    .line 2045
    const-string/jumbo v2, "GSMPhone"

    const-string/jumbo v3, "setCallWaiting(): IMS in service"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 2047
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 2048
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 2049
    return-void

    .line 2053
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_6

    .line 2054
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isGsmUtSupport()Z

    move-result v2

    .line 2053
    if-eqz v2, :cond_6

    .line 2055
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCallWaiting(ZILandroid/os/Message;)V

    .line 2057
    return-void

    .line 2061
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 2062
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 2064
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 2011
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3351
    const-string/jumbo v0, "GSMPhone"

    const-string/jumbo v1, "[GSMPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3350
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    .line 2199
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataOnRoamingEnabled(Z)V

    .line 2189
    return-void
.end method

.method public setDeviceIdAbnormal(I)V
    .locals 0
    .param p1, "abnormal"    # I

    .prologue
    .line 4118
    iput p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiAbnormal:I

    .line 4117
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3644
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3645
    .local v7, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz v7, :cond_2

    .line 3646
    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 3649
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3650
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v0

    .line 3649
    if-eqz v0, :cond_0

    .line 3652
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 3651
    invoke-virtual {p0, p4, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3653
    return-void

    .line 3657
    :cond_0
    const/16 v0, 0x9

    invoke-static {v0, p4}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v9

    .line 3659
    .local v9, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    iget-object v0, v9, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3660
    if-eqz p2, :cond_1

    const/4 v6, 0x1

    .line 3661
    .local v6, "enableState":I
    :goto_0
    iget-object v0, v9, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3662
    iget-object v0, v9, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3663
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 3665
    .local v8, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 3666
    return-void

    .line 3660
    .end local v6    # "enableState":I
    .end local v8    # "imsUtResult":Landroid/os/Message;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "enableState":I
    goto :goto_0

    .line 3670
    .end local v6    # "enableState":I
    .end local v9    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_3

    .line 3671
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isGsmUtSupport()Z

    move-result v0

    .line 3670
    if-eqz v0, :cond_3

    .line 3672
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 3674
    return-void

    .line 3678
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 3679
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 3681
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 3643
    return-void
.end method

.method public setIncomingCallIndicationResponse(Z)V
    .locals 2
    .param p1, "accept"    # Z

    .prologue
    .line 3573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIncomingCallIndicationResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3574
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setIncomingCallIndicationResponse(Z)V

    .line 3572
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    .prologue
    .line 3508
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    .line 3507
    return-void
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 3514
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabledFlag(Z)Z

    move-result v0

    return v0
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1506
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1507
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1509
    const/4 v1, 0x1

    return v1

    .line 1511
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 2154
    return-void
.end method

.method public setNetworkSelectionModeSemiAutomatic(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2093
    new-instance v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;-><init>()V

    .line 2094
    .local v2, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iput-object p2, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 2095
    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 2096
    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 2098
    const/16 v3, 0x11

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2100
    .local v1, "msg":Landroid/os/Message;
    const-string/jumbo v0, "0"

    .line 2101
    .local v0, "actype":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "3G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2102
    const-string/jumbo v0, "2"

    .line 2107
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeSemiAutomatic(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2089
    return-void

    .line 2103
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "4G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2104
    const-string/jumbo v0, "7"

    goto :goto_0
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2143
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 2142
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 6
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3461
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_0

    .line 3462
    return v5

    .line 3465
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 3466
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_1

    .line 3467
    return v5

    .line 3470
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v2

    .line 3473
    .local v2, "status":Z
    if-eqz v2, :cond_3

    .line 3474
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3475
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    .line 3476
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 3477
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    .line 3476
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 3479
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v3, :cond_3

    .line 3480
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 3483
    .end local v1    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    return v2
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x12

    const/4 v5, 0x0

    .line 1791
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1792
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 1793
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_2

    .line 1795
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1797
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1796
    invoke-virtual {p0, p2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1798
    return-void

    .line 1802
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOpTbClir()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1803
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1804
    invoke-virtual {p0, v6, p1, v5, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1803
    invoke-interface {v3, p1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1805
    return-void

    .line 1808
    :cond_1
    const/4 v3, 0x3

    invoke-static {v3, p2}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v2

    .line 1810
    .local v2, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    iget-object v3, v2, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1811
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1812
    .local v1, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1813
    return-void

    .line 1817
    .end local v1    # "imsUtResult":Landroid/os/Message;
    .end local v2    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_5

    .line 1818
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isGsmUtSupport()Z

    move-result v3

    .line 1817
    if-eqz v3, :cond_5

    .line 1819
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1821
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1820
    invoke-virtual {p0, p2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1822
    return-void

    .line 1825
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOpTbClir()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1826
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1827
    invoke-virtual {p0, v6, p1, v5, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1826
    invoke-interface {v3, p1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1828
    return-void

    .line 1831
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    .line 1832
    invoke-virtual {p0, v6, p1, v5, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1831
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCLIR(ILandroid/os/Message;)V

    .line 1834
    return-void

    .line 1838
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1839
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 1842
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1843
    invoke-virtual {p0, v6, p1, v5, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1842
    invoke-interface {v3, p1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1790
    return-void
.end method

.method public setPolEntry(Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 4
    .param p1, "networkWithAct"    # Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4065
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 4066
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v3

    .line 4065
    invoke-interface {v0, v1, v2, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V

    .line 4064
    return-void
.end method

.method protected setProperties()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 408
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(Z)V

    .line 1349
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 780
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public setTbcwMode(I)V
    .locals 3
    .param p1, "newMode"    # I

    .prologue
    .line 1868
    const-string/jumbo v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set tbcwmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iput p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    .line 1867
    return-void
.end method

.method public setTbcwToEnabledOnIfDisabled()V
    .locals 3

    .prologue
    .line 1877
    const-string/jumbo v1, "persist.radio.terminal-based.cw"

    .line 1878
    const-string/jumbo v2, "disabled_tbcw"

    .line 1877
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1879
    .local v0, "tbcwMode":Ljava/lang/String;
    const-string/jumbo v1, "disabled_tbcw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1880
    const-string/jumbo v1, "persist.radio.terminal-based.cw"

    .line 1881
    const-string/jumbo v2, "enabled_tbcw_on"

    .line 1880
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    :cond_0
    return-void
.end method

.method public setTerminalBasedCallWaiting(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1978
    const-string/jumbo v1, "persist.radio.terminal-based.cw"

    .line 1979
    const-string/jumbo v2, "disabled_tbcw"

    .line 1978
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1981
    .local v0, "tbcwMode":Ljava/lang/String;
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTerminalBasedCallWaiting(): tbcwMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1982
    const-string/jumbo v3, ", enable = "

    .line 1981
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    const-string/jumbo v1, "enabled_tbcw_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1985
    if-nez p1, :cond_0

    .line 1986
    const-string/jumbo v1, "persist.radio.terminal-based.cw"

    .line 1987
    const-string/jumbo v2, "enabled_tbcw_off"

    .line 1986
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    :cond_0
    if-eqz p2, :cond_1

    .line 1990
    invoke-static {p2, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1991
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1993
    :cond_1
    return-void

    .line 1994
    :cond_2
    const-string/jumbo v1, "enabled_tbcw_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1995
    if-eqz p1, :cond_3

    .line 1996
    const-string/jumbo v1, "persist.radio.terminal-based.cw"

    .line 1997
    const-string/jumbo v2, "enabled_tbcw_on"

    .line 1996
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    :cond_3
    if-eqz p2, :cond_4

    .line 2000
    invoke-static {p2, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2001
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2003
    :cond_4
    return-void

    .line 2006
    :cond_5
    const-string/jumbo v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTerminalBasedCallWaiting(): ERROR: tbcwMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    return-void
.end method

.method public setTrm(ILandroid/os/Message;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4039
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    .line 4038
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setUiTTYMode(ILandroid/os/Message;)V

    .line 2147
    :cond_0
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1520
    const-string/jumbo v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[GSMPhone] setVoiceMailNumber  alphaTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " voiceMailNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    .line 1524
    const/16 v2, 0x14

    invoke-virtual {p0, v2, v5, v5, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1525
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1526
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1527
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1518
    :cond_0
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 3548
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3549
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 3550
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 3547
    :goto_0
    return-void

    .line 3552
    :cond_0
    const-string/jumbo v1, "SIM Records not found, MWI not updated"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 1328
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1329
    const-string/jumbo v0, "GSMPhone"

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1329
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :goto_0
    return-void

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1338
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 838
    return-void
.end method

.method protected syncClirSetting()V
    .locals 6

    .prologue
    .line 2355
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2358
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v1, "clir_key"

    .line 2361
    .local v1, "keyName":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clir_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2363
    .local v0, "clirSetting":I
    const-string/jumbo v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncClirSetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    if-ltz v0, :cond_0

    .line 2366
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 2354
    :cond_0
    return-void

    .line 2358
    .end local v0    # "clirSetting":I
    .end local v1    # "keyName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "clir_key_2"

    .restart local v1    # "keyName":Ljava/lang/String;
    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3504
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 3503
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3588
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 3587
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3535
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 812
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 797
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 8

    .prologue
    .line 3242
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v6

    int-to-long v0, v6

    .line 3243
    .local v0, "currentDds":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 3245
    .local v4, "operatorNumeric":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCurrentCarrierInProvider: mSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3246
    const-string/jumbo v7, " currentDds = "

    .line 3245
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3246
    const-string/jumbo v7, " operatorNumeric = "

    .line 3245
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3248
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 3250
    :try_start_0
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, "current"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 3251
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3252
    .local v3, "map":Landroid/content/ContentValues;
    const-string/jumbo v6, "numeric"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3254
    const/4 v6, 0x1

    return v6

    .line 3255
    .end local v3    # "map":Landroid/content/ContentValues;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 3256
    .local v2, "e":Landroid/database/SQLException;
    const-string/jumbo v6, "GSMPhone"

    const-string/jumbo v7, "Can\'t store current operator"

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3259
    .end local v2    # "e":Landroid/database/SQLException;
    :cond_0
    const/4 v6, 0x0

    return v6
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    .line 1565
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableSingleLocationUpdate()V

    .line 2169
    return-void
.end method
