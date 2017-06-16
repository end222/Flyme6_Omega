.class public Lcom/nxp/nfc/gsma/internal/NxpNfcController;
.super Ljava/lang/Object;
.source "NxpNfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;,
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;,
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;,
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;
    }
.end annotation


# static fields
.field public static final BATTERY_ALL_STATES:I = 0x2

.field public static final BATTERY_OPERATIONAL_STATE:I = 0x1

.field private static final MW_PROTOCOL_MASK_ISO_DEP:I = 0x8

.field public static final PROTOCOL_ISO_DEP:I = 0x10

.field public static final SCREEN_ALL_MODES:I = 0x2

.field public static final SCREEN_ON_AND_LOCKED_MODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "NxpNfcController"

.field public static final TECHNOLOGY_NFC_A:I = 0x1

.field public static final TECHNOLOGY_NFC_B:I = 0x2

.field public static final TECHNOLOGY_NFC_F:I = 0x4


# instance fields
.field private mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

.field private mContext:Landroid/content/Context;

.field private mDialogBoxFlag:Z

.field private mEnable:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

.field private mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSeNameApduService:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Z

.field private seExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;


# direct methods
.method static synthetic -get0(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    return-object v0
.end method

.method static synthetic -get1(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    return v0
.end method

.method static synthetic -get3(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    return v0
.end method

.method static synthetic -set0(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    return p1
.end method

.method static synthetic -set1(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    return p1
.end method

.method static synthetic -set2(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 71
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 73
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    .line 74
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    .line 75
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    .line 76
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 71
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 73
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    .line 74
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    .line 75
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    .line 76
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    .line 139
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    invoke-virtual {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcControllerInterface()Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 137
    :cond_2
    return-void
.end method

.method private ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .locals 14
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "apduService"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v12

    .line 191
    .local v12, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 192
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "description":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "sEname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 195
    .local v8, "banner":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getModifiable()Z

    move-result v6

    .line 196
    .local v6, "modifiable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v9

    .line 197
    .local v9, "bannerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v1

    .line 198
    .local v1, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v7

    .line 199
    .local v7, "ApduAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    iget-object v4, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 200
    iget-object v5, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 199
    invoke-direct/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    .local v0, "mService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    if-eqz v6, :cond_0

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroups()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "group$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/AidGroup;

    .line 203
    .local v10, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v4, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v11    # "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getStaticAidGroups()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "group$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/AidGroup;

    .line 207
    .restart local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v4, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setContext(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v0, v9}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setBannerId(I)V

    .line 213
    invoke-virtual {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    .line 214
    return-object v0
.end method

.method private ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 18
    .param p1, "mService"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v3, 0x0

    .line 224
    .local v3, "onHost":Z
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getModifiable()Z

    move-result v14

    .line 226
    .local v14, "modifiable":Z
    const/4 v5, 0x0

    .line 227
    .local v5, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v6, "dynamicAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 229
    const/4 v7, 0x0

    .line 230
    .local v7, "requiresUnlock":Z
    const/4 v13, 0x0

    .line 231
    .local v13, "DrawableResource":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 232
    .local v16, "seId":I
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getLocation()Ljava/lang/String;

    move-result-object v17

    .line 233
    .local v17, "seName":Ljava/lang/String;
    const/4 v15, -0x1

    .line 234
    .local v15, "powerstate":I
    move-object/from16 v0, p1

    iget v8, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBannerId:I

    .line 236
    .local v8, "bannerId":I
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 237
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/pm/ServiceInfo;

    invoke-direct {v9}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 238
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v10, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v10, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 239
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p3

    iput-object v0, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 240
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getServiceName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 242
    const-string/jumbo v9, "com.nxp.uicc.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 243
    const/16 v16, 0x2

    .line 251
    :goto_0
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move/from16 v0, v16

    invoke-direct {v11, v0, v15}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    .line 252
    .local v11, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 253
    .end local v1    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string/jumbo v10, "Fixme: NXP:<Activity Name>"

    const/4 v12, 0x0

    move/from16 v9, p2

    .line 252
    invoke-direct/range {v1 .. v14}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    .line 254
    .local v1, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    return-object v1

    .line 244
    .end local v11    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .local v1, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    const-string/jumbo v9, "com.nxp.smart_mx.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 245
    const/16 v16, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const-string/jumbo v9, "com.nxp.host.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 247
    const/16 v16, 0x0

    goto :goto_0

    .line 249
    :cond_2
    const-string/jumbo v9, "NxpNfcController"

    const-string/jumbo v10, "wrong Se name"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public commitOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .prologue
    const/4 v6, 0x0

    .line 324
    const/4 v2, 0x0

    .line 326
    .local v2, "result":Z
    invoke-virtual {p3}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "serviceName":Ljava/lang/String;
    invoke-direct {p0, p3, p1, p2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 329
    .local v1, "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_start_0
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-eqz v4, :cond_0

    .line 330
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v4, p1, p2, v3, v1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->commitOffHostService(ILjava/lang/String;Ljava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 336
    .end local v2    # "result":Z
    :cond_0
    if-nez v2, :cond_1

    .line 337
    const-string/jumbo v4, "NxpNfcController"

    const-string/jumbo v5, "GSMA: commitOffHostService Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return v6

    .line 332
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NxpNfcController"

    const-string/jumbo v5, "Exception:commitOffHostService failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    return v6

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "result":Z
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public commitOffHostService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Z
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "bannerResId"    # I
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 353
    .local p6, "aidGroupDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "aidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    const/16 v18, 0x0

    .line 354
    .local v18, "result":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 355
    .local v10, "userId":I
    const/16 v21, 0x0

    .line 356
    .local v21, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v4, 0x0

    .line 357
    .local v4, "onHost":Z
    const/4 v6, 0x0

    .line 358
    .local v6, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v7, "dynamicAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 360
    const/4 v8, 0x0

    .line 361
    .local v8, "requiresUnlock":Z
    const/4 v14, 0x0

    .line 362
    .local v14, "DrawableResource":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 363
    .local v19, "seId":I
    const/16 v17, -0x1

    .line 364
    .local v17, "powerstate":I
    const/4 v15, 0x1

    .line 367
    .local v15, "modifiable":Z
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 368
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/pm/ServiceInfo;

    invoke-direct {v5}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 369
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v9, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v9}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v9, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 370
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iput-object v0, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 371
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p2

    iput-object v0, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 374
    const/16 v20, 0x0

    .line 375
    .local v20, "secureElement":Ljava/lang/String;
    const-string/jumbo v5, "SIM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 376
    const-string/jumbo v20, "com.nxp.uicc.ID"

    .line 381
    .local v20, "secureElement":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "com.nxp.uicc.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 382
    const/16 v19, 0x2

    .line 391
    :goto_1
    new-instance v12, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    .line 392
    .local v12, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 393
    const-string/jumbo v11, "Fixme: NXP:<Activity Name>"

    .line 394
    const/4 v13, 0x0

    move-object/from16 v5, p3

    move/from16 v9, p4

    .line 392
    invoke-direct/range {v2 .. v15}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    .line 396
    .local v2, "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-eqz v5, :cond_0

    .line 400
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v5, v10, v0, v1, v2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->commitOffHostService(ILjava/lang/String;Ljava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 406
    .end local v18    # "result":Z
    :cond_0
    if-nez v18, :cond_5

    .line 407
    const-string/jumbo v5, "NxpNfcController"

    const-string/jumbo v9, "GSMA: commitOffHostService Failed"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v5, 0x0

    return v5

    .line 378
    .end local v2    # "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v12    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .restart local v18    # "result":Z
    .local v20, "secureElement":Ljava/lang/String;
    :cond_1
    const-string/jumbo v20, "com.nxp.uicc.ID"

    .local v20, "secureElement":Ljava/lang/String;
    goto :goto_0

    .line 383
    :cond_2
    const-string/jumbo v5, "com.nxp.smart_mx.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 384
    const/16 v19, 0x1

    goto :goto_1

    .line 385
    :cond_3
    const-string/jumbo v5, "com.nxp.host.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 386
    const/16 v19, 0x0

    goto :goto_1

    .line 388
    :cond_4
    const-string/jumbo v5, "NxpNfcController"

    const-string/jumbo v9, "wrong Se name"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 402
    .restart local v2    # "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v12    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :catch_0
    move-exception v16

    .line 403
    .local v16, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "NxpNfcController"

    const-string/jumbo v9, "Exception:commitOffHostService failed"

    move-object/from16 v0, v16

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    const/4 v5, 0x0

    return v5

    .line 410
    .end local v16    # "e":Landroid/os/RemoteException;
    .end local v18    # "result":Z
    :cond_5
    const/4 v5, 0x1

    return v5
.end method

.method public deleteOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .prologue
    .line 262
    const/4 v2, 0x0

    .line 264
    .local v2, "result":Z
    invoke-direct {p0, p3, p1, p2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 266
    .local v0, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_start_0
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v3, p1, p2, v0}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->deleteOffHostService(ILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 270
    .end local v2    # "result":Z
    :goto_0
    if-nez v2, :cond_0

    .line 271
    const-string/jumbo v3, "NxpNfcController"

    const-string/jumbo v4, "GSMA: deleteOffHostService failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v3, 0x0

    return v3

    .line 267
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NxpNfcController"

    const-string/jumbo v4, "Exception:deleteOffHostService failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 274
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "result":Z
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public deleteOffHostService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "result":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 423
    .local v2, "userId":I
    :try_start_0
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v4, v2, p1, v3}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->deleteOffHostService(ILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    .end local v1    # "result":Z
    :goto_0
    if-nez v1, :cond_0

    .line 428
    const-string/jumbo v3, "NxpNfcController"

    const-string/jumbo v4, "GSMA: deleteOffHostService failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v3, 0x0

    return v3

    .line 424
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NxpNfcController"

    const-string/jumbo v4, "Exception:deleteOffHostService failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 431
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Z
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "seName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v1, p2, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NxpNfcController"

    const-string/jumbo v2, "enableMultiReception failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    return-void
.end method

.method public enableNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;)V
    .locals 5
    .param p1, "cb"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 164
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v2, "ownerFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.gsma.services.nfc.action.ENABLE_NFC_SET_FALG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v0, "enableNfc":Landroid/content/Intent;
    const-string/jumbo v3, "com.gsma.services.nfc.action.ENABLE_NFC"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public getDefaultOffHostService(ILjava/lang/String;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 304
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 306
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v4, p1, p2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getDefaultOffHostService(ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 311
    .local v0, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0, v3, v0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v2

    .line 313
    .local v2, "mService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    return-object v2

    .line 307
    .end local v0    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v2    # "mService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NxpNfcController"

    const-string/jumbo v5, "getDefaultOffHostService failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    return-object v6

    .line 315
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    const-string/jumbo v4, "NxpNfcController"

    const-string/jumbo v5, "getDefaultOffHostService: Service is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-object v6
.end method

.method public getDefaultOffHostService(Ljava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;

    .prologue
    .line 482
    const-string/jumbo v0, "NxpNfcController"

    const-string/jumbo v2, "getDefaultOffHostService: Enter"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v1, 0x1

    .line 486
    .local v1, "isLast":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 487
    .local v11, "userId":I
    const/4 v3, 0x0

    .line 489
    .local v3, "seName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v0, v11, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getDefaultOffHostService(ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v9

    .line 490
    .local v9, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 491
    const-string/jumbo v3, "com.nxp.uicc.ID"

    .line 493
    .end local v3    # "seName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "NxpNfcController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDefaultOffHostService: seName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v5, "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "aidGroup$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/AidGroup;

    .line 496
    .local v7, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v8    # "aidGroup$iterator":Ljava/util/Iterator;
    .end local v9    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_0
    move-exception v10

    .line 503
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "NxpNfcController"

    const-string/jumbo v2, "getDefaultOffHostService failed"

    invoke-static {v0, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    const/4 v0, 0x0

    return v0

    .line 499
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "aidGroup$iterator":Ljava/util/Iterator;
    .restart local v9    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v4

    .line 501
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p2

    .line 499
    invoke-interface/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;->onGetOffHostService(ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 507
    const-string/jumbo v0, "NxpNfcController"

    const-string/jumbo v2, "getDefaultOffHostService: End"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public getOffHostServices(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nxp/nfc/gsma/internal/NxpOffHostService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "apduServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v2, "mService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nxp/nfc/gsma/internal/NxpOffHostService;>;"
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 286
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v6, p1, p2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getOffHostServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 292
    .local v4, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-direct {p0, v3, v4}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    .end local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v5    # "service$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "NxpNfcController"

    const-string/jumbo v7, "getOffHostServices failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    const/4 v6, 0x0

    return-object v6

    .line 294
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v5    # "service$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method public getOffHostServices(Ljava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;

    .prologue
    .line 440
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 441
    .local v12, "userId":I
    const/4 v1, 0x0

    .line 442
    .local v1, "isLast":Z
    const/4 v3, 0x0

    .line 444
    .local v3, "seName":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v9, "apduServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :try_start_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v0, v12, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getOffHostServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 448
    const/4 v11, 0x0

    .end local v3    # "seName":Ljava/lang/String;
    .local v11, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 450
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v11, v0, :cond_0

    .line 451
    const/4 v1, 0x1

    .line 454
    :cond_0
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    .line 455
    const-string/jumbo v3, "com.nxp.uicc.ID"

    .line 458
    :cond_1
    const-string/jumbo v0, "NxpNfcController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getOffHostServices: seName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v5, "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "aidGroup$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/AidGroup;

    .line 461
    .local v7, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 468
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v8    # "aidGroup$iterator":Ljava/util/Iterator;
    .end local v11    # "i":I
    :catch_0
    move-exception v10

    .line 469
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "NxpNfcController"

    const-string/jumbo v2, "getOffHostServices failed"

    invoke-static {v0, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    const/4 v0, 0x0

    return v0

    .line 464
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "aidGroup$iterator":Ljava/util/Iterator;
    .restart local v11    # "i":I
    :cond_2
    :try_start_1
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v4

    .line 466
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p2

    .line 464
    invoke-interface/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;->onGetOffHostService(ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 448
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 473
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "aidGroup$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isNxpNfcEnabled()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method
