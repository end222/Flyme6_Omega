.class public Lcom/mediatek/internal/telephony/worldphone/WorldMode;
.super Landroid/os/Handler;
.source "WorldMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;
    }
.end annotation


# static fields
.field static final ACTION_ADB_SWITCH_WORLD_MODE:Ljava/lang/String; = "android.intent.action.ACTION_ADB_SWITCH_WORLD_MODE"

.field static final EVENT_RADIO_ON_1:I = 0x1

.field static final EVENT_RADIO_ON_2:I = 0x2

.field static final EXTRA_WORLDMODE:Ljava/lang/String; = "worldMode"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final MD_WM_CHANGED_END:I = 0x1

.field public static final MD_WM_CHANGED_START:I = 0x0

.field public static final MD_WM_CHANGED_UNKNOWN:I = -0x1

.field public static final MD_WORLD_MODE_LCTG:I = 0x10

.field public static final MD_WORLD_MODE_LFCTG:I = 0x15

.field public static final MD_WORLD_MODE_LFTG:I = 0x14

.field public static final MD_WORLD_MODE_LFWCG:I = 0xf

.field public static final MD_WORLD_MODE_LFWG:I = 0xe

.field public static final MD_WORLD_MODE_LTCTG:I = 0x11

.field public static final MD_WORLD_MODE_LTG:I = 0x8

.field public static final MD_WORLD_MODE_LTTG:I = 0xd

.field public static final MD_WORLD_MODE_LTWCG:I = 0x13

.field public static final MD_WORLD_MODE_LTWG:I = 0x12

.field public static final MD_WORLD_MODE_LWCG:I = 0xb

.field public static final MD_WORLD_MODE_LWCTG:I = 0xc

.field public static final MD_WORLD_MODE_LWG:I = 0x9

.field public static final MD_WORLD_MODE_LWTG:I = 0xa

.field public static final MD_WORLD_MODE_UNKNOWN:I

.field private static final PROJECT_SIM_NUM:I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sActiveWorldMode:I

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sCurrentWorldMode:I

.field private static sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static sSwitchingState:Z


# instance fields
.field private final mWorldModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return p0
.end method

.method static synthetic -wrap0()I
    .locals 1

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    .line 93
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 94
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActiveWorldMode:I

    .line 95
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    .line 96
    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 97
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 98
    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    .line 99
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 136
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldMode;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    const-string/jumbo v2, "Constructor invoked"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Init world mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 106
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v3, v0

    .line 107
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v3, v0

    .line 108
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.ACTION_ADB_SWITCH_WORLD_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 115
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    .line 119
    :goto_1
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void

    .line 117
    :cond_1
    const-string/jumbo v2, "DefaultPhone = null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static WorldModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "worldMode"    # I

    .prologue
    .line 351
    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    .line 352
    const-string/jumbo v0, "uTLG"

    .line 383
    .local v0, "worldModeString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 353
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x9

    if-ne p0, v1, :cond_1

    .line 354
    const-string/jumbo v0, "uLWG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 355
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_1
    const/16 v1, 0xa

    if-ne p0, v1, :cond_2

    .line 356
    const-string/jumbo v0, "uLWTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 357
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_2
    const/16 v1, 0xb

    if-ne p0, v1, :cond_3

    .line 358
    const-string/jumbo v0, "uLWCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 359
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_3
    const/16 v1, 0xc

    if-ne p0, v1, :cond_4

    .line 360
    const-string/jumbo v0, "uLWTCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 361
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_4
    const/16 v1, 0xd

    if-ne p0, v1, :cond_5

    .line 362
    const-string/jumbo v0, "LtTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 363
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_5
    const/16 v1, 0xe

    if-ne p0, v1, :cond_6

    .line 364
    const-string/jumbo v0, "LfWG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 365
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_6
    const/16 v1, 0xf

    if-ne p0, v1, :cond_7

    .line 366
    const-string/jumbo v0, "uLfWCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 367
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_7
    const/16 v1, 0x10

    if-ne p0, v1, :cond_8

    .line 368
    const-string/jumbo v0, "uLCTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 369
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_8
    const/16 v1, 0x11

    if-ne p0, v1, :cond_9

    .line 370
    const-string/jumbo v0, "uLtCTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 371
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_9
    const/16 v1, 0x12

    if-ne p0, v1, :cond_a

    .line 372
    const-string/jumbo v0, "uLtWG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_a
    const/16 v1, 0x13

    if-ne p0, v1, :cond_b

    .line 374
    const-string/jumbo v0, "uLtWCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 375
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_b
    const/16 v1, 0x14

    if-ne p0, v1, :cond_c

    .line 376
    const-string/jumbo v0, "uLfTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 377
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_c
    const/16 v1, 0x15

    if-ne p0, v1, :cond_d

    .line 378
    const-string/jumbo v0, "uLfCTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0

    .line 380
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_d
    const-string/jumbo v0, "Invalid world mode"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getWorldMode()I
    .locals 2

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getWorldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->WorldModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 306
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return v0
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 127
    const-class v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 126
    return-void

    .line 131
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isWorldModeSwitching()Z
    .locals 1

    .prologue
    .line 342
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    return v0

    .line 345
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 387
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WorldMode]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method public static setWorldMode(I)V
    .locals 4
    .param p0, "worldMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 208
    .local v0, "protocolSim":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setWorldMode]protocolSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 209
    if-ltz v0, :cond_0

    .line 210
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 211
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 206
    :goto_0
    return-void

    .line 213
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(Lcom/android/internal/telephony/CommandsInterface;I)V

    goto :goto_0
.end method

.method private static setWorldMode(Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 5
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "worldMode"    # I

    .prologue
    const/16 v4, 0x15

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[setWorldMode] worldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 237
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    if-ne p1, v0, :cond_e

    .line 238
    if-ne p1, v3, :cond_1

    .line 239
    const-string/jumbo v0, "Already in uTLG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 241
    const-string/jumbo v0, "Already in uLWG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 243
    const-string/jumbo v0, "Already in uLWTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    .line 245
    const-string/jumbo v0, "Already in uLWCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_4
    const/16 v0, 0xc

    if-ne p1, v0, :cond_5

    .line 247
    const-string/jumbo v0, "Already in uLWTCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_5
    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    .line 249
    const-string/jumbo v0, "Already in LtTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_6
    const/16 v0, 0xe

    if-ne p1, v0, :cond_7

    .line 251
    const-string/jumbo v0, "Already in LfWG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_7
    const/16 v0, 0xf

    if-ne p1, v0, :cond_8

    .line 253
    const-string/jumbo v0, "Already in uLfWCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_8
    const/16 v0, 0x10

    if-ne p1, v0, :cond_9

    .line 255
    const-string/jumbo v0, "Already in uLCTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_9
    const/16 v0, 0x11

    if-ne p1, v0, :cond_a

    .line 257
    const-string/jumbo v0, "Already in uLtCTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_a
    const/16 v0, 0x12

    if-ne p1, v0, :cond_b

    .line 259
    const-string/jumbo v0, "Already in uLtWG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_b
    const/16 v0, 0x13

    if-ne p1, v0, :cond_c

    .line 261
    const-string/jumbo v0, "Already in uLTWCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_c
    const/16 v0, 0x14

    if-ne p1, v0, :cond_d

    .line 263
    const-string/jumbo v0, "Already in uLfTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_d
    if-ne p1, v4, :cond_0

    .line 265
    const-string/jumbo v0, "Already in uLfCTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :cond_e
    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 270
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 269
    if-ne v0, v1, :cond_f

    .line 271
    const-string/jumbo v0, "Radio unavailable, can not switch world mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 272
    return-void

    .line 274
    :cond_f
    if-lt p1, v3, :cond_10

    .line 275
    if-gt p1, v4, :cond_10

    .line 276
    invoke-interface {p0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->reloadModemType(ILandroid/os/Message;)V

    .line 277
    invoke-interface {p0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 278
    const/4 v0, 0x2

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    .line 235
    return-void

    .line 280
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid world mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private static updateCurrentWorldMode()I
    .locals 2

    .prologue
    .line 330
    const-string/jumbo v0, "ril.active.md"

    .line 331
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCurrentWorldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->WorldModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 333
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return v0
.end method

.method public static updateSwitchingState(Z)V
    .locals 2
    .param p0, "isSwitching"    # Z

    .prologue
    .line 337
    sput-boolean p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSwitchingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 336
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 167
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 168
    .local v1, "protocolSim":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 170
    :pswitch_0
    const-string/jumbo v2, "handleMessage : <EVENT_RADIO_ON_1>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 172
    if-nez v1, :cond_0

    .line 173
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    goto :goto_0

    .line 177
    :pswitch_1
    const-string/jumbo v2, "handleMessage : <EVENT_RADIO_ON_2>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 179
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 180
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
