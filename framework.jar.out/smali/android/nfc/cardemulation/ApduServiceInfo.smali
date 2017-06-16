.class public final Landroid/nfc/cardemulation/ApduServiceInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;,
        Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;,
        Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;,
        Landroid/nfc/cardemulation/ApduServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final NXP_NFC_EXT_META_DATA:Ljava/lang/String; = "com.nxp.nfc.extensions"

.field static final POWER_STATE_BATTERY_OFF:I = 0x4

.field static final POWER_STATE_SWITCH_OFF:I = 0x2

.field static final POWER_STATE_SWITCH_ON:I = 0x1

.field static final SECURE_ELEMENT_ESE:Ljava/lang/String; = "eSE"

.field public static final SECURE_ELEMENT_ROUTE_ESE:I = 0x1

.field public static final SECURE_ELEMENT_ROUTE_UICC:I = 0x2

.field static final SECURE_ELEMENT_UICC:Ljava/lang/String; = "UICC"

.field static final TAG:Ljava/lang/String; = "ApduServiceInfo"


# instance fields
.field public final mBanner:Landroid/graphics/drawable/Drawable;

.field final mBannerResourceId:I

.field final mDescription:Ljava/lang/String;

.field final mDynamicAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

.field final mModifiable:Z

.field final mNfcid2CategoryToGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation
.end field

.field final mNfcid2Groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation
.end field

.field final mNfcid2s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mOnHost:Z

.field final mRequiresDeviceUnlock:Z

.field final mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSettingsActivityName:Ljava/lang/String;

.field final mStaticAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 863
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$1;-><init>()V

    .line 862
    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 33
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 254
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v27, v0

    .line 255
    .local v27, "si":Landroid/content/pm/ServiceInfo;
    const/16 v20, 0x0

    .line 258
    .local v20, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v12, 0x0

    .line 259
    .local v12, "extParser":Landroid/content/res/XmlResourceParser;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    .line 260
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    .line 261
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    .line 262
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 263
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mModifiable:Z

    .line 264
    const/4 v7, 0x0

    .line 267
    .local v7, "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    if-eqz p3, :cond_1

    .line 268
    :try_start_0
    const-string/jumbo v30, "android.nfc.cardemulation.host_apdu_service"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v20

    .line 269
    .local v20, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v20, :cond_3

    .line 270
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v31, "No android.nfc.cardemulation.host_apdu_service meta-data"

    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .end local v12    # "extParser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v10

    .line 459
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Unable to create context for: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v30

    .line 461
    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V

    .line 460
    :cond_0
    throw v30

    .line 274
    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .restart local v12    # "extParser":Landroid/content/res/XmlResourceParser;
    .local v20, "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    const-string/jumbo v30, "android.nfc.cardemulation.off_host_apdu_service"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v20

    .line 275
    .local v20, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v20, :cond_2

    .line 276
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v31, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 281
    :cond_2
    const-string/jumbo v30, "persist.cm885.nfc.feature"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "1"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 283
    const-string/jumbo v30, "com.nxp.nfc.extensions"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 284
    .local v12, "extParser":Landroid/content/res/XmlResourceParser;
    if-nez v12, :cond_3

    .line 285
    const-string/jumbo v30, "ApduServiceInfo"

    const-string/jumbo v31, "No com.nxp.nfc.extensions meta-data"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v12    # "extParser":Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v11

    .line 293
    .local v11, "eventType":I
    :goto_0
    const/16 v30, 0x2

    move/from16 v0, v30

    if-eq v11, v0, :cond_4

    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v11, v0, :cond_4

    .line 294
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    goto :goto_0

    .line 297
    :cond_4
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 298
    .local v29, "tagName":Ljava/lang/String;
    if-eqz p3, :cond_5

    const-string/jumbo v30, "host-apdu-service"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 301
    :cond_5
    if-nez p3, :cond_6

    const-string/jumbo v30, "offhost-apdu-service"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 306
    :cond_6
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v24

    .line 307
    .local v24, "res":Landroid/content/res/Resources;
    invoke-static/range {v20 .. v20}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 308
    .local v5, "attrs":Landroid/util/AttributeSet;
    if-eqz p3, :cond_d

    .line 310
    sget-object v30, Lcom/android/internal/R$styleable;->HostApduService:[I

    .line 309
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v25

    .line 311
    .local v25, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 313
    const/16 v30, 0x0

    .line 312
    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 315
    const/16 v30, 0x2

    .line 316
    const/16 v31, 0x0

    .line 314
    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 318
    const/16 v30, 0x3

    const/16 v31, -0x1

    .line 317
    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 320
    const/16 v30, 0x1

    .line 319
    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 321
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    .line 336
    :goto_1
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 337
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 338
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 340
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 341
    .local v9, "depth":I
    const/4 v6, 0x0

    .line 344
    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_7
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/16 v30, 0x3

    move/from16 v0, v30

    if-ne v11, v0, :cond_8

    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v30

    move/from16 v0, v30

    if-le v0, v9, :cond_21

    .line 345
    :cond_8
    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v11, v0, :cond_21

    .line 346
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 347
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v11, v0, :cond_f

    const-string/jumbo v30, "aid-group"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 348
    if-nez v6, :cond_f

    .line 350
    sget-object v30, Lcom/android/internal/R$styleable;->AidGroup:[I

    .line 349
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 353
    .local v14, "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v30, 0x1

    .line 352
    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 355
    .local v15, "groupCategory":Ljava/lang/String;
    const/16 v30, 0x0

    .line 354
    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 356
    .local v16, "groupDescription":Ljava/lang/String;
    const-string/jumbo v30, "payment"

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_9

    .line 357
    const-string/jumbo v15, "other"

    .line 359
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/AidGroup;

    .line 360
    .local v6, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v6, :cond_e

    .line 361
    const-string/jumbo v30, "other"

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_a

    .line 362
    const-string/jumbo v30, "ApduServiceInfo"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Not allowing multiple aid-groups in the "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 363
    const-string/jumbo v32, " category"

    .line 362
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v6, 0x0

    .line 369
    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_a
    :goto_3
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 299
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "depth":I
    .end local v14    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v15    # "groupCategory":Ljava/lang/String;
    .end local v16    # "groupDescription":Ljava/lang/String;
    .end local v24    # "res":Landroid/content/res/Resources;
    .end local v25    # "sa":Landroid/content/res/TypedArray;
    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_b
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    .line 300
    const-string/jumbo v31, "Meta-data does not start with <host-apdu-service> tag"

    .line 299
    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 302
    :cond_c
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    .line 303
    const-string/jumbo v31, "Meta-data does not start with <offhost-apdu-service> tag"

    .line 302
    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 324
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v24    # "res":Landroid/content/res/Resources;
    :cond_d
    sget-object v30, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    .line 323
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v25

    .line 325
    .restart local v25    # "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 327
    const/16 v30, 0x0

    .line 326
    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 328
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 330
    const/16 v30, 0x2

    const/16 v31, -0x1

    .line 329
    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 332
    const/16 v30, 0x1

    .line 331
    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 333
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 367
    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v9    # "depth":I
    .restart local v14    # "groupAttrs":Landroid/content/res/TypedArray;
    .restart local v15    # "groupCategory":Ljava/lang/String;
    .restart local v16    # "groupDescription":Ljava/lang/String;
    :cond_e
    new-instance v6, Landroid/nfc/cardemulation/AidGroup;

    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    move-object/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_3

    .line 370
    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v14    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v15    # "groupCategory":Ljava/lang/String;
    .end local v16    # "groupDescription":Ljava/lang/String;
    :cond_f
    const/16 v30, 0x3

    move/from16 v0, v30

    if-ne v11, v0, :cond_12

    const-string/jumbo v30, "aid-group"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 371
    if-eqz v6, :cond_12

    .line 372
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_11

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v30, v0

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_10

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v30, v0

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_10
    :goto_4
    const/4 v6, 0x0

    .local v6, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    goto/16 :goto_2

    .line 377
    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_11
    const-string/jumbo v30, "ApduServiceInfo"

    const-string/jumbo v31, "Not adding <aid-group> with empty or invalid AIDs"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 380
    :cond_12
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v11, v0, :cond_15

    const-string/jumbo v30, "aid-filter"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 381
    if-eqz v6, :cond_15

    .line 383
    sget-object v30, Lcom/android/internal/R$styleable;->AidFilter:[I

    .line 382
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 384
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "aid":Ljava/lang/String;
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_13

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 389
    :cond_13
    const-string/jumbo v30, "ApduServiceInfo"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 387
    :cond_14
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 392
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    :cond_15
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v11, v0, :cond_18

    .line 393
    const-string/jumbo v30, "aid-prefix-filter"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    .line 392
    if-eqz v30, :cond_18

    .line 393
    if-eqz v6, :cond_18

    .line 395
    sget-object v30, Lcom/android/internal/R$styleable;->AidFilter:[I

    .line 394
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 396
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 399
    .restart local v4    # "aid":Ljava/lang/String;
    const-string/jumbo v30, "*"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 400
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_16

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_17

    .line 403
    :cond_16
    const-string/jumbo v30, "ApduServiceInfo"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_6
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 401
    :cond_17
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 407
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    :cond_18
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v11, v0, :cond_1c

    const-string/jumbo v30, "nfcid2-group"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    .line 408
    if-nez v7, :cond_1c

    const-string/jumbo v30, "persist.cm885.nfc.feature"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "1"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    .line 407
    if-eqz v30, :cond_1c

    .line 410
    sget-object v30, Lcom/android/internal/R$styleable;->AidGroup:[I

    .line 409
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 413
    .restart local v14    # "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v30, 0x0

    .line 412
    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 415
    .restart local v16    # "groupDescription":Ljava/lang/String;
    const/16 v30, 0x1

    .line 414
    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 416
    .restart local v15    # "groupCategory":Ljava/lang/String;
    const-string/jumbo v30, "payment"

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_19

    .line 417
    const-string/jumbo v15, "other"

    .line 419
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    move-object v7, v0

    .line 420
    .local v7, "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    if-eqz v7, :cond_1b

    .line 421
    const-string/jumbo v30, "other"

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1a

    .line 422
    const-string/jumbo v30, "ApduServiceInfo"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Not allowing multiple nfcid2-groups in the "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 423
    const-string/jumbo v32, " category"

    .line 422
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v7, 0x0

    .line 429
    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_1a
    :goto_7
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 427
    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_1b
    new-instance v8, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    move-object/from16 v0, v16

    invoke-direct {v8, v15, v0}, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .local v8, "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    move-object v7, v8

    .end local v8    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    goto :goto_7

    .line 430
    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .end local v14    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v15    # "groupCategory":Ljava/lang/String;
    .end local v16    # "groupDescription":Ljava/lang/String;
    :cond_1c
    const/16 v30, 0x3

    move/from16 v0, v30

    if-ne v11, v0, :cond_1f

    const-string/jumbo v30, "nfcid2-group"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f

    .line 431
    if-eqz v7, :cond_1f

    const-string/jumbo v30, "persist.cm885.nfc.feature"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "1"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    .line 430
    if-eqz v30, :cond_1f

    .line 432
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_1e

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v30, v0

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1d

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v30, v0

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_1d
    :goto_8
    const/4 v7, 0x0

    .local v7, "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    goto/16 :goto_2

    .line 438
    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_1e
    const-string/jumbo v30, "ApduServiceInfo"

    const-string/jumbo v31, "Not adding <nfcid2-group> with empty or invalid NFCID2s"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 441
    :cond_1f
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v11, v0, :cond_7

    const-string/jumbo v30, "nfcid2-filter"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 442
    if-eqz v7, :cond_7

    const-string/jumbo v30, "persist.cm885.nfc.feature"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "1"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    .line 441
    if-eqz v30, :cond_7

    .line 443
    const-string/jumbo v30, "name"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    .line 444
    .local v17, "nfcid2":Ljava/lang/String;
    const-string/jumbo v30, "syscode"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v28

    .line 445
    .local v28, "syscode":Ljava/lang/String;
    const-string/jumbo v30, "optparam"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    .line 447
    .local v19, "optparam":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/nfc/cardemulation/ApduServiceInfo;->isValidNfcid2(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_20

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-nez v30, :cond_20

    .line 448
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->syscode:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->optparam:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 453
    :cond_20
    const-string/jumbo v30, "ApduServiceInfo"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 461
    .end local v17    # "nfcid2":Ljava/lang/String;
    .end local v19    # "optparam":Ljava/lang/String;
    .end local v28    # "syscode":Ljava/lang/String;
    :cond_21
    if-eqz v20, :cond_22

    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V

    .line 464
    :cond_22
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 467
    const-string/jumbo v30, "persist.cm885.nfc.feature"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "1"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_33

    .line 468
    if-eqz v12, :cond_32

    .line 471
    :try_start_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v11

    .line 472
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 473
    const/16 v26, 0x0

    .line 474
    .local v26, "seName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 475
    .local v22, "powerState":I
    const/4 v13, 0x0

    .line 476
    .local v13, "felicaId":Ljava/lang/String;
    const/16 v18, 0x0

    .line 478
    .local v18, "optParam":Ljava/lang/String;
    :goto_9
    const/16 v30, 0x2

    move/from16 v0, v30

    if-eq v11, v0, :cond_23

    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v11, v0, :cond_23

    .line 479
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    goto :goto_9

    .line 481
    :cond_23
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 482
    const-string/jumbo v30, "extensions"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_24

    .line 483
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    .line 484
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Meta-data does not start with <extensions> tag "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 483
    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 533
    .end local v13    # "felicaId":Ljava/lang/String;
    .end local v18    # "optParam":Ljava/lang/String;
    .end local v22    # "powerState":I
    .end local v26    # "seName":Ljava/lang/String;
    :catchall_1
    move-exception v30

    .line 534
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 533
    throw v30

    .line 486
    .restart local v22    # "powerState":I
    :cond_24
    :goto_a
    :try_start_4
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/16 v30, 0x3

    move/from16 v0, v30

    if-ne v11, v0, :cond_25

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v30

    move/from16 v0, v30

    if-le v0, v9, :cond_2e

    .line 487
    :cond_25
    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v11, v0, :cond_2e

    .line 488
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 490
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v11, v0, :cond_27

    const-string/jumbo v30, "se-id"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_27

    .line 492
    const-string/jumbo v30, "name"

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 493
    .local v26, "seName":Ljava/lang/String;
    if-eqz v26, :cond_26

    const-string/jumbo v30, "eSE"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_24

    const-string/jumbo v30, "UICC"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_24

    .line 494
    :cond_26
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Unsupported se name: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 496
    .end local v26    # "seName":Ljava/lang/String;
    :cond_27
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v11, v0, :cond_2b

    const-string/jumbo v30, "se-power-state"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2b

    .line 498
    const-string/jumbo v30, "name"

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 499
    .local v21, "powerName":Ljava/lang/String;
    const-string/jumbo v30, "value"

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "true"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_28

    const/16 v23, 0x1

    .line 500
    .local v23, "powerValue":Z
    :goto_b
    const-string/jumbo v30, "SwitchOn"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_29

    if-eqz v23, :cond_29

    .line 501
    or-int/lit8 v22, v22, 0x1

    goto/16 :goto_a

    .line 499
    .end local v23    # "powerValue":Z
    :cond_28
    const/16 v23, 0x0

    .restart local v23    # "powerValue":Z
    goto :goto_b

    .line 502
    :cond_29
    const-string/jumbo v30, "SwitchOff"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2a

    if-eqz v23, :cond_2a

    .line 503
    or-int/lit8 v22, v22, 0x2

    goto/16 :goto_a

    .line 504
    :cond_2a
    const-string/jumbo v30, "BatteryOff"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_24

    if-eqz v23, :cond_24

    .line 505
    or-int/lit8 v22, v22, 0x4

    goto/16 :goto_a

    .line 507
    .end local v21    # "powerName":Ljava/lang/String;
    .end local v23    # "powerValue":Z
    :cond_2b
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v11, v0, :cond_24

    const-string/jumbo v30, "felica-id"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_24

    .line 509
    const-string/jumbo v30, "name"

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 510
    .local v13, "felicaId":Ljava/lang/String;
    if-eqz v13, :cond_2c

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0xa

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_2d

    .line 511
    :cond_2c
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Unsupported felicaId: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 514
    :cond_2d
    const-string/jumbo v30, "opt-params"

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 515
    .local v18, "optParam":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_24

    .line 516
    new-instance v30, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Unsupported opt-params: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 520
    .end local v13    # "felicaId":Ljava/lang/String;
    .end local v18    # "optParam":Ljava/lang/String;
    :cond_2e
    if-eqz v26, :cond_30

    .line 521
    new-instance v31, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const-string/jumbo v30, "eSE"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2f

    const/16 v30, 0x1

    :goto_c
    move-object/from16 v0, v31

    move/from16 v1, v30

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 522
    const-string/jumbo v30, "ApduServiceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :goto_d
    if-eqz v13, :cond_31

    .line 528
    new-instance v30, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-direct {v0, v13, v1}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    .line 529
    const-string/jumbo v30, "ApduServiceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 534
    :goto_e
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 252
    .end local v22    # "powerState":I
    :goto_f
    return-void

    .line 521
    .restart local v22    # "powerState":I
    :cond_2f
    const/16 v30, 0x2

    goto :goto_c

    .line 524
    :cond_30
    :try_start_5
    new-instance v30, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v31, -0x1

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    goto :goto_d

    .line 531
    :cond_31
    new-instance v30, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_e

    .line 537
    .end local v22    # "powerState":I
    :cond_32
    new-instance v30, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v31, -0x1

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 538
    new-instance v30, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    goto :goto_f

    .line 541
    :cond_33
    new-instance v30, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v31, -0x1

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 542
    new-instance v30, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    goto :goto_f
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "bannerResource"    # I
    .param p8, "uid"    # I
    .param p9, "settingsActivityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    const/4 v4, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 225
    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 226
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 227
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 228
    iput-boolean p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 229
    iput-boolean p6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 230
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aidGroup$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 231
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 233
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 234
    .restart local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 236
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    iput p7, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 237
    iput p8, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 238
    iput-object p9, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    .line 242
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    .line 244
    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 245
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mModifiable:Z

    .line 246
    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 247
    iput-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V
    .locals 7
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "bannerResource"    # I
    .param p8, "uid"    # I
    .param p9, "settingsActivityName"    # Ljava/lang/String;
    .param p10, "seExtension"    # Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .param p12, "banner"    # Landroid/graphics/drawable/Drawable;
    .param p13, "modifiable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p11, "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    if-eqz p12, :cond_0

    .line 179
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 183
    :goto_0
    move/from16 v0, p13

    iput-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mModifiable:Z

    .line 184
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 185
    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 186
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    .line 187
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    .line 188
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 189
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 190
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    .line 191
    iput-boolean p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 192
    iput-boolean p6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 193
    if-eqz p4, :cond_1

    .line 194
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "aidGroup$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 195
    .local v1, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v6, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 181
    .end local v1    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v2    # "aidGroup$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 198
    :cond_1
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "aidGroup$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 199
    .restart local v1    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    iget-object v6, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 201
    .end local v1    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_2
    if-eqz p11, :cond_3

    .line 202
    invoke-interface/range {p11 .. p11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "nfcid2Group$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    .line 203
    .local v3, "nfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    iget-object v6, v3, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 209
    .end local v3    # "nfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .end local v4    # "nfcid2Group$iterator":Ljava/util/Iterator;
    :cond_3
    iput p7, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 210
    iput p8, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 211
    move-object/from16 v0, p9

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 212
    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 213
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    .line 177
    return-void
.end method

.method static isValidNfcid2(Ljava/lang/String;)Z
    .locals 5
    .param p0, "nfcid2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 772
    if-nez p0, :cond_0

    .line 773
    return v4

    .line 775
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 776
    .local v0, "nfcid2Length":I
    if-eqz v0, :cond_1

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 777
    :cond_1
    const-string/jumbo v1, "ApduServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not correctly formatted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return v4

    .line 781
    :cond_2
    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    .line 782
    const-string/jumbo v1, "ApduServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NFCID2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not 8 bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return v4

    .line 785
    :cond_3
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 920
    const-string/jumbo v5, " (Description: "

    .line 919
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 920
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 919
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 920
    const-string/jumbo v5, ")"

    .line 919
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    const-string/jumbo v4, "    Static AID groups:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 923
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "        Category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    iget-object v4, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 925
    .local v0, "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "            AID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 928
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    const-string/jumbo v4, "    Dynamic AID groups:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 930
    .restart local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "        Category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    iget-object v4, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "aid$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 932
    .restart local v0    # "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "            AID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 935
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    Settings Activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 807
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 808
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    .line 809
    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 811
    .local v0, "thatService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAidGroups()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 634
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 636
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_0
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 637
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 640
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 643
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_2
    return-object v2
.end method

.method public getAids()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v0, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "group$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 589
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 591
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    return-object v0
.end method

.method public getBannerId()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    return v0
.end method

.method public getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 651
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v2

    .line 652
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 653
    .local v0, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 654
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    return-object v3

    .line 657
    .end local v0    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 567
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 568
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 567
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 610
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    return-object v0
.end method

.method public getDynamicAidGroups()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 674
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 676
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_0
    return-object v2
.end method

.method public getModifiable()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mModifiable:Z

    return v0
.end method

.method public getNfcid2Groups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNfcid2s()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrefixAids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v4, "prefixAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 597
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v5, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 598
    .local v0, "aid":Ljava/lang/String;
    const-string/jumbo v5, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 599
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 603
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_2
    return-object v4
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    return-object v0
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticAidGroups()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 665
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_0
    return-object v2
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    return v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 689
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 816
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOnHost()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    return v0
.end method

.method public loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 724
    :try_start_0
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    const/16 v2, 0x80

    .line 723
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v6, 0x0

    .line 740
    :try_start_0
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 742
    .local v3, "res":Landroid/content/res/Resources;
    const-string/jumbo v4, "persist.cm885.nfc.feature"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 743
    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 744
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 752
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 746
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "banner":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 749
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "banner":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 756
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 757
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "ApduServiceInfo"

    const-string/jumbo v5, "Could not load banner."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-object v6

    .line 753
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 754
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "ApduServiceInfo"

    const-string/jumbo v5, "Could not load banner."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-object v6
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 731
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 718
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public removeDynamicAidGroupForCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresUnlock()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    return v0
.end method

.method public setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V
    .locals 2
    .param p1, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .prologue
    .line 714
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ApduService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 793
    const-string/jumbo v3, ", description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const-string/jumbo v3, ", Static AID Groups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aidGroup$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 796
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 798
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    const-string/jumbo v3, ", Dynamic AID Groups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 800
    .restart local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 802
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 827
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 828
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 829
    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 832
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 834
    :cond_0
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 836
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 838
    :cond_1
    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    iget v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    iget v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 843
    const-string/jumbo v1, "persist.cm885.nfc.feature"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 844
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    invoke-virtual {v1, p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 846
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 848
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 851
    :cond_2
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 852
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBanner:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 853
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 857
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mModifiable:Z

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 829
    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 838
    goto :goto_1

    .line 855
    :cond_6
    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_2

    :cond_7
    move v2, v3

    .line 857
    goto :goto_3
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 549
    const-string/jumbo v3, "description"

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    const-string/jumbo v2, ""

    .line 551
    .local v2, "modifiable":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mModifiable:Z

    if-eqz v3, :cond_0

    .line 552
    const-string/jumbo v2, "true"

    .line 556
    :goto_0
    const-string/jumbo v3, "modifiable"

    invoke-interface {p1, v5, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    const-string/jumbo v3, "uid"

    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    const-string/jumbo v3, "seId"

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    iget v4, v4, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->seId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 559
    const-string/jumbo v3, "bannerId"

    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 560
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 561
    .local v0, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/AidGroup;->writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    .line 554
    .end local v0    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v1    # "group$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v2, "false"

    goto :goto_0

    .line 548
    .restart local v1    # "group$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
