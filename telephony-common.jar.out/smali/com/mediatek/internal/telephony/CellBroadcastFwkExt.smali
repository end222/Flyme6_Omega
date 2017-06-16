.class public Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;
.super Ljava/lang/Object;
.source "CellBroadcastFwkExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/CellBroadcastFwkExt$1;
    }
.end annotation


# static fields
.field public static final CB_SET_TYPE_CLOSE_ETWS_CHANNEL:I = 0x2

.field public static final CB_SET_TYPE_NORMAL:I = 0x0

.field public static final CB_SET_TYPE_OPEN_ETWS_CHANNEL:I = 0x1

.field private static final CHANNEL_URI:Landroid/net/Uri;

.field private static final CHANNEL_URI1:Landroid/net/Uri;

.field private static final EVENT_CLOSE_ETWS_CHANNEL_DONE:I = 0x3

.field private static final EVENT_OPEN_ETWS_CHANNEL_DONE:I = 0x2

.field private static final EVENT_QUERY_CB_CONFIG:I = 0x1

.field private static final MAX_ETWS_NOTIFICATION:I = 0x4

.field private static final NEXT_ACTION_NO_ACTION:I = 0x64

.field private static final NEXT_ACTION_ONLY_ADD:I = 0x65

.field private static final NEXT_ACTION_ONLY_REMOVE:I = 0x65

.field private static final NEXT_ACTION_REMOVE_THEN_ADD:I = 0x66

.field private static final TAG:Ljava/lang/String; = "CellBroadcastFwkExt"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mConfigInfo:Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;

.field private mContext:Landroid/content/Context;

.field private mEtwsNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/EtwsNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneId:I

.field private mSuccess:Z


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->idToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;Lcom/mediatek/internal/telephony/EtwsNotification;)V
    .locals 0
    .param p1, "noti"    # Lcom/mediatek/internal/telephony/EtwsNotification;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->addEtwsNoti(Lcom/mediatek/internal/telephony/EtwsNotification;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;Ljava/lang/String;ILcom/mediatek/internal/telephony/EtwsNotification;)V
    .locals 0
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "nextAction"    # I
    .param p3, "noti"    # Lcom/mediatek/internal/telephony/EtwsNotification;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->handleQueriedConfig(Ljava/lang/String;ILcom/mediatek/internal/telephony/EtwsNotification;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;Lcom/mediatek/internal/telephony/EtwsNotification;)V
    .locals 0
    .param p1, "noti"    # Lcom/mediatek/internal/telephony/EtwsNotification;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->removeEtwsNoti(Lcom/mediatek/internal/telephony/EtwsNotification;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;Lcom/mediatek/internal/telephony/EtwsNotification;)V
    .locals 0
    .param p1, "noti"    # Lcom/mediatek/internal/telephony/EtwsNotification;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->removeFirstEtwsNotiThenAdd(Lcom/mediatek/internal/telephony/EtwsNotification;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->updateDatabase(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Landroid/provider/Telephony$SmsCb$CbChannel;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->CHANNEL_URI:Landroid/net/Uri;

    .line 51
    const-string/jumbo v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->CHANNEL_URI1:Landroid/net/Uri;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 38
    iput-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 39
    iput-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mContext:Landroid/content/Context;

    .line 40
    iput v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mPhoneId:I

    .line 42
    iput-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mLock:Ljava/lang/Object;

    .line 44
    iput-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mConfigInfo:Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;

    .line 45
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mSuccess:Z

    .line 48
    iput-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt$1;-><init>(Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    .line 54
    if-nez p1, :cond_0

    .line 55
    const-string/jumbo v0, "CellBroadcastFwkExt"

    const-string/jumbo v1, "FAIL! phone is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 60
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 61
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mPhoneId:I

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method private addEtwsNoti(Lcom/mediatek/internal/telephony/EtwsNotification;)V
    .locals 2
    .param p1, "noti"    # Lcom/mediatek/internal/telephony/EtwsNotification;

    .prologue
    .line 338
    const-string/jumbo v0, "CellBroadcastFwkExt"

    const-string/jumbo v1, "call addEtwsNoti"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method private handleQueriedConfig(Ljava/lang/String;ILcom/mediatek/internal/telephony/EtwsNotification;)V
    .locals 12
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "nextAction"    # I
    .param p3, "noti"    # Lcom/mediatek/internal/telephony/EtwsNotification;

    .prologue
    .line 264
    const-string/jumbo v9, "CellBroadcastFwkExt"

    const-string/jumbo v10, "handleQueriedConfig"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->parseConfigInfoToList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 267
    .local v5, "oldConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v4, "newConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v9, 0x1100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    const/16 v9, 0x1101

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    const/16 v9, 0x1102

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const/16 v9, 0x1103

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const/16 v9, 0x1104

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const/4 v8, 0x0

    .line 275
    .local v8, "sortedConfig":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 276
    .local v2, "finalConfig":Ljava/lang/String;
    const/4 v6, 0x0

    .line 278
    .local v6, "response":Landroid/os/Message;
    const/4 v9, 0x2

    if-ne p2, v9, :cond_3

    .line 279
    const-string/jumbo v9, "CellBroadcastFwkExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "to open ETWS channel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p3, Lcom/mediatek/internal/telephony/EtwsNotification;->messageId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v9, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 282
    .local v7, "size":I
    const/4 v9, 0x4

    if-ge v7, v9, :cond_0

    .line 283
    const-string/jumbo v9, "CellBroadcastFwkExt"

    const-string/jumbo v10, "list is NOT full"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0, v5, v4}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mergeConfigList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/SortedSet;

    move-result-object v8

    .line 286
    .local v8, "sortedConfig":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    const/4 v11, 0x0

    invoke-virtual {v9, p2, v10, v11, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 305
    .local v6, "response":Landroid/os/Message;
    :goto_0
    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->parseSortedSetToString(Ljava/util/SortedSet;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "finalConfig":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    invoke-interface {v9, v2, v10, v6}, Lcom/android/internal/telephony/CommandsInterface;->setCellBroadcastChannelConfigInfo(Ljava/lang/String;ILandroid/os/Message;)V

    .line 263
    .end local v7    # "size":I
    :goto_1
    return-void

    .line 288
    .local v2, "finalConfig":Ljava/lang/String;
    .local v6, "response":Landroid/os/Message;
    .restart local v7    # "size":I
    .local v8, "sortedConfig":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    :cond_0
    const-string/jumbo v9, "CellBroadcastFwkExt"

    const-string/jumbo v10, "list is full"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v9, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/EtwsNotification;

    .line 291
    .local v1, "earliestNoti":Lcom/mediatek/internal/telephony/EtwsNotification;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 292
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 293
    .local v0, "ch":I
    iget v9, v1, Lcom/mediatek/internal/telephony/EtwsNotification;->messageId:I

    if-ne v0, v9, :cond_2

    .line 294
    const-string/jumbo v9, "CellBroadcastFwkExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remove channel from old config: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/mediatek/internal/telephony/EtwsNotification;->messageId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 301
    .end local v0    # "ch":I
    :cond_1
    invoke-direct {p0, v5, v4}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mergeConfigList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/SortedSet;

    move-result-object v8

    .line 302
    .local v8, "sortedConfig":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x66

    const/4 v11, 0x0

    invoke-virtual {v9, p2, v10, v11, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .local v6, "response":Landroid/os/Message;
    goto :goto_0

    .line 291
    .restart local v0    # "ch":I
    .local v6, "response":Landroid/os/Message;
    .local v8, "sortedConfig":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 308
    .end local v0    # "ch":I
    .end local v1    # "earliestNoti":Lcom/mediatek/internal/telephony/EtwsNotification;
    .end local v3    # "i":I
    .end local v7    # "size":I
    :cond_3
    const/4 v9, 0x3

    if-ne p2, v9, :cond_4

    .line 309
    const-string/jumbo v9, "CellBroadcastFwkExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "to close ETWS channel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p3, Lcom/mediatek/internal/telephony/EtwsNotification;->messageId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, v5, v4}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->minusConfigList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/SortedSet;

    move-result-object v8

    .line 311
    .local v8, "sortedConfig":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    const/4 v11, 0x0

    invoke-virtual {v9, p2, v10, v11, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 312
    .local v6, "response":Landroid/os/Message;
    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->parseSortedSetToString(Ljava/util/SortedSet;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "finalConfig":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x2

    invoke-interface {v9, v2, v10, v6}, Lcom/android/internal/telephony/CommandsInterface;->setCellBroadcastChannelConfigInfo(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 316
    .local v2, "finalConfig":Ljava/lang/String;
    .local v6, "response":Landroid/os/Message;
    .local v8, "sortedConfig":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    :cond_4
    const-string/jumbo v9, "CellBroadcastFwkExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method private idToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 150
    packed-switch p1, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown message id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :pswitch_0
    const-string/jumbo v0, "EVENT_QUERY_CB_CONFIG"

    return-object v0

    .line 152
    :pswitch_1
    const-string/jumbo v0, "EVENT_OPEN_ETWS_CHANNEL_DONE"

    return-object v0

    .line 153
    :pswitch_2
    const-string/jumbo v0, "EVENT_CLOSE_ETWS_CHANNEL_DONE"

    return-object v0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mergeConfigList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "oldConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "newConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v3, "CellBroadcastFwkExt"

    const-string/jumbo v4, "call mergeConfigInfoList"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 161
    .local v2, "sortedConfig":Ljava/util/SortedSet;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 162
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "CellBroadcastFwkExt"

    const-string/jumbo v4, "oldConfigList is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 169
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    .restart local v0    # "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    .end local v0    # "i":I
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v3, "CellBroadcastFwkExt"

    const-string/jumbo v4, "newConfigList is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_3
    return-object v2
.end method

.method private minusConfigList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/SortedSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "oldConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "newConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v5, "CellBroadcastFwkExt"

    const-string/jumbo v6, "call minusConfigList"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 182
    .local v4, "sortedConfig":Ljava/util/SortedSet;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 183
    :cond_0
    const-string/jumbo v5, "CellBroadcastFwkExt"

    const-string/jumbo v6, "oldConfigList, no need to minus"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-object v4

    .line 187
    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 188
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 190
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v0, v5, :cond_3

    .line 191
    const-string/jumbo v5, "CellBroadcastFwkExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delete config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    .end local v0    # "i":I
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 200
    .restart local v0    # "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    .end local v0    # "i":I
    :cond_5
    return-object v4
.end method

.method private parseConfigInfoToList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x2c

    const/4 v12, 0x0

    .line 207
    const-string/jumbo v10, "CellBroadcastFwkExt"

    const-string/jumbo v11, "call parseConfigInfoToList"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v3, 0x0

    .line 209
    .local v3, "left":I
    const/4 v7, 0x0

    .line 210
    .local v7, "right":I
    const/4 v9, 0x0

    .line 211
    .local v9, "value":I
    const/4 v4, 0x0

    .line 212
    .local v4, "meetMinus":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v6, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 214
    :cond_0
    return-object v6

    .line 215
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_2

    .line 216
    return-object v6

    .line 219
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "temp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "n":I
    :goto_0
    if-ge v1, v5, :cond_8

    .line 221
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 222
    .local v0, "ch":C
    const/16 v10, 0x30

    if-lt v0, v10, :cond_4

    const/16 v10, 0x39

    if-gt v0, v10, :cond_4

    .line 223
    mul-int/lit8 v10, v9, 0xa

    add-int/lit8 v11, v0, -0x30

    add-int v9, v10, v11

    .line 220
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_4
    const/16 v10, 0x2d

    if-ne v0, v10, :cond_5

    .line 225
    const/4 v4, 0x1

    .line 226
    move v3, v9

    .line 227
    const/4 v9, 0x0

    goto :goto_1

    .line 228
    :cond_5
    if-ne v0, v13, :cond_3

    .line 230
    if-eqz v4, :cond_7

    .line 231
    move v7, v9

    .line 232
    move v2, v3

    .local v2, "j":I
    :goto_2
    if-gt v2, v7, :cond_6

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 235
    :cond_6
    const/4 v4, 0x0

    .line 239
    .end local v2    # "j":I
    :goto_3
    const/4 v9, 0x0

    goto :goto_1

    .line 237
    :cond_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 243
    .end local v0    # "ch":C
    :cond_8
    return-object v6
.end method

.method private parseSortedSetToString(Ljava/util/SortedSet;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 247
    const-string/jumbo v3, "CellBroadcastFwkExt"

    const-string/jumbo v4, "call parseSortedSet"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 249
    :cond_0
    const-string/jumbo v3, "CellBroadcastFwkExt"

    const-string/jumbo v4, "sortedSet is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-object v5

    .line 253
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 255
    .local v0, "i":I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 258
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private removeEtwsNoti(Lcom/mediatek/internal/telephony/EtwsNotification;)V
    .locals 7
    .param p1, "noti"    # Lcom/mediatek/internal/telephony/EtwsNotification;

    .prologue
    .line 343
    const-string/jumbo v4, "CellBroadcastFwkExt"

    const-string/jumbo v5, "call removeEtwsNoti"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 347
    iget-object v4, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/EtwsNotification;

    .line 348
    .local v1, "element":Lcom/mediatek/internal/telephony/EtwsNotification;
    iget v4, v1, Lcom/mediatek/internal/telephony/EtwsNotification;->messageId:I

    iget v5, p1, Lcom/mediatek/internal/telephony/EtwsNotification;->messageId:I

    if-ne v4, v5, :cond_0

    .line 349
    iget-object v4, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 350
    add-int/lit8 v3, v3, -0x1

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "element":Lcom/mediatek/internal/telephony/EtwsNotification;
    :cond_1
    const-string/jumbo v4, "CellBroadcastFwkExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove noti "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method private removeFirstEtwsNotiThenAdd(Lcom/mediatek/internal/telephony/EtwsNotification;)V
    .locals 2
    .param p1, "noti"    # Lcom/mediatek/internal/telephony/EtwsNotification;

    .prologue
    .line 361
    const-string/jumbo v0, "CellBroadcastFwkExt"

    const-string/jumbo v1, "call removeFirstEtwsNotiThenAdd"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method private updateDatabase(Z)V
    .locals 19
    .param p1, "open"    # Z

    .prologue
    .line 369
    const-string/jumbo v1, "CellBroadcastFwkExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDatabase "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v2, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->CHANNEL_URI:Landroid/net/Uri;

    .line 372
    .local v2, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mPhoneId:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 373
    sget-object v2, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->CHANNEL_URI1:Landroid/net/Uri;

    .line 375
    :cond_0
    const/4 v8, -0x1

    .line 376
    .local v8, "channel":I
    const-string/jumbo v16, ""

    .line 377
    .local v16, "name":Ljava/lang/String;
    const/4 v10, -0x1

    .line 378
    .local v10, "enable":I
    const/4 v14, -0x1

    .line 379
    .local v14, "key":I
    const/16 v1, 0x1100

    const/16 v3, 0x1101

    const/16 v4, 0x1102

    const/16 v5, 0x1103

    const/16 v6, 0x1104

    filled-new-array {v1, v3, v4, v5, v6}, [I

    move-result-object v7

    .line 380
    .local v7, "Channels":[I
    const/4 v1, 0x5

    new-array v12, v1, [Z

    .local v12, "handled":[Z
    fill-array-data v12, :array_0

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 383
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 384
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 385
    const-string/jumbo v1, "number"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 386
    const-string/jumbo v1, "CellBroadcastFwkExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDatabase channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v1, 0x0

    aget v1, v7, v1

    if-lt v8, v1, :cond_1

    const/4 v1, 0x4

    aget v1, v7, v1

    if-gt v8, v1, :cond_1

    .line 388
    const-string/jumbo v1, "enable"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 389
    const/4 v1, 0x0

    aget v1, v7, v1

    sub-int v1, v8, v1

    const/4 v3, 0x1

    aput-boolean v3, v12, v1

    .line 390
    const/4 v1, 0x1

    if-ne v10, v1, :cond_2

    if-nez p1, :cond_1

    :cond_2
    if-nez v10, :cond_3

    if-eqz p1, :cond_1

    .line 393
    :cond_3
    const-string/jumbo v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 394
    new-instance v17, Landroid/content/ContentValues;

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 395
    .local v17, "value":Landroid/content/ContentValues;
    const-string/jumbo v3, "enable"

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 400
    .end local v17    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 401
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "CellBroadcastFwkExt"

    const-string/jumbo v3, "get channels error:"

    invoke-static {v1, v3, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    if-eqz v9, :cond_4

    .line 405
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_4
    return-void

    .line 395
    .end local v11    # "ex":Ljava/lang/Exception;
    .restart local v17    # "value":Landroid/content/ContentValues;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 404
    .end local v17    # "value":Landroid/content/ContentValues;
    :cond_6
    if-eqz v9, :cond_7

    .line 405
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_7
    array-length v15, v12

    .line 409
    .local v15, "len":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    const/4 v1, 0x5

    if-ge v13, v1, :cond_b

    .line 410
    aget-boolean v1, v12, v13

    if-nez v1, :cond_8

    .line 411
    const/4 v1, 0x0

    aget v1, v7, v1

    add-int v8, v13, v1

    .line 412
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v18, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v1, "number"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string/jumbo v3, "enable"

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 409
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 403
    .end local v13    # "i":I
    .end local v15    # "len":I
    :catchall_0
    move-exception v1

    .line 404
    if-eqz v9, :cond_9

    .line 405
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_9
    throw v1

    .line 415
    .restart local v13    # "i":I
    .restart local v15    # "len":I
    .restart local v18    # "values":Landroid/content/ContentValues;
    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    .line 368
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_b
    return-void

    .line 380
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public closeEtwsChannel(Lcom/mediatek/internal/telephony/EtwsNotification;)V
    .locals 5
    .param p1, "newEtwsNoti"    # Lcom/mediatek/internal/telephony/EtwsNotification;

    .prologue
    .line 143
    const-string/jumbo v1, "CellBroadcastFwkExt"

    const-string/jumbo v2, "closeEtwsChannel"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 146
    .local v0, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCellBroadcastConfigInfo(Landroid/os/Message;)V

    .line 142
    return-void
.end method

.method public containDuplicatedEtwsNotification(Lcom/mediatek/internal/telephony/EtwsNotification;)Z
    .locals 5
    .param p1, "newEtwsNoti"    # Lcom/mediatek/internal/telephony/EtwsNotification;

    .prologue
    const/4 v4, 0x0

    .line 322
    const-string/jumbo v2, "CellBroadcastFwkExt"

    const-string/jumbo v3, "call containDuplicatedEtwsNotification"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-nez p1, :cond_0

    .line 324
    const-string/jumbo v2, "CellBroadcastFwkExt"

    const-string/jumbo v3, "null EtwsNotification"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v4

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/EtwsNotification;

    .line 329
    .local v0, "e":Lcom/mediatek/internal/telephony/EtwsNotification;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/EtwsNotification;->isDuplicatedEtws(Lcom/mediatek/internal/telephony/EtwsNotification;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    const/4 v2, 0x1

    return v2

    .line 334
    .end local v0    # "e":Lcom/mediatek/internal/telephony/EtwsNotification;
    :cond_2
    return v4
.end method

.method public openEtwsChannel(Lcom/mediatek/internal/telephony/EtwsNotification;)V
    .locals 5
    .param p1, "newEtwsNoti"    # Lcom/mediatek/internal/telephony/EtwsNotification;

    .prologue
    .line 136
    const-string/jumbo v1, "CellBroadcastFwkExt"

    const-string/jumbo v2, "openEtwsChannel"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCellBroadcastConfigInfo(Landroid/os/Message;)V

    .line 135
    return-void
.end method
