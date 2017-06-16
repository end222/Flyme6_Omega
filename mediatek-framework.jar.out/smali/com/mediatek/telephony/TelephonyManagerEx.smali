.class public Lcom/mediatek/telephony/TelephonyManagerEx;
.super Ljava/lang/Object;
.source "TelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/TelephonyManagerEx$SetDefaultSubResultCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ECC_IN_PROGRESS:Ljava/lang/String; = "android.intent.action.ECC_IN_PROGRESS"

.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_NONE:I = 0x0

.field public static final CARD_TYPE_CSIM:I = 0x4

.field public static final CARD_TYPE_NONE:I = 0x0

.field public static final CARD_TYPE_RUIM:I = 0x8

.field public static final CARD_TYPE_SIM:I = 0x1

.field public static final CARD_TYPE_USIM:I = 0x2

.field public static final DEFAULT_DATA:I = 0x0

.field public static final DEFAULT_SMS:I = 0x2

.field public static final DEFAULT_VOICE:I = 0x1

.field public static final ERROR_CODE_GENERIC_ERROR:B = 0x1t

.field public static final ERROR_CODE_NO_ERROR:B = 0x0t

.field public static final EXTRA_IN_PROGRESS:Ljava/lang/String; = "in_progress"

.field public static final GET_SC_ADDRESS_KEY_ADDRESS:Ljava/lang/String; = "scAddress"

.field public static final GET_SC_ADDRESS_KEY_RESULT:Ljava/lang/String; = "errorCode"

.field private static final PRLVERSION:Ljava/lang/String; = "cdma.prl.version"

.field private static final PROPERTY_RIL_CDMA_CARD_TYPE:[Ljava/lang/String;

.field private static final PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final PROPERTY_UIM_SUBSCRIBER_ID:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TelephonyManagerEx"

.field private static defaultSimId:I

.field private static sInstance:Lcom/mediatek/telephony/TelephonyManagerEx;


# instance fields
.field private PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    sput v2, Lcom/mediatek/telephony/TelephonyManagerEx;->defaultSimId:I

    .line 117
    new-array v0, v6, [Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "gsm.ril.fulluicctype"

    aput-object v1, v0, v2

    .line 119
    const-string/jumbo v1, "gsm.ril.fulluicctype.2"

    aput-object v1, v0, v3

    .line 120
    const-string/jumbo v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v4

    .line 121
    const-string/jumbo v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v5

    .line 117
    sput-object v0, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 127
    new-array v0, v6, [Ljava/lang/String;

    .line 128
    const-string/jumbo v1, "gsm.ril.ct3g"

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "gsm.ril.ct3g.2"

    aput-object v1, v0, v3

    .line 130
    const-string/jumbo v1, "gsm.ril.ct3g.3"

    aput-object v1, v0, v4

    .line 131
    const-string/jumbo v1, "gsm.ril.ct3g.4"

    aput-object v1, v0, v5

    .line 127
    sput-object v0, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    .line 137
    new-array v0, v6, [Ljava/lang/String;

    .line 138
    const-string/jumbo v1, "ril.cdma.card.type.1"

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "ril.cdma.card.type.2"

    aput-object v1, v0, v3

    .line 140
    const-string/jumbo v1, "ril.cdma.card.type.3"

    aput-object v1, v0, v4

    .line 141
    const-string/jumbo v1, "ril.cdma.card.type.4"

    aput-object v1, v0, v5

    .line 137
    sput-object v0, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_RIL_CDMA_CARD_TYPE:[Ljava/lang/String;

    .line 147
    new-array v0, v6, [Ljava/lang/String;

    .line 148
    const-string/jumbo v1, "ril.uim.subscriberid.1"

    aput-object v1, v0, v2

    .line 149
    const-string/jumbo v1, "ril.uim.subscriberid.2"

    aput-object v1, v0, v3

    .line 150
    const-string/jumbo v1, "ril.uim.subscriberid.3"

    aput-object v1, v0, v4

    .line 151
    const-string/jumbo v1, "ril.uim.subscriberid.4"

    aput-object v1, v0, v5

    .line 147
    sput-object v0, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_UIM_SUBSCRIBER_ID:[Ljava/lang/String;

    .line 233
    new-instance v0, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/TelephonyManagerEx;->sInstance:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 103
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 159
    const-string/jumbo v1, "ril.iccid.sim1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "ril.iccid.sim2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "ril.iccid.sim3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "ril.iccid.sim4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 158
    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 230
    const-string/jumbo v0, "telephony.registry"

    .line 229
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 159
    const-string/jumbo v1, "ril.iccid.sim1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "ril.iccid.sim2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "ril.iccid.sim3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "ril.iccid.sim4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 158
    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 219
    const-string/jumbo v0, "TelephonyManagerEx"

    const-string/jumbo v1, "getSubscriberInfo"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput-object p1, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 222
    const-string/jumbo v0, "telephony.registry"

    .line 221
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 217
    return-void
.end method

.method public static getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/mediatek/telephony/TelephonyManagerEx;->sInstance:Lcom/mediatek/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 927
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 931
    const-string/jumbo v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 944
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 946
    .local v1, "phoneId":I
    const-string/jumbo v2, "ro.telephony.default_network"

    .line 945
    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 948
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v2

    return v2

    .line 950
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 937
    const-string/jumbo v1, "gsm.current.phone-type"

    .line 938
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneTypeFromNetworkType()I

    move-result v2

    .line 937
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 939
    .local v0, "type":I
    return v0
.end method

.method private getSubIdBySlot(I)I
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v4, 0x0

    .line 550
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 551
    .local v0, "subId":[I
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubIdBySlot, simId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 552
    const-string/jumbo v3, "subId "

    .line 551
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 552
    if-eqz v0, :cond_0

    aget v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 551
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    if-eqz v0, :cond_1

    aget v1, v0, v4

    :goto_1
    return v1

    .line 552
    :cond_0
    const-string/jumbo v1, "invalid!"

    goto :goto_0

    .line 553
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    goto :goto_1
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 1054
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canSwitchDefaultSubId()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1753
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->canSwitchDefaultSubId()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1756
    :catch_0
    move-exception v1

    .line 1757
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1754
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1755
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getCallForwardingFc(II)[I
    .locals 4
    .param p1, "type"    # I
    .param p2, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1531
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getCallForwardingFc(II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1534
    :catch_0
    move-exception v1

    .line 1535
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1532
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1533
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCallState(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 839
    const-string/jumbo v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCallState simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCallWaitingFc(I)[I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1547
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getCallWaitingFc(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1550
    :catch_0
    move-exception v1

    .line 1551
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1548
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1549
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCdmaCardType(I)Lcom/android/internal/telephony/IccCardConstants$CardType;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 1609
    if-ltz p1, :cond_0

    sget-object v3, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    array-length v3, v3

    if-lt p1, v3, :cond_1

    .line 1610
    :cond_0
    const-string/jumbo v3, "TelephonyManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCdmaCardType: invalid slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const/4 v3, 0x0

    return-object v3

    .line 1613
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$CardType;->UNKNOW_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 1614
    .local v1, "mCdmaCardType":Lcom/android/internal/telephony/IccCardConstants$CardType;
    sget-object v3, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_RIL_CDMA_CARD_TYPE:[Ljava/lang/String;

    aget-object v3, v3, p1

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1615
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1616
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1617
    .local v0, "cardtype":I
    invoke-static {v0}, Lcom/android/internal/telephony/IccCardConstants$CardType;->getCardTypeFromInt(I)Lcom/android/internal/telephony/IccCardConstants$CardType;

    move-result-object v1

    .line 1619
    .end local v0    # "cardtype":I
    :cond_2
    const-string/jumbo v3, "TelephonyManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCdmaCardType result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  mCdmaCardType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    return-object v1
.end method

.method public getCdmaSubscriptionActStatus(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 1716
    const/4 v0, 0x0

    .line 1719
    .local v0, "actStatus":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getCdmaSubscriptionActStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1725
    :goto_0
    return v0

    .line 1722
    :catch_0
    move-exception v2

    .line 1723
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManagerEx"

    const-string/jumbo v4, "fail to getCdmaSubscriptionActStatus due to NullPointerException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1720
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1721
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManagerEx"

    const-string/jumbo v4, "fail to getCdmaSubscriptionActStatus due to RemoteException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 9
    .param p1, "simId"    # I

    .prologue
    const/4 v8, 0x0

    .line 300
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    .line 301
    .local v4, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v4, :cond_0

    .line 302
    const-string/jumbo v5, "TelephonyManagerEx"

    const-string/jumbo v6, "getCellLocation returning null because telephony is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-object v8

    .line 305
    :cond_0
    invoke-interface {v4, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getCellLocationUsingSlotId(I)Landroid/os/Bundle;

    move-result-object v0

    .line 306
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 307
    const-string/jumbo v5, "TelephonyManagerEx"

    const-string/jumbo v6, "getCellLocation returning null because bundle is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-object v8

    .line 310
    :cond_1
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 311
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 312
    const-string/jumbo v5, "TelephonyManagerEx"

    const-string/jumbo v6, "getCellLocation returning null because CellLocation is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    return-object v8

    .line 315
    :cond_2
    return-object v1

    .line 319
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    .end local v4    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v3

    .line 320
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "TelephonyManagerEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCellLocation returning null due to NullPointerException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-object v8

    .line 316
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 317
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v5, "TelephonyManagerEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-object v8
.end method

.method public getDataActivity(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 860
    const-string/jumbo v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDataActivity simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataActivity(I)I

    move-result v0

    return v0
.end method

.method public getDataState(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 880
    const-string/jumbo v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDataState simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 274
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceId simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceId error, return null. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 248
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceSoftwareVersion simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceSoftwareVersion error, return null. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDonotDisturbFc(I)[I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1563
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getDonotDisturbFc(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1566
    :catch_0
    move-exception v1

    .line 1567
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1564
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1565
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIccAppFamily(I)I
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    .line 1646
    const/4 v3, 0x0

    .line 1647
    .local v3, "iccType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 1648
    .local v4, "phoneCount":I
    if-ltz p1, :cond_0

    if-lt p1, v4, :cond_1

    .line 1649
    :cond_0
    const-string/jumbo v7, "TelephonyManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getIccAppFamily, invalid slotId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    return v3

    .line 1653
    :cond_1
    sget-object v7, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1654
    .local v5, "uiccType":Ljava/lang/String;
    const-string/jumbo v7, "TelephonyManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getIccAppFamily, uiccType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1656
    .local v0, "appType":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1657
    .local v1, "fullType":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v0

    if-ge v2, v7, :cond_6

    .line 1658
    const-string/jumbo v7, "USIM"

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1659
    or-int/lit8 v1, v1, 0x2

    .line 1657
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1660
    :cond_3
    const-string/jumbo v7, "SIM"

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1661
    or-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1662
    :cond_4
    const-string/jumbo v7, "CSIM"

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1663
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 1664
    :cond_5
    const-string/jumbo v7, "RUIM"

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1665
    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 1669
    :cond_6
    const-string/jumbo v7, "TelephonyManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getIccAppFamily, fullType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    if-nez v1, :cond_8

    .line 1671
    const/4 v3, 0x0

    .line 1690
    :cond_7
    :goto_2
    const-string/jumbo v7, "TelephonyManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getIccAppFamily, iccType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    return v3

    .line 1672
    :cond_8
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_9

    .line 1673
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_9

    .line 1674
    const/4 v3, 0x3

    .line 1673
    goto :goto_2

    .line 1675
    :cond_9
    and-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_a

    .line 1676
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_b

    .line 1677
    :cond_a
    const/4 v3, 0x2

    .line 1676
    goto :goto_2

    .line 1679
    :cond_b
    const/4 v3, 0x1

    .line 1682
    const/4 v7, 0x1

    if-ne v1, v7, :cond_7

    .line 1683
    sget-object v7, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1684
    .local v6, "uimDualMode":Ljava/lang/String;
    const-string/jumbo v7, "TelephonyManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uimDualMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1686
    const/4 v3, 0x2

    goto :goto_2
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I

    .prologue
    .line 564
    const/4 v3, 0x0

    .line 566
    .local v3, "type":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 567
    .local v2, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    .line 568
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 576
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v5, "TelephonyManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getIccCardType sub "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ,icc type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_1

    move-object v4, v3

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-object v3

    .line 572
    .restart local v3    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 574
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 570
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 571
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 576
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "null"

    goto :goto_1
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1083
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomainForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1086
    :catch_0
    move-exception v1

    .line 1088
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1084
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1085
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimGbabp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1151
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getIsimGbabp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimGbabp(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1162
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimGbabpForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1165
    :catch_0
    move-exception v1

    .line 1167
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1163
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1164
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1066
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpiForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1069
    :catch_0
    move-exception v1

    .line 1071
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1067
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1068
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1101
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpuForSubscriber(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1104
    :catch_0
    move-exception v1

    .line 1106
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1102
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1103
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimIst(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1118
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIstForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1121
    :catch_0
    move-exception v1

    .line 1123
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1119
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1120
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimPcscf(I)[Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1136
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscfForSubscriber(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1139
    :catch_0
    move-exception v1

    .line 1141
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1137
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1138
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 783
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLine1Number with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMmsConfigInfo(I)Lcom/mediatek/internal/telephony/MmsConfigInfo;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1431
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getMmsConfigInfo(I)Lcom/mediatek/internal/telephony/MmsConfigInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1434
    :catch_0
    move-exception v1

    .line 1435
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1432
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1433
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getMmsIcpInfo(I)Lcom/mediatek/internal/telephony/MmsIcpInfo;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1415
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getMmsIcpInfo(I)Lcom/mediatek/internal/telephony/MmsIcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1418
    :catch_0
    move-exception v1

    .line 1419
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1416
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1417
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getNeighboringCellInfo(I)Ljava/util/List;
    .locals 6
    .param p1, "simId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 345
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getNeighboringCellInfoUsingSlotId(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 351
    return-object v5

    .line 346
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 347
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNeighboringCellInfo returning null due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-object v5
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 467
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 468
    .local v1, "subId":I
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deprecated! getNetworkCountryIso with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 470
    .end local v1    # "subId":I
    :catch_0
    move-exception v0

    .line 471
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 472
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 417
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 418
    .local v1, "subId":I
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deprecated! getNetworkOperator with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 420
    .end local v1    # "subId":I
    :catch_0
    move-exception v0

    .line 421
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 422
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 392
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 393
    .local v1, "subId":I
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deprecated! getNetworkOperatorName with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 395
    .end local v1    # "subId":I
    :catch_0
    move-exception v0

    .line 396
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 397
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getNetworkType(I)I
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 522
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deprecated! getNetworkType with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v1

    return v1
.end method

.method public getPhoneType(I)I
    .locals 5
    .param p1, "simId"    # I

    .prologue
    const/4 v4, 0x0

    .line 367
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 368
    .local v0, "subIds":[I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deprecated! getPhoneType with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    return v1
.end method

.method public getPrlVersion(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 1701
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 1702
    .local v1, "slotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cdma.prl.version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1703
    .local v0, "prlVersion":Ljava/lang/String;
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPrlversion PRLVERSION subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1704
    const-string/jumbo v4, " key = "

    .line 1703
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1704
    const-string/jumbo v4, "cdma.prl.version"

    .line 1703
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1705
    const-string/jumbo v4, " value = "

    .line 1703
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    return-object v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 964
    invoke-virtual {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getScAddressWithErroCode(I)Landroid/os/Bundle;

    move-result-object v0

    .line 965
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 966
    const-string/jumbo v1, "scAddress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 968
    :cond_0
    return-object v1
.end method

.method public getScAddressWithErroCode(I)Landroid/os/Bundle;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1020
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getScAddressUsingSubId(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1024
    :catch_0
    move-exception v1

    .line 1025
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1026
    return-object v3

    .line 1021
    .end local v1    # "e2":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1022
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1023
    return-object v3
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 708
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimCountryIso with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 672
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimOperator with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 691
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimOperatorName with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    const/4 v4, 0x0

    .line 726
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 727
    :cond_0
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimSerialNumber with invalid simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-object v4

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string/jumbo v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 734
    :cond_2
    const/4 v0, 0x0

    .line 737
    .end local v0    # "iccId":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method public getSimState(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 653
    const-string/jumbo v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSimState simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 762
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubscriberId with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSupportCardType(I)[Ljava/lang/String;
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1358
    const/4 v1, 0x0

    .line 1359
    .local v1, "property":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1360
    .local v0, "prop":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1362
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    sget-object v4, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v4, v4

    if-lt p1, v4, :cond_1

    .line 1363
    :cond_0
    const-string/jumbo v3, "TelephonyManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSupportCardType: invalid slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    return-object v6

    .line 1366
    :cond_1
    sget-object v4, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    .local v0, "prop":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1368
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1370
    .end local v2    # "values":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "TelephonyManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSupportCardType slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", prop value= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1371
    const-string/jumbo v6, ", size= "

    .line 1370
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1371
    if-eqz v2, :cond_3

    array-length v3, v2

    .line 1370
    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-object v2
.end method

.method public getUimSubscriberId(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 1629
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1630
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    sget-object v2, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_UIM_SUBSCRIBER_ID:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 1631
    :cond_0
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUimSubscriberId: invalid phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const/4 v2, 0x0

    return-object v2

    .line 1635
    :cond_1
    sget-object v2, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_UIM_SUBSCRIBER_ID:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, "imsi":Ljava/lang/String;
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUimSubscriberId phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    return-object v0
.end method

.method public getUserCustomizedEccList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/PhoneNumberUtils$EccEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1446
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/PhoneNumberUtils$EccEntry;>;"
    const/4 v0, 0x0

    .line 1449
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v8

    invoke-interface {v8}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getUserCustomizedEccList()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1455
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 1456
    const-string/jumbo v8, "names"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1457
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v8, "numbers"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1458
    .local v6, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 1459
    :cond_0
    return-object v7

    .line 1452
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 1453
    .local v3, "ex":Ljava/lang/NullPointerException;
    return-object v7

    .line 1450
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1451
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v7

    .line 1458
    .end local v2    # "ex":Landroid/os/RemoteException;
    .local v0, "bundle":Landroid/os/Bundle;
    .restart local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 1461
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 1462
    new-instance v1, Landroid/telephony/PhoneNumberUtils$EccEntry;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Landroid/telephony/PhoneNumberUtils$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    .local v1, "entry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1461
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1466
    .end local v1    # "entry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .end local v4    # "i":I
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v8, "TelephonyManagerEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getUserCustomizedEccList, result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    return-object v7
.end method

.method public getUsimGbabp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1239
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getUsimGbabp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGbabp(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1250
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getUsimGbabpForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1253
    :catch_0
    move-exception v1

    .line 1255
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1251
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1252
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getUsimService(I)Z
    .locals 1
    .param p1, "service"    # I

    .prologue
    .line 1212
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getUsimService(II)Z

    move-result v0

    return v0
.end method

.method public getUsimService(II)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "service"    # I

    .prologue
    const/4 v3, 0x0

    .line 1224
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getUsimServiceForSubscriber(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1227
    :catch_0
    move-exception v1

    .line 1229
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1225
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1226
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getVMRetrieveFc(I)[I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1579
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getVMRetrieveFc(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1582
    :catch_0
    move-exception v1

    .line 1583
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1580
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1581
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 820
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 821
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoiceMailAlphaTag with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 801
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoiceMailNumber with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasIccCard(I)Z
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 544
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasIccCard simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    move v0, p1

    .line 546
    .local v0, "slot":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    return v1
.end method

.method public isAirplanemodeAvailableNow()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1325
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isAirplanemodeAvailableNow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1328
    :catch_0
    move-exception v1

    .line 1329
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1326
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1327
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isAppTypeSupported(II)Z
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "appType"    # I

    .prologue
    .line 587
    const/4 v2, 0x0

    .line 589
    .local v2, "isSupported":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    .line 590
    .local v3, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v3, :cond_0

    .line 591
    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isAppTypeSupported(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 599
    .end local v2    # "isSupported":Z
    .end local v3    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAppTypeSupported slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", appType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 600
    const-string/jumbo v6, ", isSupported: "

    .line 599
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return v2

    .line 595
    .restart local v2    # "isSupported":Z
    :catch_0
    move-exception v1

    .line 597
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 593
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 594
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCt3gDualMode(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1593
    if-ltz p1, :cond_0

    sget-object v1, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 1594
    :cond_0
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCt3gDualMode: invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    return v4

    .line 1597
    :cond_1
    sget-object v1, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1598
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCt3gDualMode:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isEccInProgress()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1805
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isEccInProgress()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1808
    :catch_0
    move-exception v1

    .line 1809
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1806
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1807
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isImsRegistered(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1821
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isImsRegistered(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1824
    :catch_0
    move-exception v1

    .line 1825
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1822
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1823
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isInDsdaMode()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1302
    const-string/jumbo v2, "ro.mtk_dt_support"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1303
    return v7

    .line 1305
    :cond_0
    const-string/jumbo v2, "ro.mtk_svlte_support"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 1307
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1308
    .local v1, "phones":[Lcom/android/internal/telephony/Phone;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    .line 1309
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v6, v5, :cond_1

    .line 1310
    return v7

    .line 1308
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1314
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "phones":[Lcom/android/internal/telephony/Phone;
    :cond_2
    return v3
.end method

.method public isInHomeNetwork(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1342
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isInHomeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1345
    :catch_0
    move-exception v1

    .line 1346
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1343
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1344
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isNetworkRoaming(I)Z
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 441
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 442
    .local v1, "subId":I
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deprecated! isNetworkRoaming with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 444
    .end local v1    # "subId":I
    :catch_0
    move-exception v0

    .line 445
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 446
    const/4 v2, 0x0

    return v2
.end method

.method public isOmhCard(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1399
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isOmhCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1402
    :catch_0
    move-exception v1

    .line 1403
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1400
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1401
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isOmhEnable(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1383
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isOmhEnable(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1386
    :catch_0
    move-exception v1

    .line 1387
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1384
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1385
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isTestIccCard(I)Z
    .locals 7
    .param p1, "simId"    # I

    .prologue
    .line 611
    const/4 v2, 0x0

    .line 612
    .local v2, "result":Z
    const-string/jumbo v4, "TelephonyManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isTestIccCard simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    .line 615
    .local v3, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v3, :cond_0

    .line 616
    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isTestIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 624
    .end local v2    # "result":Z
    .end local v3    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isTestIccCard sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ,result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return v2

    .line 620
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 622
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 618
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 619
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isUserCustomizedEcc(Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1508
    if-nez p1, :cond_0

    .line 1509
    return v5

    .line 1512
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isUserCustomizedEcc(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1516
    :catch_0
    move-exception v1

    .line 1517
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUserCustomizedEcc, NullPointerException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return v5

    .line 1513
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1514
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUserCustomizedEcc, RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return v5
.end method

.method public isVolteEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1837
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isVolteEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1840
    :catch_0
    move-exception v1

    .line 1841
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1838
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1839
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isWifiCallingEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1853
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isWifiCallingEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1856
    :catch_0
    move-exception v1

    .line 1857
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1854
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1855
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public listen(Landroid/telephony/PhoneStateListener;II)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .param p3, "simId"    # I

    .prologue
    .line 920
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deprecated api, listen simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",events="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v1, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 919
    return-void

    .line 921
    .end local v0    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "<unknown>"

    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    goto :goto_0
.end method

.method public setDefaultSubIdForAll(IILcom/mediatek/telephony/TelephonyManagerEx$SetDefaultSubResultCallback;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "subId"    # I
    .param p3, "callback"    # Lcom/mediatek/telephony/TelephonyManagerEx$SetDefaultSubResultCallback;

    .prologue
    const/4 v3, 0x0

    .line 1773
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setDefaultSubIdForAll(IILcom/mediatek/internal/telephony/ISetDefaultSubResultCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1776
    :catch_0
    move-exception v1

    .line 1777
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1774
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1775
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public setEccInProgress(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1789
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setEccInProgress(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1787
    return-void

    .line 1792
    :catch_0
    move-exception v1

    .line 1793
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-void

    .line 1790
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1791
    .local v0, "ex":Landroid/os/RemoteException;
    return-void
.end method

.method public setIsimGbabp(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1196
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    return-void

    .line 1199
    :catch_0
    move-exception v1

    .line 1201
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-void

    .line 1197
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1198
    .local v0, "ex":Landroid/os/RemoteException;
    return-void
.end method

.method public setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1181
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/telephony/TelephonyManagerEx;->setIsimGbabp(ILjava/lang/String;Landroid/os/Message;)V

    .line 1180
    return-void
.end method

.method public setScAddress(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1042
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setScAddressUsingSubId(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1046
    :catch_0
    move-exception v1

    .line 1047
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1048
    return v3

    .line 1043
    .end local v1    # "e2":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1044
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1045
    return v3
.end method

.method public setUsimGbabp(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1284
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    return-void

    .line 1287
    :catch_0
    move-exception v1

    .line 1289
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-void

    .line 1285
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1286
    .local v0, "ex":Landroid/os/RemoteException;
    return-void
.end method

.method public setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1269
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/telephony/TelephonyManagerEx;->setUsimGbabp(ILjava/lang/String;Landroid/os/Message;)V

    .line 1268
    return-void
.end method

.method public updateUserCustomizedEccList(Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/PhoneNumberUtils$EccEntry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "eccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/PhoneNumberUtils$EccEntry;>;"
    const/4 v10, 0x0

    .line 1477
    const-string/jumbo v7, "TelephonyManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateUserCustomizedEccList, eccList:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const/4 v0, 0x0

    .line 1479
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    .line 1480
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1481
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1482
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1483
    .local v6, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .line 1484
    .local v1, "entry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-virtual {v1}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    invoke-virtual {v1}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1487
    .end local v1    # "entry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :cond_0
    const-string/jumbo v7, "names"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1488
    const-string/jumbo v7, "numbers"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1491
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx;->updateUserCustomizedEccList(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    return v7

    .line 1495
    :catch_0
    move-exception v4

    .line 1496
    .local v4, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "TelephonyManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateUserCustomizedEccList, NullPointerException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    return v10

    .line 1492
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 1493
    .local v3, "ex":Landroid/os/RemoteException;
    const-string/jumbo v7, "TelephonyManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateUserCustomizedEccList, RemoteException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return v10
.end method
