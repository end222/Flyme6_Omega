.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_AAS_LOAD_DONE:I = 0x8

.field private static final EVENT_AAS_UPDATE_DONE:I = 0x15

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_ANR_RECORD_LOAD_DONE:I = 0xd

.field private static final EVENT_ANR_UPDATE_DONE:I = 0x9

.field private static final EVENT_EMAIL_LENGTH_READ_DONE:I = 0x12

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EMAIL_RECORD_LOAD_DONE:I = 0x13

.field private static final EVENT_EMAIL_UPDATE_DONE:I = 0xb

.field private static final EVENT_EXT1_LOAD_DONE:I = 0x3e9

.field private static final EVENT_GAS_LOAD_DONE:I = 0x7

.field private static final EVENT_GAS_UPDATE_DONE:I = 0x11

.field private static final EVENT_GET_AAS_RECORD_SIZE_DONE:I = 0x14

.field private static final EVENT_GET_ANR_RECORD_SIZE_DONE:I = 0xe

.field private static final EVENT_GET_RECORDS_SIZE_DONE:I = 0x3e8

.field private static final EVENT_GET_RECORD_SIZE_DONE:I = 0x16

.field private static final EVENT_GRP_LOAD_DONE:I = 0x6

.field private static final EVENT_GRP_RECORD_LOAD_DONE:I = 0xf

.field private static final EVENT_GRP_UPDATE_DONE:I = 0xa

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_IAP_RECORD_LOAD_DONE:I = 0x1a

.field private static final EVENT_IAP_UPDATE_DONE:I = 0xc

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_QUERY_PHB_ADN_INFO:I = 0x1c

.field private static final EVENT_SELECT_EF_FILE_DONE:I = 0x1b

.field private static final EVENT_SNE_LOAD_DONE:I = 0x18

.field private static final EVENT_SNE_RECORD_LOAD_DONE:I = 0x17

.field private static final EVENT_SNE_UPDATE_DONE:I = 0x19

.field private static final EVENT_UPB_CAPABILITY_QUERY_DONE:I = 0x10

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field private static final UPB_EF_AAS:I = 0x3

.field private static final UPB_EF_ANR:I = 0x0

.field private static final UPB_EF_EMAIL:I = 0x1

.field private static final UPB_EF_GAS:I = 0x4

.field private static final UPB_EF_GRP:I = 0x5

.field private static final UPB_EF_SNE:I = 0x2

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field public static final USIM_ERROR_GROUP_COUNT:I = -0x14

.field public static final USIM_ERROR_NAME_LEN:I = -0xa

.field public static final USIM_MAX_ANR_COUNT:I = 0x3

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_CONDITIONAL_LENGTH:I = 0x2

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field protected efData:Lcom/android/internal/telephony/EFResponseData;

.field private mAasFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAasForAnrRec:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAasLock:Ljava/lang/Object;

.field private mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mAdnFileSize:I

.field private mAdnRecordSize:[I

.field private mAnrFileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mAnrFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrFileSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrRecordSize:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mEmailFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailFileSize:I

.field private mEmailPresentInIap:Z

.field private mEmailRecTable:[I

.field private mEmailRecordSize:I

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExt1ForAnrRec:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mGasForGrp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mGasLock:Ljava/lang/Object;

.field private mIapFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mIapFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private final mLock:Ljava/lang/Object;

.field private mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPbrFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRecordSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private mResult:I

.field private mSneFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mSneFileSize:I

.field private mSneRecordSize:I

.field private final mUPBCapabilityLock:Ljava/lang/Object;

.field private mUpbCap:[I


# direct methods
.method static synthetic -set0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 5
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .prologue
    const/16 v4, 0xfa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 90
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 91
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 93
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 94
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 95
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    .line 104
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 111
    const/16 v0, 0x190

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    .line 114
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 115
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 116
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 117
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 193
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 196
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 200
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 204
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 205
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 206
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 207
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 213
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager constructor finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 5
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    const/16 v4, 0xfa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 90
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 91
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 93
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 94
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 95
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    .line 104
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 111
    const/16 v0, 0x190

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    .line 114
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 115
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 116
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 117
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 193
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 218
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 222
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 226
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 227
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 228
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 229
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 235
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager constructor finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method private buildAnrRecord(Ljava/lang/String;II)[B
    .locals 8
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "recordSize"    # I
    .param p3, "aas"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2793
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildAnrRecord anr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",recordSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",aas:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2794
    if-gtz p2, :cond_0

    .line 2795
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecordSize()V

    .line 2797
    :cond_0
    iget p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 2798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildAnrRecord recordSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2802
    new-array v0, p2, [B

    .line 2803
    .local v0, "anrString":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 2804
    const/4 v4, -0x1

    aput-byte v4, v0, v2

    .line 2803
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2807
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2808
    .local v3, "updatedAnr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2809
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "[buildAdnString] Empty dialing number"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    return-object v0

    .line 2811
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_3

    .line 2812
    const-string/jumbo v4, "UsimPhoneBookManager"

    .line 2813
    const-string/jumbo v5, "[buildAnrRecord] Max length of dialing number is 20"

    .line 2812
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    return-object v7

    .line 2816
    :cond_3
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2817
    .local v1, "bcdNumber":[B
    if-eqz v1, :cond_4

    .line 2818
    int-to-byte v4, p3

    aput-byte v4, v0, v6

    .line 2820
    array-length v4, v1

    const/4 v5, 0x2

    .line 2819
    invoke-static {v1, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2821
    array-length v4, v1

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v0, v5

    .line 2824
    :cond_4
    return-object v0
.end method

.method private buildEmailRecord(Ljava/lang/String;II)[B
    .locals 11
    .param p1, "strEmail"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "recordSize"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 2831
    new-array v1, p3, [B

    .line 2833
    .local v1, "eMailRecData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 2834
    aput-byte v7, v1, v2

    .line 2833
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2836
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2858
    :cond_1
    :goto_1
    return-object v1

    .line 2837
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 2838
    .local v0, "eMailData":[B
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-eq v6, v7, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_3

    array-length v6, v1

    add-int/lit8 v3, v6, -0x2

    .line 2839
    .local v3, "maxDataLength":I
    :goto_2
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildEmailRecord eMailData.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", maxDataLength="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    array-length v6, v0

    if-le v6, v3, :cond_4

    .line 2842
    return-object v9

    .line 2838
    .end local v3    # "maxDataLength":I
    :cond_3
    array-length v3, v1

    .restart local v3    # "maxDataLength":I
    goto :goto_2

    .line 2844
    :cond_4
    array-length v6, v0

    invoke-static {v0, v10, v1, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2845
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildEmailRecord eMailData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", eMailRecData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v6, :cond_1

    .line 2848
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "record$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2849
    .local v4, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v6, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    add-int/lit8 v7, p2, -0x1

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v7, v8

    if-ne v6, v7, :cond_5

    .line 2850
    add-int/lit8 v6, p3, -0x2

    iget-byte v7, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    aput-byte v7, v1, v6

    .line 2851
    add-int/lit8 v6, p3, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 2852
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildEmailRecord x+1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", x+2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "baseNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4668
    .local p2, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4669
    .local v2, "size":I
    const/4 v1, 0x0

    .line 4672
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4673
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 4674
    .local v0, "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v0, :cond_0

    .line 4675
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordIndex(I)V

    .line 4672
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4678
    .end local v0    # "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    return-object p2
.end method

.method private checkIsPhbReady()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4527
    const-string/jumbo v5, "false"

    .line 4528
    .local v5, "strPhbReady":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 4529
    .local v3, "strAllSimState":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 4530
    .local v4, "strCurSimState":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4531
    .local v0, "isSimLocked":Z
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v2

    .line 4532
    .local v2, "slotId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 4533
    .local v6, "subId":[I
    aget v10, v6, v8

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 4535
    .local v1, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4536
    const-string/jumbo v10, "gsm.sim.state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4538
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 4539
    const-string/jumbo v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4540
    .local v7, "values":[Ljava/lang/String;
    if-ltz v1, :cond_0

    array-length v10, v7

    if-ge v1, v10, :cond_0

    aget-object v10, v7, v1

    if-eqz v10, :cond_0

    .line 4541
    aget-object v4, v7, v1

    .line 4545
    .end local v7    # "values":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v10, "NETWORK_LOCKED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "PIN_REQUIRED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4547
    .end local v0    # "isSimLocked":Z
    :goto_0
    if-ne v9, v2, :cond_4

    .line 4548
    const-string/jumbo v10, "gsm.sim.ril.phbready.2"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4558
    :cond_1
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[isPhbReady] subId[0]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v6, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", slotId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isPhbReady: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",strSimState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4560
    const-string/jumbo v10, "true"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    :goto_2
    return v8

    .line 4545
    .restart local v0    # "isSimLocked":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 4549
    .end local v0    # "isSimLocked":Z
    :cond_4
    const/4 v10, 0x2

    if-ne v10, v2, :cond_5

    .line 4550
    const-string/jumbo v10, "gsm.sim.ril.phbready.3"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 4551
    :cond_5
    const/4 v10, 0x3

    if-ne v10, v2, :cond_6

    .line 4552
    const-string/jumbo v10, "gsm.sim.ril.phbready.4"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 4554
    :cond_6
    const-string/jumbo v10, "gsm.sim.ril.phbready"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    move v8, v9

    .line 4560
    goto :goto_2
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v0, 0x0

    .line 990
    if-nez p1, :cond_0

    .line 991
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 992
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 993
    return-void

    .line 995
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 989
    return-void
.end method

.method private decodeGas(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "srcGas"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1893
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[decodeGas] gas string is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_1

    const-string/jumbo v5, "null"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 1895
    :cond_0
    return-object v8

    :cond_1
    move-object v5, p1

    .line 1893
    goto :goto_0

    .line 1897
    :cond_2
    const/4 v3, 0x0

    .line 1900
    .local v3, "retGas":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1901
    .local v0, "ba":[B
    if-nez v0, :cond_3

    .line 1902
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "gas string is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    return-object v3

    .line 1905
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const-string/jumbo v6, "utf-16be"

    const/4 v7, 0x0

    invoke-direct {v4, v0, v7, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "retGas":Ljava/lang/String;
    .local v4, "retGas":Ljava/lang/String;
    move-object v3, v4

    .line 1911
    .end local v0    # "ba":[B
    .end local v4    # "retGas":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 1908
    .restart local v3    # "retGas":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1909
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "[decodeGas] RuntimeException"

    invoke-static {v5, v6, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1906
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 1907
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "[decodeGas] implausible UnsupportedEncodingException"

    invoke-static {v5, v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1920
    .local v3, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1921
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1922
    .local v0, "hexInt":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_0

    .line 1923
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1922
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1925
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1928
    .end local v0    # "hexInt":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getAdnStorageInfo()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4172
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "getAdnStorageInfo "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v1, :cond_0

    .line 4175
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1c

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 4176
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4178
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 4187
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    return-object v1

    .line 4179
    :catch_0
    move-exception v0

    .line 4180
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in getAdnStorageInfo"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4176
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 4184
    :cond_0
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "GetAdnStorageInfo: filehandle is null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    return-object v3
.end method

.method private getRecNum([Ljava/lang/String;II[BI)I
    .locals 9
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "pbrRecNum"    # I
    .param p3, "nIapRecNum"    # I
    .param p4, "iapRec"    # [B
    .param p5, "tagNum"    # I

    .prologue
    const/16 v8, 0xff

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 2535
    const/4 v0, 0x0

    .line 2536
    .local v0, "hasEmail":Z
    if-nez p1, :cond_1

    .line 2538
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-eq v4, v8, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-lez v4, :cond_0

    .line 2539
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    add-int/lit8 v5, v5, -0x1

    aput v6, v4, v5

    .line 2541
    :cond_0
    return v7

    .line 2543
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_4

    .line 2544
    aget-object v4, p1, v1

    if-eqz v4, :cond_2

    aget-object v4, p1, v1

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2543
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2545
    :cond_3
    const/4 v0, 0x1

    .line 2549
    :cond_4
    if-nez v0, :cond_6

    .line 2550
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-eq v4, v8, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-lez v4, :cond_5

    .line 2551
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    add-int/lit8 v5, v5, -0x1

    aput v6, v4, v5

    .line 2553
    :cond_5
    return v7

    .line 2555
    :cond_6
    aget-byte v3, p4, p5

    .line 2556
    .local v3, "recNum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRecNum recNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2557
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v3, v4, :cond_7

    if-lt v3, v8, :cond_a

    .line 2563
    :cond_7
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, p2, v4

    .line 2564
    .local v2, "nOffset":I
    move v1, v2

    :goto_2
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, v2

    if-ge v1, v4, :cond_8

    .line 2565
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEmailsByAdnIndex: mEmailRecTable["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2566
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v6, v1

    .line 2565
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v4, v4, v1

    if-nez v4, :cond_b

    .line 2568
    add-int/lit8 v4, v1, 0x1

    sub-int v3, v4, v2

    .line 2569
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aput p3, v4, v1

    .line 2574
    .end local v2    # "nOffset":I
    :cond_8
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-le v3, v4, :cond_9

    .line 2575
    const/16 v3, 0xff

    .line 2577
    :cond_9
    if-ne v3, v7, :cond_c

    .line 2578
    const/4 v4, -0x2

    return v4

    .line 2557
    :cond_a
    if-gtz v3, :cond_8

    goto :goto_1

    .line 2564
    .restart local v2    # "nOffset":I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2580
    .end local v2    # "nOffset":I
    :cond_c
    return v3
.end method

.method private isSameEfidEmailCapacityFree(II)Z
    .locals 5
    .param p1, "pbrRecNUm"    # I
    .param p2, "emailRecIndex"    # I

    .prologue
    .line 2600
    const/4 v0, 0x0

    .line 2601
    .local v0, "free":Z
    if-nez p1, :cond_1

    .line 2602
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v1, v1, p2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, p2

    aget v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2603
    :goto_0
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2604
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v3, v3, p2

    .line 2603
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2606
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, p2

    aget v3, v3, v4

    .line 2605
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :goto_1
    return v0

    .line 2602
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2608
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v1, v1, p2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v2, p2, v2

    aget v1, v1, v2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 2609
    :goto_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2610
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v3, v3, p2

    .line 2609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2612
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v4, p2, v4

    aget v3, v3, v4

    .line 2611
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2608
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2434
    const-string/jumbo v0, "UsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    return-void
.end method

.method private queryUpbCapablityAndWait()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1747
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "UsimPhoneBookManager queryUpbCapablityAndWait begin"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1749
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1750
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v4, 0x0

    aput v4, v2, v1

    .line 1749
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1753
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1754
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v3

    .line 1762
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager queryUpbCapablityAndWait done:N_Anr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1763
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v4, v4, v5

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1763
    const-string/jumbo v4, ", N_Email is "

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1763
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1763
    const-string/jumbo v4, ",N_Sne is "

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1763
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1765
    const-string/jumbo v4, ",N_Aas is "

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1765
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1765
    const-string/jumbo v4, ", L_Aas is "

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1765
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1765
    const-string/jumbo v4, ",N_Gas is "

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1765
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1766
    const-string/jumbo v4, ",L_Gas is "

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1766
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1766
    const-string/jumbo v4, ", N_Grp is "

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1766
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    .line 1762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    return-void

    .line 1757
    :catch_0
    move-exception v0

    .line 1758
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v4, "Interrupted Exception in queryUpbCapablityAndWait"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1748
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private readAASFileAndWait(I)V
    .locals 13
    .param p1, "recNum"    # I

    .prologue
    const/16 v12, 0xc7

    .line 596
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readAASFileAndWait "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v9, :cond_1

    .line 598
    :cond_0
    return-void

    .line 600
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 601
    .local v3, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 605
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 606
    .local v2, "efid":I
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readAASFileAndWait-get AAS EFID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v9, :cond_5

    .line 608
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 609
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AAS has been loaded for Pbr number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 610
    return-void

    .line 602
    .end local v2    # "efid":I
    :cond_2
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "readAASFileAndWait-PBR have no AAS EF record"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void

    .line 612
    .restart local v2    # "efid":I
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 613
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 614
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 615
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 616
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 617
    .local v7, "pbr":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 618
    .local v4, "fileid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 619
    .local v1, "ef":I
    if-ne v2, v1, :cond_4

    .line 620
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AAS has been loaded for ef "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 621
    return-void

    .line 626
    .end local v1    # "ef":I
    .end local v4    # "fileid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "pbr":I
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v9, :cond_6

    .line 627
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 628
    .local v6, "msg":Landroid/os/Message;
    iput p1, v6, Landroid/os/Message;->arg1:I

    .line 629
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v9, v2, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 631
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "Interrupted Exception in readAASFileAndWait"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 636
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_6
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "readAASFileAndWait-IccFileHandler is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 5
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0x6f3a

    .line 966
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UsimPhoneBookManager readAdnFileAndWait: recNum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 969
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 967
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 983
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    return-void

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAdnFileAndWaitForUICC(I)V
    .locals 9
    .param p1, "recNum"    # I

    .prologue
    const/16 v8, 0xc0

    .line 4632
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUICC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 4634
    :cond_0
    return-void

    .line 4637
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4639
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4644
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4645
    .local v1, "efid":I
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUICC: EFADN id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "record$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4648
    .local v3, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v5, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v5, v1, :cond_2

    iget v5, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v5, p1, :cond_2

    .line 4649
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UiccPhoneBookManager readAdnFileAndWaitForUICC: recNum is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4651
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 4652
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v7, 0x6f3a

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4651
    invoke-virtual {v5, v1, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 4655
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4656
    :catch_0
    move-exception v0

    .line 4657
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4640
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "efid":I
    .end local v3    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v4    # "record$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUICC: No ADN tag in pbr record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4641
    return-void

    .line 4631
    .restart local v1    # "efid":I
    .restart local v4    # "record$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private readAnrFileAndWait(I)V
    .locals 22
    .param p1, "recNum"    # I

    .prologue
    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 670
    :cond_0
    return-void

    .line 672
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 673
    .local v8, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 674
    :cond_2
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: No anr tag in pbr record "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void

    .line 678
    :cond_3
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: recNum is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_d

    .line 681
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 682
    .local v7, "efid":I
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: recNum is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 683
    const-string/jumbo v20, " EFANR id is "

    .line 682
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "record$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 686
    .local v15, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_4

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 687
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v18, v0

    const/16 v19, 0xa9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 688
    iput v10, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    .line 689
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 690
    return-void

    .line 695
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 696
    .local v13, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    mul-int v12, p1, v18

    .line 697
    .local v12, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    add-int v11, v12, v18

    .line 698
    .local v11, "nMax":I
    if-ge v13, v11, :cond_6

    .line 699
    move v11, v13

    .line 702
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 703
    const/16 v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 704
    .local v17, "result":Landroid/os/Message;
    mul-int/lit8 v18, p1, 0x3

    add-int v18, v18, v10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 711
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 717
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "UsimPhoneBookManager readAnrFileAndWait: AnrRecordSize is 0. "

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void

    .line 707
    .end local v17    # "result":Landroid/os/Message;
    :cond_7
    return-void

    .line 712
    .restart local v17    # "result":Landroid/os/Message;
    :catch_0
    move-exception v6

    .line 713
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "Interrupted Exception in readAnrFileAndWait"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 720
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_8
    move v9, v12

    .local v9, "i":I
    :goto_2
    if-ge v9, v11, :cond_b

    .line 723
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 729
    .local v14, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_9

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    .line 730
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 731
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v4, v0, [I

    .line 732
    .local v4, "data":[I
    const/16 v18, 0x0

    aput p1, v4, v18

    .line 733
    const/16 v18, 0x1

    aput v9, v4, v18

    .line 734
    const/16 v18, 0x2

    aput v10, v4, v18

    .line 735
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: read anr for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 736
    const-string/jumbo v20, " adn "

    .line 735
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 736
    const-string/jumbo v20, "( "

    .line 735
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 736
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 735
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 736
    const-string/jumbo v20, ", "

    .line 735
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 736
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 735
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 737
    const-string/jumbo v20, " )  mReadingAnrNum is "

    .line 735
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 735
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v18, v0

    add-int/lit8 v19, v9, 0x1

    sub-int v19, v19, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v20, v0

    .line 739
    const/16 v21, 0xd

    .line 738
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 720
    .end local v4    # "data":[I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 724
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_1
    move-exception v5

    .line 725
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 726
    const-string/jumbo v20, "index is "

    .line 725
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_c

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 680
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 747
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 749
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "readAnrFileAndWait before mLock.wait "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 751
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 755
    :goto_4
    const-string/jumbo v18, "readAnrFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 752
    :catch_2
    move-exception v6

    .line 753
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "Interrupted Exception in readAnrFileAndWait"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 667
    .end local v6    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "efid":I
    .end local v9    # "i":I
    .end local v11    # "nMax":I
    .end local v12    # "nOffset":I
    .end local v13    # "numAdnRecs":I
    .end local v16    # "record$iterator":Ljava/util/Iterator;
    .end local v17    # "result":Landroid/os/Message;
    :cond_d
    return-void
.end method

.method private readAnrRecordSize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3593
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager readAnrRecordSize"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 3595
    :cond_0
    return-void

    .line 3597
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3598
    .local v2, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3599
    :cond_2
    return-void

    .line 3602
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 3603
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager readAnrRecordSize: No anr tag in pbr record "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    return-void

    .line 3607
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3608
    .local v1, "efid":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_5

    .line 3609
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3613
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3615
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    .line 3592
    return-void

    .line 3611
    :cond_5
    return-void

    .line 3616
    :catch_0
    move-exception v0

    .line 3617
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readAnrRecordSize"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3613
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private readEmailFileAndWait(I)V
    .locals 25
    .param p1, "recNum"    # I

    .prologue
    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 352
    :cond_0
    return-void

    .line 354
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 355
    .local v10, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v10, :cond_2

    .line 356
    return-void

    .line 358
    :cond_2
    const/16 v22, 0xca

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 359
    const/16 v22, 0xca

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 360
    .local v9, "efid":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait: efid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 361
    const/16 v18, 0x0

    .line 362
    .local v18, "rec":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "record$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 363
    .local v19, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait mEmailFile record "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v9, :cond_3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    .line 365
    move-object/from16 v18, v19

    .line 366
    .local v18, "rec":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v22, v0

    const/16 v23, 0xa8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 367
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 368
    return-void

    .line 369
    :cond_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v22, v0

    const/16 v23, 0xa9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 370
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait type2 email "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 381
    .end local v18    # "rec":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v19    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 382
    const/16 v22, 0xc1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 383
    const/16 v22, 0xc1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_8

    .line 390
    :cond_6
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "Error: IAP file is empty"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void

    .line 386
    :cond_7
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "readEmailFileAndWait Error: No IAP file!"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 389
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-eqz v22, :cond_6

    .line 394
    :cond_9
    const-string/jumbo v22, "readEmailFileAndWait after read IAP"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 411
    .local v17, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v22, v0

    mul-int v16, p1, v22

    .line 412
    .local v16, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v22, v0

    add-int v15, v16, v22

    .line 413
    .local v15, "nMax":I
    move/from16 v0, v17

    if-ge v0, v15, :cond_a

    .line 414
    move/from16 v15, v17

    .line 416
    :cond_a
    move/from16 v11, v16

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v22, v0

    add-int v22, v22, v16

    move/from16 v0, v22

    if-ge v11, v0, :cond_b

    .line 418
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v22, v11
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 419
    :catch_0
    move-exception v6

    .line 420
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "init RecTable error "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 424
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_b
    const/16 v21, 0x0

    .line 425
    .local v21, "size":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "size":[I
    check-cast v21, [I

    .line 430
    .local v21, "size":[I
    :goto_1
    if-eqz v21, :cond_c

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 431
    :cond_c
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "UsimPhoneBookManager readEmailFileAndWait: read record size error."

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 428
    .local v21, "size":[I
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v21

    .local v21, "size":[I
    goto :goto_1

    .line 435
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 437
    .local v12, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_f

    .line 438
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "Warning: IAP size is 0"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 442
    :cond_f
    move/from16 v11, v16

    :goto_2
    if-ge v11, v15, :cond_12

    .line 445
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    .local v4, "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-gtz v22, :cond_10

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_11

    .line 453
    :cond_10
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v5, v0, [I

    .line 455
    .local v5, "data":[I
    sub-int v22, v11, v16

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 456
    .local v13, "iapRecord":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v22, v0

    aget-byte v22, v13, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 457
    .local v14, "index":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait iap["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sub-int v23, v11, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "]="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 458
    if-lez v14, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v14, v0, :cond_13

    .line 442
    .end local v5    # "data":[I
    .end local v13    # "iapRecord":[B
    .end local v14    # "index":I
    :cond_11
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 446
    .end local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_1
    move-exception v7

    .line 447
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v22, "UsimPhoneBookManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "UsimPhoneBookManager readEmailFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 448
    const-string/jumbo v24, "index is "

    .line 447
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v22

    if-nez v22, :cond_14

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    return-void

    .line 458
    .restart local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v5    # "data":[I
    .restart local v13    # "iapRecord":[B
    .restart local v14    # "index":I
    :cond_13
    const/16 v22, 0xff

    move/from16 v0, v22

    if-ge v14, v0, :cond_11

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 462
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v22, v0

    mul-int v22, v22, v16

    add-int v22, v22, v14

    const/16 v23, 0x0

    aput v22, v5, v23

    .line 463
    const/16 v22, 0x1

    aput v11, v5, v22

    .line 464
    const-string/jumbo v22, "UsimPhoneBookManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "UsimPhoneBookManager readEmailFileAndWait: read email for  "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 465
    const-string/jumbo v24, " adn "

    .line 464
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 465
    const-string/jumbo v24, "( "

    .line 464
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 465
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v24

    .line 464
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 465
    const-string/jumbo v24, ", "

    .line 464
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 465
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v24

    .line 464
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 466
    const-string/jumbo v24, " )  mReadingEmailNum is "

    .line 464
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v24

    .line 464
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v23, v21, v23

    .line 468
    const/16 v24, 0x13

    .line 467
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v9, v14, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    goto/16 :goto_3

    .line 476
    .end local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "data":[I
    .end local v13    # "iapRecord":[B
    .end local v14    # "index":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 478
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait before mLock.wait "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 480
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 484
    :goto_4
    const-string/jumbo v22, "readEmailFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 349
    .end local v9    # "efid":I
    .end local v11    # "i":I
    .end local v12    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v15    # "nMax":I
    .end local v16    # "nOffset":I
    .end local v17    # "numAdnRecs":I
    .end local v20    # "record$iterator":Ljava/util/Iterator;
    .end local v21    # "size":[I
    :cond_15
    return-void

    .line 481
    .restart local v9    # "efid":I
    .restart local v11    # "i":I
    .restart local v12    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v15    # "nMax":I
    .restart local v16    # "nOffset":I
    .restart local v17    # "numAdnRecs":I
    .restart local v20    # "record$iterator":Ljava/util/Iterator;
    .restart local v21    # "size":[I
    :catch_2
    move-exception v8

    .line 482
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "Interrupted Exception in readEmailFileAndWait"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 7
    .param p1, "recNum"    # I

    .prologue
    const/4 v6, 0x0

    .line 927
    const/4 v2, 0x0

    .line 928
    .local v2, "emailRec":[B
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 929
    return-object v6

    .line 933
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "emailRec":[B
    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    .local v2, "emailRec":[B
    array-length v3, v2

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 939
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager readEmailRecord: emailRec.length is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 940
    array-length v5, v2

    .line 939
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, "email":Ljava/lang/String;
    return-object v1

    .line 934
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "emailRec":[B
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager readEmailRecord: recNum is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-object v6
.end method

.method private readExt1FileAndWait(I)V
    .locals 8
    .param p1, "recNum"    # I

    .prologue
    const/16 v7, 0xc2

    .line 4481
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readExt1FileAndWait "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 4483
    :cond_0
    return-void

    .line 4485
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4486
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4490
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4491
    .local v1, "efid":I
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readExt1FileAndWait-get EXT1 EFID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    .line 4493
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EXT1 has been loaded for Pbr number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4495
    return-void

    .line 4487
    .end local v1    # "efid":I
    :cond_2
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "readExt1FileAndWait-PBR have no Ext1 record"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    return-void

    .line 4511
    .restart local v1    # "efid":I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_4

    .line 4512
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4513
    .local v3, "msg":Landroid/os/Message;
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 4514
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 4516
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4480
    :goto_0
    return-void

    .line 4517
    :catch_0
    move-exception v0

    .line 4518
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4521
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4522
    return-void
.end method

.method private readGasListAndWait()V
    .locals 6

    .prologue
    .line 1770
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "UsimPhoneBookManager readGasListAndWait begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1772
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    if-gtz v1, :cond_0

    .line 1773
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "UsimPhoneBookManager readGasListAndWait no need to read. return"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1774
    return-void

    .line 1776
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v5, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->readUPBGasList(IILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1778
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v2

    .line 1769
    return-void

    .line 1779
    :catch_0
    move-exception v0

    .line 1780
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in readGasListAndWait"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1771
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private readGrpIdsAndWait()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 761
    const-string/jumbo v7, "UsimPhoneBookManager"

    const-string/jumbo v8, "UsimPhoneBookManager readGrpIdsAndWait begin"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 765
    .local v5, "numAdnRecs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 768
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 775
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 776
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v0

    .line 777
    .local v0, "adnIndex":I
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 778
    .local v1, "data":[I
    aput v4, v1, v10

    .line 779
    aput v0, v1, v11

    .line 780
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager readGrpIdsAndWait: read grp for  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 781
    const-string/jumbo v9, " adn "

    .line 780
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 781
    const-string/jumbo v9, "( "

    .line 780
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 781
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v9

    .line 780
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 781
    const-string/jumbo v9, ", "

    .line 780
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 781
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 780
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 782
    const-string/jumbo v9, " )  mReadingGrpNum is "

    .line 780
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 782
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 780
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xf

    invoke-virtual {p0, v8, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/android/internal/telephony/CommandsInterface;->readUPBGrpEntry(ILandroid/os/Message;)V

    .line 765
    .end local v0    # "adnIndex":I
    .end local v1    # "data":[I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 769
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v2

    .line 770
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager readGrpIdsAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 771
    const-string/jumbo v9, "index is "

    .line 770
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-nez v7, :cond_3

    .line 788
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 789
    return-void

    .line 791
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 793
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readGrpIdsAndWait before mLock.wait "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 795
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 799
    :goto_1
    const-string/jumbo v7, "readGrpIdsAndWait after mLock.wait"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 759
    return-void

    .line 796
    :catch_1
    move-exception v3

    .line 797
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "UsimPhoneBookManager"

    const-string/jumbo v8, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readIapFileAndWait(IIZ)V
    .locals 21
    .param p1, "pbrIndex"    # I
    .param p2, "efid"    # I
    .param p3, "forceRefresh"    # Z

    .prologue
    .line 491
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readIapFileAndWait pbrIndex :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",efid:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",forceRefresh:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 499
    if-gtz p2, :cond_0

    return-void

    .line 500
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 501
    const-string/jumbo v17, "readIapFileAndWait IapFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 502
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 504
    :cond_1
    const/4 v14, 0x0

    .line 505
    .local v14, "size":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "size":[I
    check-cast v14, [I

    .line 510
    .local v14, "size":[I
    :goto_0
    if-eqz v14, :cond_2

    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 511
    :cond_2
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "UsimPhoneBookManager readIapFileAndWait: read record size error."

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v9, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 516
    return-void

    .line 508
    .end local v9    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v14, "size":[I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v14

    .local v14, "size":[I
    goto :goto_0

    .line 518
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p1

    if-gt v0, v1, :cond_b

    .line 519
    const-string/jumbo v17, "Create IAP first!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 520
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .restart local v9    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v16, 0x0

    .line 522
    .local v16, "value":[B
    const/4 v8, 0x0

    .end local v16    # "value":[B
    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    .line 523
    const/16 v17, 0x0

    aget v17, v14, v17

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 524
    .local v16, "value":[B
    const/16 v17, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    aget-byte v15, v16, v17

    .line 525
    .local v15, "tem":B
    const/4 v15, -0x1

    .line 524
    .local v15, "tem":B
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 527
    .end local v15    # "tem":B
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 529
    .end local v16    # "value":[B
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 546
    .end local v8    # "i":I
    .end local v9    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 547
    .local v12, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    mul-int v11, p1, v17

    .line 548
    .local v11, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    add-int v10, v11, v17

    .line 549
    .local v10, "nMax":I
    if-ge v12, v10, :cond_8

    .line 550
    move v10, v12

    .line 553
    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readIapFileAndWait nOffset "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", nMax "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 554
    move v8, v11

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v10, :cond_c

    .line 557
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .local v13, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_9

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_a

    .line 565
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 566
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [I

    .line 567
    .local v5, "data":[I
    const/16 v17, 0x0

    aput p1, v5, v17

    .line 568
    sub-int v17, v8, v11

    const/16 v18, 0x1

    aput v17, v5, v18

    .line 569
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UsimPhoneBookManager readIapFileAndWait: read iap for  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 570
    const-string/jumbo v19, " adn "

    .line 569
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 570
    const-string/jumbo v19, "( "

    .line 569
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 570
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    .line 569
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 570
    const-string/jumbo v19, ", "

    .line 569
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 570
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    .line 569
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 571
    const-string/jumbo v19, " )  mReadingIapNum is "

    .line 569
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    .line 569
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    sub-int v18, v18, v11

    const/16 v19, 0x0

    aget v19, v14, v19

    .line 573
    const/16 v20, 0x1a

    .line 572
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 554
    .end local v5    # "data":[I
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 531
    .end local v8    # "i":I
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_b
    const-string/jumbo v17, "This IAP has been loaded!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 532
    if-nez p3, :cond_7

    .line 533
    return-void

    .line 558
    .restart local v8    # "i":I
    .restart local v10    # "nMax":I
    .restart local v11    # "nOffset":I
    .restart local v12    # "numAdnRecs":I
    :catch_0
    move-exception v6

    .line 559
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UsimPhoneBookManager readIapFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 560
    const-string/jumbo v19, "index is "

    .line 559
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    if-nez v17, :cond_d

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 579
    return-void

    .line 581
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 583
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readIapFileAndWait before mLock.wait "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 585
    :try_start_1
    const-string/jumbo v17, "readIapFileAndWait excute mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    monitor-exit v18

    .line 592
    const-string/jumbo v17, "readIapFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 490
    return-void

    .line 588
    :catch_1
    move-exception v7

    .line 589
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v19, "Interrupted Exception in readIapFileAndWait"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 584
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17
.end method

.method private readPbrFileAndWait(Z)V
    .locals 4
    .param p1, "is7FFF"    # Z

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x4f30

    invoke-virtual {v1, v3, v2, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;Z)V

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "Interrupted Exception in readPbrFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readSneFileAndWait(I)V
    .locals 7
    .param p1, "recNum"    # I

    .prologue
    const/16 v6, 0xc3

    .line 642
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readSneFileAndWait "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 643
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 644
    :cond_0
    return-void

    .line 646
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 647
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 651
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 652
    .local v0, "efid":I
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readSneFileAndWait: EFSNE id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "record$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 654
    .local v2, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v4, v0, :cond_2

    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v4, p1, :cond_2

    .line 655
    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v4, v5, :cond_4

    .line 656
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 657
    return-void

    .line 648
    .end local v0    # "efid":I
    .end local v2    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readSneFileAndWait: No SNE tag in pbr record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void

    .line 658
    .restart local v0    # "efid":I
    .restart local v2    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .restart local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_4
    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_5

    .line 659
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 660
    return-void

    .line 641
    .end local v2    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    return-void
.end method

.method private readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 21
    .param p1, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    .line 3017
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "readType1Ef:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3018
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v18, v0

    const/16 v19, 0xa8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 3019
    return-void

    .line 3021
    :cond_0
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    .line 3022
    .local v13, "pbrIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3023
    .local v12, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    mul-int v11, v13, v18

    .line 3024
    .local v11, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    add-int v10, v11, v18

    .line 3025
    .local v10, "nMax":I
    if-ge v12, v10, :cond_1

    .line 3026
    move v10, v12

    .line 3028
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3029
    .local v7, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v17, 0x0

    .line 3030
    .local v17, "what":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 3052
    const/16 v17, 0x16

    .line 3053
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 3054
    .local v16, "result":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3055
    if-eqz v7, :cond_3

    .line 3056
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3062
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v16    # "result":Landroid/os/Message;
    :goto_0
    monitor-exit v19

    .line 3070
    :goto_1
    const/4 v15, 0x0

    .line 3071
    .local v15, "recordSize":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_1

    .line 3082
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readType1Ef unsupport tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    :goto_2
    if-nez v15, :cond_4

    .line 3086
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "UsimPhoneBookManager readType1Ef: recordSize is 0. "

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    return-void

    .line 3032
    .end local v15    # "recordSize":I
    :sswitch_0
    const/16 v17, 0xe

    .line 3033
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 3034
    .local v9, "msg":Landroid/os/Message;
    if-eqz v7, :cond_2

    .line 3035
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3041
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3042
    :catch_0
    move-exception v5

    .line 3043
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v20, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3039
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 3037
    :cond_2
    return-void

    .line 3048
    .end local v9    # "msg":Landroid/os/Message;
    :sswitch_1
    const/16 v17, 0x12

    .line 3049
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readRecordSize(I)V

    goto :goto_1

    .line 3058
    .restart local v16    # "result":Landroid/os/Message;
    :cond_3
    return-void

    .line 3063
    :catch_1
    move-exception v5

    .line 3064
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v20, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 3060
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v18

    monitor-exit v19

    throw v18

    .line 3073
    .end local v16    # "result":Landroid/os/Message;
    .restart local v15    # "recordSize":I
    :sswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    goto :goto_2

    .line 3076
    :sswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    goto :goto_2

    .line 3079
    :sswitch_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    goto :goto_2

    .line 3090
    :cond_4
    move v6, v11

    .local v6, "i":I
    :goto_3
    if-ge v6, v10, :cond_7

    .line 3093
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3100
    .local v14, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_5

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 3101
    :cond_5
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v3, v0, [I

    .line 3102
    .local v3, "data":[I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v18, v0

    const/16 v19, 0x0

    aput v18, v3, v19

    .line 3103
    const/16 v18, 0x1

    aput v6, v3, v18

    .line 3104
    const/4 v8, 0x0

    .line 3105
    .local v8, "loadWhat":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_2

    .line 3130
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "not support tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    add-int/lit8 v19, v6, 0x1

    sub-int v19, v19, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v0, v1, v15, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 3090
    .end local v3    # "data":[I
    .end local v8    # "loadWhat":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3094
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v4

    .line 3095
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    .line 3096
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readType1Ef: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3097
    const-string/jumbo v20, "index is "

    .line 3096
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3095
    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_3

    .line 3165
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "not support tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    :goto_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "readType1Ef before mLock.wait "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3171
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_6
    monitor-exit v19

    .line 3016
    return-void

    .line 3107
    .restart local v3    # "data":[I
    .restart local v8    # "loadWhat":I
    .restart local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :sswitch_5
    const/16 v8, 0xd

    .line 3108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 3109
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3110
    const-string/jumbo v20, " adn "

    .line 3109
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3110
    const-string/jumbo v20, "( "

    .line 3109
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3110
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 3109
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3110
    const-string/jumbo v20, ", "

    .line 3109
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3110
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 3109
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3111
    const-string/jumbo v20, " )  mReadingAnrNum is "

    .line 3109
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 3109
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3115
    :sswitch_6
    add-int/lit8 v18, v6, 0x1

    sub-int v18, v18, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v19, v0

    mul-int v19, v19, v11

    add-int v18, v18, v19

    const/16 v19, 0x0

    aput v18, v3, v19

    .line 3116
    const/16 v8, 0x13

    .line 3117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3118
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3119
    const-string/jumbo v20, " adn "

    .line 3118
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3119
    const-string/jumbo v20, "( "

    .line 3118
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3119
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 3118
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3119
    const-string/jumbo v20, ", "

    .line 3118
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3119
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 3118
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3120
    const-string/jumbo v20, " )  mReadingEmailNum is "

    .line 3118
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 3118
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3123
    :sswitch_7
    const/16 v8, 0x17

    .line 3124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3125
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3126
    const-string/jumbo v20, " adn "

    .line 3125
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3126
    const-string/jumbo v20, "( "

    .line 3125
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3126
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 3125
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3126
    const-string/jumbo v20, ", "

    .line 3125
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3126
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 3125
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3127
    const-string/jumbo v20, " )  mReadingSneNum is "

    .line 3125
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 3125
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3141
    .end local v3    # "data":[I
    .end local v8    # "loadWhat":I
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_8

    .line 3142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3143
    return-void

    .line 3145
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_5

    .line 3149
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_9

    .line 3150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3151
    return-void

    .line 3153
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_5

    .line 3157
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_a

    .line 3158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3159
    return-void

    .line 3161
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_5

    .line 3172
    :catch_3
    move-exception v5

    .line 3173
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v20, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_6

    .line 3169
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v18

    monitor-exit v19

    throw v18

    .line 3030
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch

    .line 3071
    :sswitch_data_1
    .sparse-switch
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_2
        0xca -> :sswitch_3
    .end sparse-switch

    .line 3105
    :sswitch_data_2
    .sparse-switch
        0xc3 -> :sswitch_7
        0xc4 -> :sswitch_5
        0xca -> :sswitch_6
    .end sparse-switch

    .line 3139
    :sswitch_data_3
    .sparse-switch
        0xc3 -> :sswitch_a
        0xc4 -> :sswitch_8
        0xca -> :sswitch_9
    .end sparse-switch
.end method

.method private readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 8
    .param p1, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    const/16 v7, 0xc1

    const/4 v6, 0x0

    .line 3179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readType2Ef:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3180
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-eq v4, v5, :cond_0

    .line 3181
    return-void

    .line 3184
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3185
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 3186
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Error: no fileIds"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    return-void

    .line 3190
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3191
    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v5, v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V

    .line 3198
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-gt v4, v5, :cond_4

    .line 3199
    :cond_2
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Error: IAP file is empty"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    return-void

    .line 3194
    :cond_3
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "readType2Ef Error: No IAP file!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    return-void

    .line 3198
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 3202
    const/4 v3, 0x0

    .line 3203
    .local v3, "what":I
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v4, :sswitch_data_0

    .line 3215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no implement type2 EF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3216
    return-void

    .line 3205
    :sswitch_0
    const/4 v3, 0x5

    .line 3218
    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3219
    .local v2, "msg":Landroid/os/Message;
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 3220
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3221
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3223
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v5

    .line 3178
    return-void

    .line 3208
    .end local v2    # "msg":Landroid/os/Message;
    :sswitch_1
    const/4 v3, 0x4

    .line 3209
    goto :goto_0

    .line 3211
    :sswitch_2
    const/16 v3, 0x18

    .line 3212
    goto :goto_0

    .line 3224
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 3225
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v6, "Interrupted Exception in readType2Ef"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3221
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 3203
    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 330
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 331
    .local v1, "numRecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 332
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    return-void
.end method

.method private resetEmailRecTable(I[BI)V
    .locals 5
    .param p1, "pbrRecNum"    # I
    .param p2, "iapRec"    # [B
    .param p3, "value"    # I

    .prologue
    .line 2584
    if-nez p1, :cond_0

    .line 2585
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    aput p3, v1, v2

    .line 2586
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v3

    aput p3, v1, v2

    .line 2587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v3, p2, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v3, p2, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2583
    :goto_0
    return-void

    .line 2590
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v1, p2, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    rem-int v0, v1, v2

    .line 2591
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aput p3, v1, v0

    .line 2592
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v0

    aput p3, v1, v2

    .line 2593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2595
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 2594
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePhoneAdnRecord()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 803
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 804
    return-void

    .line 806
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 807
    .local v5, "numAdnRecs":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 816
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 817
    const/4 v8, 0x0

    .line 819
    .local v8, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "record":[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .local v8, "record":[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 826
    .local v7, "recNum":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    .line 827
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .line 829
    .local v2, "emails":[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v12

    .line 833
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 840
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_4

    .line 841
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 846
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 816
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 820
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "i":I
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 858
    .local v4, "len":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    if-nez v9, :cond_3

    .line 859
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(I)V

    .line 861
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v5, :cond_6

    .line 862
    const/4 v1, 0x0

    .line 864
    .local v1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 868
    .local v1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_5

    .line 861
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 834
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "len":I
    .restart local v2    # "emails":[Ljava/lang/String;
    .restart local v7    # "recNum":I
    .restart local v8    # "record":[B
    :catch_1
    move-exception v0

    .line 835
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 836
    const-string/jumbo v11, "index is "

    .line 835
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 844
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    invoke-direct {v6, v9, v10, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_1

    .line 874
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    .restart local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "len":I
    :cond_5
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 881
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 882
    .restart local v2    # "emails":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v12, v2, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 883
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 884
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 875
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v0

    .line 876
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 877
    const-string/jumbo v11, "index is "

    .line 876
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :goto_5
    return-void

    .line 865
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_5
.end method

.method private updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 20
    .param p2, "efrecord"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3231
    .local p1, "fileRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updatePhoneAdnRecord "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3232
    if-nez p2, :cond_0

    .line 3233
    return-void

    .line 3235
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3236
    .local v10, "numAdnRecs":I
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    .line 3237
    .local v11, "pbrIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    mul-int v9, v11, v17

    .line 3238
    .local v9, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    add-int v8, v9, v17

    .line 3239
    .local v8, "nMax":I
    if-ge v10, v8, :cond_1

    .line 3240
    move v8, v10

    .line 3243
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updatePhoneAdnRecord offset:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",nMax:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", mAdnFileSize:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    .line 3243
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3246
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v17, v0

    const/16 v18, 0xa9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 3247
    move v6, v9

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_4

    .line 3250
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3257
    .local v12, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 3258
    :cond_2
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 3247
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3251
    .end local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v5

    .line 3252
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3253
    const-string/jumbo v19, "index is "

    .line 3252
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "i":I
    :cond_4
    return-void

    .line 3261
    .restart local v6    # "i":I
    .restart local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_5
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "th "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3262
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    .line 3261
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    const/4 v14, 0x0

    .line 3265
    .local v14, "record":[B
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 3266
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "updatePhoneAdnRecord mIapFileList = null"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    return-void

    .line 3269
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 3270
    .local v7, "iaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez v7, :cond_7

    .line 3271
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "updatePhoneAdnRecord iaplist = null"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    return-void

    .line 3274
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_8

    .line 3275
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "Warning: IAP size is 0"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    return-void

    .line 3278
    :cond_8
    sub-int v17, v6, v9

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "record":[B
    check-cast v14, [B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3283
    .local v14, "record":[B
    if-nez v14, :cond_9

    .line 3284
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error, No Iap for ADN "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3279
    .end local v7    # "iaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v14    # "record":[B
    :catch_1
    move-exception v5

    .line 3280
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3287
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v7    # "iaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v14    # "record":[B
    :cond_9
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    move/from16 v17, v0

    aget-byte v17, v14, v17

    move/from16 v0, v17

    and-int/lit16 v13, v0, 0xff

    .line 3289
    .local v13, "recNum":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updatePhoneAdnRecord recNum["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3290
    if-lez v13, :cond_3

    const/16 v17, 0xff

    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 3292
    const/4 v4, 0x0

    .line 3294
    .local v4, "data":[B
    add-int/lit8 v17, v13, -0x1

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "data":[B
    check-cast v4, [B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3299
    .local v4, "data":[B
    if-nez v4, :cond_a

    .line 3300
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error record,data is null;"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3295
    .end local v4    # "data":[B
    :catch_2
    move-exception v5

    .line 3296
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "updatePhoneAdnRecord mIapFileList = null"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3303
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "data":[B
    :cond_a
    if-eqz v12, :cond_3

    .line 3304
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 3333
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "not supported tag "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3306
    :sswitch_0
    const/16 v17, 0x1

    aget-byte v3, v4, v17

    .line 3307
    .local v3, "anrRecLength":I
    if-lez v3, :cond_3

    const/16 v17, 0xb

    move/from16 v0, v17

    if-gt v3, v0, :cond_3

    .line 3309
    const/16 v17, 0x1

    aget-byte v17, v4, v17

    .line 3308
    const/16 v18, 0x2

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 3310
    .local v2, "anr":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3311
    const-string/jumbo v19, " th anr is "

    .line 3310
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    if-eqz v2, :cond_3

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 3313
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 3319
    .end local v2    # "anr":Ljava/lang/String;
    .end local v3    # "anrRecLength":I
    :sswitch_1
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v16

    .line 3320
    .local v16, "val":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3321
    const-string/jumbo v19, " th email is "

    .line 3320
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 3323
    const/16 v18, 0x0

    aput-object v16, v17, v18

    .line 3322
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3327
    .end local v16    # "val":Ljava/lang/String;
    :sswitch_2
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v15

    .line 3328
    .local v15, "sne":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3329
    const-string/jumbo v19, " th sne is "

    .line 3328
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    invoke-virtual {v12, v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3304
    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method private updatePhoneAdnRecordByEmailFile(I)V
    .locals 16
    .param p1, "nPbrRecNum"    # I

    .prologue
    .line 2909
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v13, :cond_0

    .line 2910
    return-void

    .line 2912
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v8, p1, v13

    .line 2914
    .local v8, "nOffset":I
    move v4, v8

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v13, v8

    if-ge v4, v13, :cond_1

    .line 2916
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    const/4 v14, 0x0

    aput v14, v13, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2914
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2917
    :catch_0
    move-exception v1

    .line 2918
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile: mEmailRecTable ArrayIndexOutOfBoundsException, nPbrRecNum is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v13, :cond_2

    .line 2924
    return-void

    .line 2930
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2936
    .local v5, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v5, :cond_7

    .line 2937
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_3

    .line 2938
    const-string/jumbo v13, "UsimPhoneBookManager"

    const-string/jumbo v14, "Warning: IAP size is 0"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    return-void

    .line 2931
    .end local v5    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_1
    move-exception v2

    .line 2932
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2933
    return-void

    .line 2949
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v5    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2950
    .local v9, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    mul-int v6, p1, v13

    .line 2951
    .local v6, "nAdnOffset":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    add-int v7, v8, v13

    .line 2952
    .local v7, "nMax":I
    if-ge v9, v7, :cond_4

    .line 2953
    move v7, v9

    .line 2955
    :cond_4
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile:  nAdnOffset is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2956
    const-string/jumbo v15, "nMax is "

    .line 2955
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    move v4, v6

    :goto_1
    if-ge v4, v7, :cond_7

    .line 2960
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2966
    .local v10, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_5

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_6

    .line 2968
    :cond_5
    const/4 v12, 0x0

    .line 2970
    .local v12, "record":[B
    sub-int v13, v4, v6

    :try_start_3
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "record":[B
    check-cast v12, [B
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2976
    .local v12, "record":[B
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v13, v12, v13

    and-int/lit16 v11, v13, 0xff

    .line 2977
    .local v11, "recNum":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updatePhoneAdnRecordByEmailFile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",recNum["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2978
    const-string/jumbo v14, "]="

    .line 2977
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2979
    const/4 v13, -0x1

    if-eq v11, v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v11, v13, :cond_6

    .line 2980
    const/4 v13, 0x1

    new-array v3, v13, [Ljava/lang/String;

    .line 2982
    .local v3, "emails":[Ljava/lang/String;
    add-int/lit8 v13, v11, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v3, v14

    .line 2984
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v14, v14, p1

    add-int/2addr v14, v11

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v15, v4, 0x1

    aput v15, v13, v14
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2992
    invoke-virtual {v10, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 2993
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v4, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2957
    .end local v3    # "emails":[Ljava/lang/String;
    .end local v11    # "recNum":I
    .end local v12    # "record":[B
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2961
    .end local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v2

    .line 2962
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2963
    const-string/jumbo v15, "index is "

    .line 2962
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    return-void

    .line 2971
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_3
    move-exception v2

    .line 2972
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error: updatePhoneAdnRecord : No IAP record for ADN "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2973
    const-string/jumbo v15, " , continuing"

    .line 2972
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "nAdnOffset":I
    .end local v7    # "nMax":I
    .end local v9    # "numAdnRecs":I
    .end local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_7
    return-void

    .line 2985
    .restart local v3    # "emails":[Ljava/lang/String;
    .restart local v6    # "nAdnOffset":I
    .restart local v7    # "nMax":I
    .restart local v9    # "numAdnRecs":I
    .restart local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v11    # "recNum":I
    .restart local v12    # "record":[B
    :catch_4
    move-exception v2

    .line 2986
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    .line 2987
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error: updatePhoneAdnRecord : Email record index out of table storage "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2988
    const-string/jumbo v15, " , continuing"

    .line 2987
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2986
    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updatePhoneAdnRecordWithAnrByIndex(III[B)V
    .locals 10
    .param p1, "recNum"    # I
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "anrRecData"    # [B

    .prologue
    .line 1786
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updatePhoneAdnRecordWithAnrByIndex the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "th anr record is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1787
    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 1786
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const/4 v7, 0x1

    aget-byte v4, p4, v7

    .line 1792
    .local v4, "anrRecLength":I
    const/4 v7, 0x0

    aget-byte v3, p4, v7

    .line 1793
    .local v3, "anrAas":I
    if-lez v4, :cond_0

    const/16 v7, 0xb

    if-gt v4, v7, :cond_0

    .line 1794
    const/4 v7, 0x1

    aget-byte v7, p4, v7

    const/4 v8, 0x2

    invoke-static {p4, v8, v7}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1799
    .local v2, "anr":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1785
    .end local v2    # "anr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1800
    .restart local v2    # "anr":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 1801
    .local v0, "aas":Ljava/lang/String;
    if-lez v3, :cond_2

    const/16 v7, 0xff

    if-eq v3, v7, :cond_2

    .line 1802
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    .line 1803
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1804
    .local v1, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v3, v7, :cond_2

    .line 1805
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "aas":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1809
    .end local v1    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " updatePhoneAdnRecordWithAnrByIndex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1810
    const-string/jumbo v9, " th anr is "

    .line 1809
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1810
    const-string/jumbo v9, " the anrIndex is "

    .line 1809
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1821
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6, v2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 1822
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1823
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 1825
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1815
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v5

    .line 1816
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager updatePhoneAdnRecordWithAnrByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1817
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1816
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1817
    const-string/jumbo v9, "index is "

    .line 1816
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    return-void
.end method

.method private updatePhoneAdnRecordWithEmailByIndex(II[B)V
    .locals 10
    .param p1, "emailIndex"    # I
    .param p2, "index"    # I
    .param p3, "emailRecData"    # [B

    .prologue
    const/4 v9, 0x0

    .line 3365
    if-nez p3, :cond_0

    .line 3366
    return-void

    .line 3369
    :cond_0
    array-length v3, p3

    .line 3370
    .local v3, "length":I
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_1

    array-length v6, p3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 3371
    array-length v6, p3

    add-int/lit8 v3, v6, -0x2

    .line 3374
    :cond_1
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePhoneAdnRecordWithEmailByIndex length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    new-array v5, v3, [B

    .line 3377
    .local v5, "validEMailData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 3378
    const/4 v6, -0x1

    aput-byte v6, v5, v2

    .line 3377
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3380
    :cond_2
    invoke-static {p3, v9, v5, v9, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3382
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validEMailData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", validEmailLen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 3386
    .local v1, "email":Ljava/lang/String;
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePhoneAdnRecordWithEmailByIndex index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3387
    const-string/jumbo v8, " emailRecData record is "

    .line 3386
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    if-eqz v1, :cond_3

    const-string/jumbo v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3394
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit8 v7, p1, -0x1

    add-int/lit8 v8, p2, 0x1

    aput v8, v6, v7

    .line 3364
    .end local v1    # "email":Ljava/lang/String;
    :goto_2
    return-void

    .line 3389
    .restart local v1    # "email":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 3390
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 3391
    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 3390
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3395
    .end local v1    # "email":Ljava/lang/String;
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 3396
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[JE]updatePhoneAdnRecordWithEmailByIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updatePhoneAdnRecordWithGrpByIndex(II[I)V
    .locals 8
    .param p1, "recIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIds"    # [I

    .prologue
    .line 2873
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "th grp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le p1, v5, :cond_0

    .line 2875
    return-void

    .line 2877
    :cond_0
    array-length v2, p3

    .line 2879
    .local v2, "grpSize":I
    if-lez v2, :cond_2

    .line 2882
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2889
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex the adnIndex is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2890
    const-string/jumbo v7, "; the original index is "

    .line 2889
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2890
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v7

    .line 2889
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2893
    .local v1, "grpIdsSb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_1

    .line 2894
    aget v5, p3, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2895
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2893
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2883
    .end local v1    # "grpIdsSb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 2884
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UsimPhoneBookManager updatePhoneAdnRecordWithGrpByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2885
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2884
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2885
    const-string/jumbo v7, "index is "

    .line 2884
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    return-void

    .line 2897
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "grpIdsSb":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    add-int/lit8 v5, v2, -0x1

    aget v5, p3, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2899
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 2901
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex grpIds is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2903
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex the rec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    .end local v1    # "grpIdsSb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    return-void
.end method

.method private updatePhoneAdnRecordWithSneByIndex(II[B)V
    .locals 6
    .param p1, "recNum"    # I
    .param p2, "index"    # I
    .param p3, "recData"    # [B

    .prologue
    .line 4096
    if-nez p3, :cond_0

    .line 4097
    return-void

    .line 4099
    :cond_0
    array-length v3, p3

    const/4 v4, 0x0

    invoke-static {p3, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 4100
    .local v2, "sne":Ljava/lang/String;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePhoneAdnRecordWithSneByIndex index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4101
    const-string/jumbo v5, " recData record is "

    .line 4100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    if-eqz v2, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4095
    :cond_1
    :goto_0
    return-void

    .line 4105
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4112
    .local v1, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    goto :goto_0

    .line 4106
    .end local v1    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 4107
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager updatePhoneAdnRecordWithSneByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4108
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4108
    const-string/jumbo v5, "index is "

    .line 4107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    return-void
.end method

.method private updateType2Anr(Ljava/lang/String;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 37
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    .line 3401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr anr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",adnIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3402
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v26, v3, v4

    .line 3403
    .local v26, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v22, v3, v4

    .line 3404
    .local v22, "iapRecNum":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr pbrRecNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",iapRecNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 3407
    return-void

    .line 3409
    :cond_0
    if-nez p3, :cond_1

    .line 3410
    return-void

    .line 3413
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_2

    .line 3414
    return-void

    .line 3416
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    .line 3417
    .local v20, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v20, :cond_3

    .line 3418
    return-void

    .line 3424
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3430
    .local v25, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez v25, :cond_4

    .line 3431
    return-void

    .line 3425
    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v19

    .line 3426
    .local v19, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3427
    return-void

    .line 3433
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 3434
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "Warning: IAP size is 0"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    return-void

    .line 3437
    :cond_5
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 3438
    .local v6, "iap":[B
    if-nez v6, :cond_6

    .line 3439
    return-void

    .line 3441
    :cond_6
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v6, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v23, v0

    .line 3442
    .local v23, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr orignal index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3443
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 3444
    :cond_7
    if-lez v23, :cond_8

    .line 3445
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    const/4 v4, -0x1

    aput-byte v4, v6, v3

    .line 3446
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3448
    add-int/lit8 v5, v22, 0x1

    const/16 v7, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const/4 v7, 0x0

    .line 3447
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3455
    :cond_8
    return-void

    .line 3451
    :cond_9
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateType2Anr Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    return-void

    .line 3459
    :cond_a
    const/16 v18, 0x0

    .line 3460
    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_0

    .line 3479
    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :goto_0
    const/4 v9, 0x0

    .line 3480
    .local v9, "recNum":I
    if-nez v18, :cond_d

    .line 3481
    return-void

    .line 3462
    .end local v9    # "recNum":I
    .restart local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    if-nez v3, :cond_b

    .line 3463
    const-string/jumbo v3, "updateType2Anr mAnrFileList null"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3464
    return-void

    .line 3466
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v18, Ljava/util/ArrayList;

    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_0

    .line 3469
    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    if-nez v3, :cond_c

    .line 3470
    const-string/jumbo v3, "updateType2Anr mEmailFileList null"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3471
    return-void

    .line 3473
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v18, Ljava/util/ArrayList;

    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_0

    .line 3483
    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v9    # "recNum":I
    :cond_d
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 3484
    .local v33, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3485
    if-lez v23, :cond_f

    move/from16 v0, v23

    move/from16 v1, v33

    if-gt v0, v1, :cond_f

    .line 3486
    move/from16 v9, v23

    .line 3544
    :cond_e
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr final index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3545
    if-nez v9, :cond_19

    .line 3546
    return-void

    .line 3489
    :cond_f
    add-int/lit8 v3, v33, 0x1

    new-array v0, v3, [I

    move-object/from16 v24, v0

    .line 3490
    .local v24, "indexArray":[I
    const/16 v21, 0x1

    .local v21, "i":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v33

    if-gt v0, v1, :cond_10

    .line 3491
    const/4 v3, 0x0

    aput v3, v24, v21

    .line 3490
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 3493
    :cond_10
    const/16 v21, 0x0

    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_12

    .line 3494
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    .line 3495
    .local v35, "value":[B
    if-eqz v35, :cond_11

    .line 3496
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v35, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v34, v0

    .line 3497
    .local v34, "tem":I
    if-lez v34, :cond_11

    const/16 v3, 0xff

    move/from16 v0, v34

    if-ge v0, v3, :cond_11

    move/from16 v0, v34

    move/from16 v1, v33

    if-gt v0, v1, :cond_11

    .line 3498
    const/4 v3, 0x1

    aput v3, v24, v34

    .line 3493
    .end local v34    # "tem":I
    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 3503
    .end local v35    # "value":[B
    :cond_12
    const/16 v32, 0x0

    .line 3504
    .local v32, "sharedAnr":Z
    const/16 v29, 0x0

    .line 3505
    .local v29, "re":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "r$iterator":Ljava/util/Iterator;
    :cond_13
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 3506
    .local v27, "r":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-eq v3, v4, :cond_13

    .line 3507
    move-object/from16 v29, v27

    .line 3511
    .end local v27    # "r":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v29    # "re":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_14
    if-eqz v29, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v4, :cond_15

    .line 3512
    const/16 v32, 0x1

    .line 3514
    :cond_15
    if-eqz v32, :cond_17

    .line 3518
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 3520
    .local v31, "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v31, :cond_17

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 3521
    const/16 v21, 0x0

    :goto_4
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_17

    .line 3522
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    .line 3523
    .restart local v35    # "value":[B
    if-eqz v35, :cond_16

    .line 3524
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v35, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v34, v0

    .line 3525
    .restart local v34    # "tem":I
    if-lez v34, :cond_16

    const/16 v3, 0xff

    move/from16 v0, v34

    if-ge v0, v3, :cond_16

    move/from16 v0, v34

    move/from16 v1, v33

    if-gt v0, v1, :cond_16

    .line 3526
    const/4 v3, 0x1

    aput v3, v24, v34
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3521
    .end local v34    # "tem":I
    :cond_16
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 3531
    .end local v31    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v35    # "value":[B
    :catch_1
    move-exception v19

    .line 3532
    .restart local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3533
    return-void

    .line 3537
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_17
    const/16 v21, 0x1

    :goto_5
    move/from16 v0, v21

    move/from16 v1, v33

    if-gt v0, v1, :cond_e

    .line 3538
    aget v3, v24, v21

    if-nez v3, :cond_18

    .line 3539
    move/from16 v9, v21

    goto/16 :goto_1

    .line 3537
    :cond_18
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 3548
    .end local v21    # "i":I
    .end local v24    # "indexArray":[I
    .end local v28    # "r$iterator":Ljava/util/Iterator;
    .end local v32    # "sharedAnr":Z
    :cond_19
    const/4 v10, 0x0

    .line 3549
    .local v10, "data":[B
    const/16 v36, 0x0

    .line 3550
    .local v36, "what":I
    const/4 v8, 0x0

    .line 3551
    .local v8, "fileId":I
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_1

    .line 3573
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3576
    .end local v10    # "data":[B
    :goto_6
    if-eqz v10, :cond_1a

    .line 3577
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3578
    move/from16 v0, v23

    if-eq v9, v0, :cond_1a

    .line 3579
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    int-to-byte v4, v9

    aput-byte v4, v6, v3

    .line 3580
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3581
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 3582
    add-int/lit8 v13, v22, 0x1

    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const/4 v15, 0x0

    move-object v14, v6

    .line 3581
    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3400
    :cond_1a
    return-void

    .line 3555
    .restart local v10    # "data":[B
    :sswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3562
    .local v30, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAasIndex()I

    move-result v17

    .line 3563
    .local v17, "aas":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v10

    .line 3564
    .local v10, "data":[B
    const/16 v36, 0x9

    .line 3565
    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    goto :goto_6

    .line 3556
    .end local v17    # "aas":I
    .end local v30    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .local v10, "data":[B
    :catch_2
    move-exception v19

    .line 3557
    .restart local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager updateType2Anr: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3558
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3558
    const-string/jumbo v5, "index is "

    .line 3557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3558
    add-int/lit8 v5, p2, -0x1

    .line 3557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3568
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :sswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v10

    .line 3569
    .local v10, "data":[B
    const/16 v36, 0xb

    .line 3570
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_6

    .line 3585
    .end local v10    # "data":[B
    :cond_1b
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateType2Anr Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    return-void

    .line 3460
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch

    .line 3551
    :sswitch_data_1
    .sparse-switch
        0xc4 -> :sswitch_2
        0xca -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 18
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 2012
    const/4 v13, 0x0

    .line 2013
    .local v13, "ret":Z
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UsimPhoneBookManager addContactToGroup adnIndex is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2014
    const-string/jumbo v16, " to grp "

    .line 2013
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v14, :cond_0

    if-gtz p1, :cond_1

    .line 2016
    :cond_0
    const-string/jumbo v14, "UsimPhoneBookManager"

    const-string/jumbo v15, "UsimPhoneBookManager addContactToGroup no records or invalid index."

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    const/4 v14, 0x0

    return v14

    .line 2015
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, p1

    if-gt v0, v14, :cond_0

    .line 2019
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2022
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v16, p1, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    .local v12, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v12, :cond_5

    .line 2030
    :try_start_1
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup the adn index is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2031
    const-string/jumbo v17, " old grpList is "

    .line 2030
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2031
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v17

    .line 2030
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v8

    .line 2033
    .local v8, "grpList":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2034
    .local v2, "bExist":Z
    const/4 v11, -0x1

    .line 2037
    .local v11, "nOrder":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x7

    aget v5, v14, v16

    .line 2038
    .local v5, "grpCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x7

    aget v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    move-object/from16 v16, v0

    const/16 v17, 0x5

    aget v16, v16, v17

    move/from16 v0, v16

    if-le v14, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x5

    aget v9, v14, v16

    .line 2039
    .local v9, "grpMaxCount":I
    :goto_0
    new-array v6, v5, [I

    .line 2040
    .local v6, "grpIdArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v5, :cond_3

    .line 2041
    const/4 v14, 0x0

    aput v14, v6, v10

    .line 2040
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2023
    .end local v2    # "bExist":Z
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdArray":[I
    .end local v8    # "grpList":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v11    # "nOrder":I
    .end local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v3

    .line 2024
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "UsimPhoneBookManager addContactToGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2024
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2025
    const-string/jumbo v17, "index is "

    .line 2024
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2025
    add-int/lit8 v17, p1, -0x1

    .line 2024
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2026
    const/4 v14, 0x0

    monitor-exit v15

    return v14

    .line 2038
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "bExist":Z
    .restart local v5    # "grpCount":I
    .restart local v8    # "grpList":Ljava/lang/String;
    .restart local v11    # "nOrder":I
    .restart local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x7

    aget v9, v14, v16

    .restart local v9    # "grpMaxCount":I
    goto :goto_0

    .line 2043
    .restart local v6    # "grpIdArray":[I
    .restart local v10    # "i":I
    :cond_3
    if-eqz v8, :cond_9

    .line 2044
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2045
    .local v7, "grpIds":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    .line 2046
    aget-object v14, v7, v10

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v6, v10

    .line 2047
    aget v14, v6, v10

    move/from16 v0, p2

    if-ne v0, v14, :cond_6

    .line 2048
    const/4 v2, 0x1

    .line 2049
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup the adn is already in the group. i is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    .end local v7    # "grpIds":[Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    if-ltz v11, :cond_5

    .line 2065
    aput p2, v6, v11

    .line 2066
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2067
    const/16 v16, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 2066
    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2069
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2073
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v14, :cond_5

    .line 2074
    const/4 v13, 0x1

    .line 2075
    add-int/lit8 v14, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2076
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup the adn index is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2077
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v17

    .line 2076
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "bExist":Z
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdArray":[I
    .end local v8    # "grpList":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v11    # "nOrder":I
    :cond_5
    monitor-exit v15

    .line 2083
    return v13

    .line 2053
    .restart local v2    # "bExist":Z
    .restart local v5    # "grpCount":I
    .restart local v6    # "grpIdArray":[I
    .restart local v7    # "grpIds":[Ljava/lang/String;
    .restart local v8    # "grpList":Ljava/lang/String;
    .restart local v9    # "grpMaxCount":I
    .restart local v10    # "i":I
    .restart local v11    # "nOrder":I
    :cond_6
    if-gez v11, :cond_8

    :try_start_5
    aget v14, v6, v10

    if-eqz v14, :cond_7

    aget v14, v6, v10

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ne v14, v0, :cond_8

    .line 2054
    :cond_7
    move v11, v10

    .line 2055
    const-string/jumbo v14, "UsimPhoneBookManager"

    .line 2056
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup found an unsed position in the group list. i is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2055
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2061
    .end local v7    # "grpIds":[Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 2070
    :catch_1
    move-exception v4

    .line 2071
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v14, "UsimPhoneBookManager"

    const-string/jumbo v16, "Interrupted Exception in addContactToGroup"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 2019
    .end local v2    # "bExist":Z
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdArray":[I
    .end local v8    # "grpList":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v11    # "nOrder":I
    .end local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14
.end method

.method public checkEmailCapacityFree(I[Ljava/lang/String;)Z
    .locals 8
    .param p1, "adnIndex"    # I
    .param p2, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2618
    add-int/lit8 v4, p1, -0x1

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v3, v4, v5

    .line 2619
    .local v3, "pbrRecNum":I
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, v3, v4

    .line 2620
    .local v2, "nOffset":I
    const/4 v0, 0x0

    .line 2621
    .local v0, "hasEmail":Z
    if-nez p2, :cond_0

    .line 2622
    return v6

    .line 2624
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_3

    .line 2625
    aget-object v4, p2, v1

    if-eqz v4, :cond_1

    aget-object v4, p2, v1

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2624
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2626
    :cond_2
    const/4 v0, 0x1

    .line 2630
    :cond_3
    if-nez v0, :cond_4

    .line 2631
    return v6

    .line 2634
    :cond_4
    move v1, v2

    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, v2

    if-ge v1, v4, :cond_6

    .line 2635
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v4, v4, v1

    if-nez v4, :cond_5

    .line 2636
    return v6

    .line 2634
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2639
    :cond_6
    return v7
.end method

.method public checkEmailLength([Ljava/lang/String;)Z
    .locals 7
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 2643
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-eq v2, v6, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    add-int/lit8 v1, v2, -0x2

    .line 2645
    .local v1, "maxDataLength":I
    :goto_0
    if-eqz p1, :cond_1

    aget-object v2, p1, v5

    if-eqz v2, :cond_1

    .line 2646
    aget-object v2, p1, v5

    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 2647
    .local v0, "eMailData":[B
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkEmailLength eMailData.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", maxDataLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    if-eq v1, v6, :cond_1

    array-length v2, v0

    if-le v2, v1, :cond_1

    .line 2649
    return v5

    .line 2643
    .end local v0    # "eMailData":[B
    .end local v1    # "maxDataLength":I
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .restart local v1    # "maxDataLength":I
    goto :goto_0

    .line 2652
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public getAdnListFromUsim()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4664
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAnrCount()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4001
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "UsimPhoneBookManager getAnrCount begin"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4004
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-gtz v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4005
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4007
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 4014
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    if-nez v2, :cond_1

    return v1

    .line 4008
    :catch_0
    move-exception v0

    .line 4009
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "Interrupted Exception in getAnrCount"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4003
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 4016
    :cond_1
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager getAnrCount done: N_ANR is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v2, v1

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getEmailCount()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4023
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager getEmailCount begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4026
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4027
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4030
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 4037
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_1

    return v2

    .line 4031
    :catch_0
    move-exception v0

    .line 4032
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in getEmailCount"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4025
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 4039
    :cond_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager getEmailCount done: N_EMAIL is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v1

    if-lez v3, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 22

    .prologue
    .line 4191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/4 v8, 0x1

    .line 4192
    .local v8, "is3G":Z
    :goto_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPhonebookMemStorageExt isUsim "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4193
    if-nez v8, :cond_1

    .line 4194
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v19

    return-object v19

    .line 4191
    .end local v8    # "is3G":Z
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "is3G":Z
    goto :goto_0

    .line 4196
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 4197
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 4200
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 4201
    const/16 v19, 0x0

    return-object v19

    .line 4203
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPhonebookMemStorageExt slice "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-object/from16 v16, v0

    .line 4205
    .local v16, "response":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_4

    .line 4206
    new-instance v19, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    invoke-direct/range {v19 .. v19}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;-><init>()V

    aput-object v19, v16, v7

    .line 4205
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4209
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 4210
    const-string/jumbo v19, "mPhoneBookRecords has not been loaded."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4211
    return-object v16

    .line 4213
    :cond_5
    const/16 v17, 0x0

    .line 4214
    .local v17, "size":[I
    const/16 v18, 0x0

    .line 4217
    .local v18, "used":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v17    # "size":[I
    .local v15, "record$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4218
    .local v14, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4219
    .local v17, "size":[I
    if-eqz v17, :cond_6

    .line 4220
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnLength(I)V

    .line 4224
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    .line 4227
    :cond_6
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnType(I)V

    .line 4228
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSliceIndex(I)V

    .line 4230
    const/16 v18, 0x0

    .line 4231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4232
    .local v12, "numAdnRecs":I
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v11, v19, v20

    .line 4233
    .local v11, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v10, v11, v19

    .line 4234
    .local v10, "nMax":I
    if-ge v12, v10, :cond_7

    move v10, v12

    .line 4235
    :cond_7
    const/4 v13, 0x0

    .line 4236
    .local v13, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    move v7, v11

    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_3
    if-ge v7, v10, :cond_a

    .line 4238
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4243
    :goto_4
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_9

    .line 4244
    :goto_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Adn: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4245
    add-int/lit8 v18, v18, 0x1

    .line 4246
    const/4 v13, 0x0

    .line 4236
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 4239
    :catch_0
    move-exception v5

    .line 4240
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v19, "UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 4240
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4241
    const-string/jumbo v21, "index is "

    .line 4240
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4243
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    goto :goto_5

    .line 4250
    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "adn used "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4251
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnUsed(I)V

    goto/16 :goto_2

    .line 4255
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4256
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4257
    .restart local v17    # "size":[I
    if-eqz v17, :cond_c

    .line 4258
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrLength(I)V

    .line 4259
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrTotal(I)V

    .line 4261
    :cond_c
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrType(I)V

    .line 4262
    const/16 v18, 0x0

    .line 4263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4264
    .restart local v12    # "numAdnRecs":I
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v11, v19, v20

    .line 4265
    .restart local v11    # "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v10, v11, v19

    .line 4266
    .restart local v10    # "nMax":I
    if-ge v12, v10, :cond_d

    .line 4267
    move v10, v12

    .line 4269
    :cond_d
    const/4 v13, 0x0

    .line 4270
    .restart local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v2, 0x0

    .line 4271
    .local v2, "anrStr":Ljava/lang/String;
    move v7, v11

    .end local v2    # "anrStr":Ljava/lang/String;
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int v19, v19, v11

    move/from16 v0, v19

    if-ge v7, v0, :cond_10

    .line 4273
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v13, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4278
    :goto_8
    if-nez v13, :cond_f

    .line 4279
    const-string/jumbo v19, "null anr rec "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4271
    :cond_e
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 4274
    :catch_1
    move-exception v5

    .line 4275
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v19, "UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 4275
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4276
    const-string/jumbo v21, "index is "

    .line 4275
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4282
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_f
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v2

    .line 4283
    .local v2, "anrStr":Ljava/lang/String;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_e

    .line 4284
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "anrStr: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4285
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 4288
    .end local v2    # "anrStr":Ljava/lang/String;
    :cond_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "anr used: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4289
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrUsed(I)V

    goto/16 :goto_6

    .line 4292
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4293
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4294
    .restart local v17    # "size":[I
    if-eqz v17, :cond_12

    .line 4295
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailLength(I)V

    .line 4296
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailTotal(I)V

    .line 4298
    :cond_12
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailType(I)V

    .line 4299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4300
    .restart local v12    # "numAdnRecs":I
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v11, v19, v20

    .line 4301
    .restart local v11    # "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v10, v11, v19

    .line 4302
    .restart local v10    # "nMax":I
    if-ge v12, v10, :cond_13

    .line 4303
    move v10, v12

    .line 4305
    :cond_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "numAdnRecs:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4306
    const/16 v18, 0x0

    .line 4307
    move v7, v11

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move/from16 v0, v19

    if-ge v7, v0, :cond_15

    .line 4309
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    move-object/from16 v19, v0

    aget v19, v19, v7
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    if-lez v19, :cond_14

    .line 4310
    add-int/lit8 v18, v18, 0x1

    .line 4307
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 4312
    :catch_2
    move-exception v4

    .line 4313
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "get mEmailRecTable error "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4317
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_15
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "emailList used:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4318
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailUsed(I)V

    goto/16 :goto_a

    .line 4321
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mExt1Fileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4322
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4323
    .restart local v17    # "size":[I
    if-eqz v17, :cond_17

    .line 4324
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Length(I)V

    .line 4325
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Total(I)V

    .line 4327
    :cond_17
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Type(I)V

    .line 4328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4329
    :try_start_3
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readExt1FileAndWait(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v20

    .line 4331
    const/16 v18, 0x0

    .line 4332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 4334
    .local v6, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v6, :cond_1a

    .line 4335
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4336
    .local v9, "len":I
    const/4 v7, 0x0

    :goto_d
    if-ge v7, v9, :cond_1a

    .line 4337
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 4338
    .local v3, "arr":[B
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ext1["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4339
    if-eqz v3, :cond_19

    array-length v0, v3

    move/from16 v19, v0

    if-lez v19, :cond_19

    .line 4340
    const/16 v19, 0x0

    aget-byte v19, v3, v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    const/16 v19, 0x0

    aget-byte v19, v3, v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 4341
    :cond_18
    add-int/lit8 v18, v18, 0x1

    .line 4336
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 4328
    .end local v3    # "arr":[B
    .end local v6    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v9    # "len":I
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 4347
    :cond_1a
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Used(I)V

    goto/16 :goto_c

    .line 4350
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mGasFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4351
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4352
    .restart local v17    # "size":[I
    if-eqz v17, :cond_1c

    .line 4353
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasLength(I)V

    .line 4354
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasTotal(I)V

    .line 4356
    :cond_1c
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasType(I)V

    goto :goto_e

    .line 4359
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAasFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4360
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4361
    .restart local v17    # "size":[I
    if-eqz v17, :cond_1e

    .line 4362
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasLength(I)V

    .line 4363
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasTotal(I)V

    .line 4365
    :cond_1e
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasType(I)V

    goto :goto_f

    .line 4369
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_10
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_21

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4370
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4371
    .restart local v17    # "size":[I
    if-eqz v17, :cond_20

    .line 4372
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneLength(I)V

    .line 4373
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneTotal(I)V

    .line 4375
    :cond_20
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneType(I)V

    goto :goto_10

    .line 4378
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCcpFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_11
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_23

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4379
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4380
    .restart local v17    # "size":[I
    if-eqz v17, :cond_22

    .line 4381
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpLength(I)V

    .line 4382
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpTotal(I)V

    .line 4384
    :cond_22
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpType(I)V

    goto :goto_11

    .line 4387
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_23
    const/4 v7, 0x0

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_24

    .line 4388
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPhonebookMemStorageExt["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v16, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4387
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 4390
    :cond_24
    return-object v16
.end method

.method public getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 15

    .prologue
    const/16 v11, 0x6f4a

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4394
    new-array v6, v13, [Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    .line 4395
    .local v6, "response":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    new-instance v9, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    invoke-direct {v9}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;-><init>()V

    aput-object v9, v6, v12

    .line 4396
    const/4 v7, 0x0

    .line 4397
    .local v7, "size":[I
    const/16 v9, 0x6f3a

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v7

    .line 4398
    .local v7, "size":[I
    if-eqz v7, :cond_0

    .line 4399
    aget-object v9, v6, v12

    aget v10, v7, v12

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnLength(I)V

    .line 4400
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAdnAccessible()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4401
    aget-object v9, v6, v12

    aget v10, v7, v14

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    .line 4406
    :cond_0
    :goto_0
    aget-object v9, v6, v12

    const/16 v10, 0xa8

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnType(I)V

    .line 4407
    aget-object v9, v6, v12

    invoke-virtual {v9, v13}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSliceIndex(I)V

    .line 4409
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v7

    .line 4410
    if-eqz v7, :cond_1

    .line 4411
    aget-object v9, v6, v12

    aget v10, v7, v12

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Length(I)V

    .line 4412
    aget-object v9, v6, v12

    aget v10, v7, v14

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Total(I)V

    .line 4414
    :cond_1
    aget-object v9, v6, v12

    const/16 v10, 0xaa

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Type(I)V

    .line 4415
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4416
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v9, :cond_5

    .line 4417
    const/16 v9, 0x3e9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 4418
    .local v5, "msg":Landroid/os/Message;
    const/4 v9, 0x0

    iput v9, v5, Landroid/os/Message;->arg1:I

    .line 4419
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v11, 0x6f4a

    invoke-virtual {v9, v11, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4421
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v10

    .line 4430
    const/4 v8, 0x0

    .line 4431
    .local v8, "used":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    if-eqz v9, :cond_6

    .line 4432
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4433
    .local v2, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v2, :cond_6

    .line 4434
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4435
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_6

    .line 4436
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 4437
    .local v0, "arr":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ext1["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4438
    if-eqz v0, :cond_3

    array-length v9, v0

    if-lez v9, :cond_3

    .line 4439
    aget-byte v9, v0, v12

    if-eq v9, v13, :cond_2

    aget-byte v9, v0, v12

    if-ne v9, v14, :cond_3

    .line 4440
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 4435
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4403
    .end local v0    # "arr":[B
    .end local v2    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "used":I
    :cond_4
    aget-object v9, v6, v12

    invoke-virtual {v9, v12}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    goto/16 :goto_0

    .line 4422
    .restart local v5    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 4423
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v11, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4415
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 4426
    :cond_5
    :try_start_3
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v11, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v10

    .line 4427
    return-object v6

    .line 4446
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "used":I
    :cond_6
    aget-object v9, v6, v12

    invoke-virtual {v9, v8}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Used(I)V

    .line 4447
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPhonebookMemStorageExt2G:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4448
    return-object v6
.end method

.method public getSneRecordLen()I
    .locals 12

    .prologue
    const/16 v11, 0xc3

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 4063
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasSne()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4064
    return v9

    .line 4066
    :cond_0
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSneRecordLen: mSneRecordSize is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    if-lez v6, :cond_1

    .line 4068
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    return v6

    .line 4070
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4071
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_2

    .line 4072
    return v9

    .line 4074
    :cond_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4075
    .local v1, "efid":I
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSneRecordLen: EFSNE id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    const/16 v5, 0x16

    .line 4077
    .local v5, "what":I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4078
    .local v4, "result":Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->arg1:I

    .line 4079
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 4080
    .local v3, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v3, :cond_3

    .line 4081
    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 4085
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4087
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v7

    .line 4092
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    return v6

    .line 4083
    :cond_3
    return v9

    .line 4088
    :catch_0
    move-exception v0

    .line 4089
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v8, "Interrupted Exception in readType1Ef"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4085
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public getUsimAasById(II)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 3663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsimAasById by id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",pbrIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3664
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 3665
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3666
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "No PBR files"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    return-object v5

    .line 3669
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3670
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3671
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    monitor-exit v4

    .line 3672
    return-object v5

    .line 3674
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 3676
    .local v2, "numRecs":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3678
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 3679
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v4

    .line 3683
    .end local v0    # "i":I
    .end local v2    # "numRecs":I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3684
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3685
    .local v1, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 3686
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 3669
    .end local v1    # "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3689
    :cond_4
    return-object v5
.end method

.method public getUsimAasList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/AlphaTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3623
    const-string/jumbo v10, "getUsimAasList start"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3624
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3625
    .local v6, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/uicc/AlphaTag;>;"
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_5

    .line 3626
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3627
    const-string/jumbo v10, "UsimPhoneBookManager"

    const-string/jumbo v11, "No PBR files"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    return-object v6

    .line 3630
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3631
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3632
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_2

    monitor-exit v11

    .line 3633
    return-object v6

    .line 3635
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 3636
    .local v4, "numRecs":I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v10, :cond_3

    .line 3637
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3639
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 3640
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 3641
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3640
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v11

    .line 3646
    .end local v2    # "i":I
    .end local v4    # "numRecs":I
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3647
    .local v1, "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3648
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3649
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3650
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3651
    .local v5, "pbrIndex":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3652
    .local v7, "size":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v7, :cond_6

    .line 3653
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3654
    .local v9, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "aasIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",pbrIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3655
    new-instance v8, Lcom/mediatek/internal/telephony/uicc/AlphaTag;

    add-int/lit8 v10, v2, 0x1

    invoke-direct {v8, v10, v9, v5}, Lcom/mediatek/internal/telephony/uicc/AlphaTag;-><init>(ILjava/lang/String;I)V

    .line 3656
    .local v8, "tag":Lcom/mediatek/internal/telephony/uicc/AlphaTag;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3652
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3630
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v1    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "pbrIndex":I
    .end local v7    # "size":I
    .end local v8    # "tag":Lcom/mediatek/internal/telephony/uicc/AlphaTag;
    .end local v9    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 3659
    .restart local v1    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_7
    return-object v6
.end method

.method public getUsimAasMaxCount()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 3966
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "UsimPhoneBookManager getUsimAasMaxCount begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3968
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    if-gtz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3969
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3971
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 3978
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UsimPhoneBookManager getUsimAasMaxCount done: N_AAS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v4

    return v1

    .line 3972
    :catch_0
    move-exception v0

    .line 3973
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in getUsimAasMaxCount"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3967
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUsimAasMaxNameLen()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 3948
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "UsimPhoneBookManager getUsimAasMaxNameLen begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3949
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3950
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    if-gtz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3951
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3953
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 3960
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UsimPhoneBookManager getUsimAasMaxNameLen done: L_AAS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v4

    return v1

    .line 3954
    :catch_0
    move-exception v0

    .line 3955
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in getUsimAasMaxNameLen"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3949
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .locals 5
    .param p1, "nGasId"    # I

    .prologue
    .line 1845
    const/4 v0, 0x0

    .line 1846
    .local v0, "grpName":Ljava/lang/String;
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGroupById nGasId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 1848
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1849
    .local v1, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v1, :cond_0

    .line 1850
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1851
    .local v0, "grpName":Ljava/lang/String;
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsimGroupById index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1852
    const-string/jumbo v4, ", name is "

    .line 1851
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    .end local v0    # "grpName":Ljava/lang/String;
    .end local v1    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_0
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGroupById grpName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    return-object v0
.end method

.method public getUsimGroups()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1831
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager getUsimGroups "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1833
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 1838
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->queryUpbCapablityAndWait()V

    .line 1839
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGasListAndWait()V

    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    return-object v0

    .line 1832
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUsimGrpMaxCount()I
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 2408
    const/4 v2, -0x1

    .line 2410
    .local v2, "ret":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGrpMaxCount begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 2413
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 2412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2416
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2417
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2419
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    .line 2426
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v3, v6

    .line 2427
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager getUsimGrpMaxCount done: N_Gas is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    return v2

    .line 2420
    :catch_0
    move-exception v0

    .line 2421
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in getUsimGrpMaxCount"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2411
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getUsimGrpMaxNameLen()I
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 2383
    const/4 v2, -0x1

    .line 2385
    .local v2, "ret":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGrpMaxNameLen begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2387
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 2388
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 2387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2391
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2392
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2394
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    .line 2400
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v3, v6

    .line 2401
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager getUsimGrpMaxNameLen done: L_Gas is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2402
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v6

    .line 2401
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    return v2

    .line 2395
    :catch_0
    move-exception v0

    .line 2396
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in getUsimGrpMaxNameLen"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2386
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1001
    const/16 v39, 0x0

    .line 1002
    .local v39, "userData":[I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v40, v0

    sparse-switch v40, :sswitch_data_0

    .line 999
    .end local v39    # "userData":[I
    :cond_0
    :goto_0
    return-void

    .line 1004
    .restart local v39    # "userData":[I
    :sswitch_0
    const-string/jumbo v40, "UsimPhoneBookManager"

    const-string/jumbo v41, "EVENT_QUERY_PHB_ADN_INFO"

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1006
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1

    .line 1007
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    .line 1008
    .local v21, "info":[I
    if-eqz v21, :cond_2

    .line 1009
    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget v41, v21, v41

    const/16 v42, 0x0

    aput v41, v40, v42

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x1

    aget v41, v21, v41

    const/16 v42, 0x1

    aput v41, v40, v42

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x2

    aget v41, v21, v41

    const/16 v42, 0x2

    aput v41, v40, v42

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x3

    aget v41, v21, v41

    const/16 v42, 0x3

    aput v41, v40, v42

    .line 1014
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "recordSize[0]="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ",recordSize[1]="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v42, v0

    const/16 v43, 0x1

    aget v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1015
    const-string/jumbo v42, "recordSize[2]="

    .line 1014
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v42, v0

    const/16 v43, 0x2

    aget v42, v42, v43

    .line 1014
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1015
    const-string/jumbo v42, ",recordSize[3]="

    .line 1014
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v42, v0

    const/16 v43, 0x3

    aget v42, v42, v43

    .line 1014
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    .end local v21    # "info":[I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1026
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "ar":Landroid/os/AsyncResult;
    :goto_2
    monitor-exit v41

    goto/16 :goto_0

    .line 1018
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    .restart local v21    # "info":[I
    :cond_2
    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    aput v41, v40, v42

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x1

    aput v41, v40, v42

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x2

    aput v41, v40, v42

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x3

    aput v41, v40, v42

    goto :goto_1

    .line 1025
    .end local v21    # "info":[I
    :catchall_0
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1030
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    const-string/jumbo v40, "UsimPhoneBookManager"

    const-string/jumbo v41, "UsimPhoneBookManager handleMessage: EVENT_PBR_LOAD_DONE"

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1032
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_3

    .line 1033
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1035
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1036
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 1035
    :catchall_1
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1040
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    const-string/jumbo v40, "Loading USIM ADN records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1041
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1042
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_7

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    move/from16 v40, v0

    if-eqz v40, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-lez v40, :cond_4

    .line 1044
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    if-eqz v40, :cond_4

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v41

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    .line 1045
    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1047
    .local v7, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1049
    invoke-static {v7}, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->checkPhbStorage(Ljava/util/ArrayList;)V

    .line 1068
    .end local v7    # "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1069
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_2

    .line 1068
    :catchall_2
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1052
    :cond_4
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    if-eqz v40, :cond_6

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    move/from16 v40, v0

    if-eqz v40, :cond_5

    .line 1057
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    .line 1056
    check-cast v40, Ljava/util/ArrayList;

    invoke-static/range {v40 .. v40}, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->checkPhbStorage(Ljava/util/ArrayList;)V

    .line 1060
    :cond_5
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM ADN records "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1062
    :cond_6
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM ADN records ar.result:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1066
    :cond_7
    const-string/jumbo v40, "Loading USIM ADN records fail."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1073
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1074
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 1075
    .local v14, "fileId":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_a

    .line 1076
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [I

    .line 1082
    .local v32, "recordSize":[I
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_9

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v40, v0

    if-nez v40, :cond_8

    .line 1084
    const-string/jumbo v40, "mAnrFileSize is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1085
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 1088
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const/16 v42, 0x2

    aget v42, v32, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "mAnrFileSize mEfTag: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, " mAnrFileSize: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .line 1089
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1094
    :goto_4
    const/16 v40, 0x0

    aget v40, v32, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 1095
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM ANR records size done mAnrRecordSize:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1102
    .end local v32    # "recordSize":[I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1103
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_2

    .line 1102
    :catchall_3
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1091
    .restart local v32    # "recordSize":[I
    :catch_0
    move-exception v10

    .line 1092
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "mAnrFileSize Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1097
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get wrong EF record size format"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1100
    .end local v32    # "recordSize":[I
    :cond_a
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get EF record size failed"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1107
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "fileId":I
    :sswitch_4
    const-string/jumbo v40, "Loading USIM ANR records done "

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1108
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1109
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_c

    .line 1110
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    .line 1111
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1112
    .local v30, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v40, v0

    if-nez v40, :cond_b

    .line 1114
    const-string/jumbo v40, "mAnrFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1115
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 1118
    :cond_b
    :try_start_5
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "mAnrFileList mEfTag: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v40, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1125
    .end local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1126
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_2

    .line 1125
    :catchall_4
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1120
    .restart local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :catch_1
    move-exception v10

    .line 1121
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 1131
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :sswitch_5
    const-string/jumbo v40, "Loading USIM ANR record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1132
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1133
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    .end local v39    # "userData":[I
    check-cast v39, [I

    .line 1134
    .local v39, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1136
    .local v34, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v34, :cond_d

    .line 1137
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v20

    .line 1139
    .local v20, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v20, :cond_d

    .line 1140
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM ANR record done result is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1141
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    .line 1140
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1142
    const/16 v40, 0x0

    aget v40, v39, v40

    const/16 v41, 0x1

    aget v41, v39, v41

    const/16 v42, 0x2

    aget v42, v39, v42

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithAnrByIndex(III[B)V

    .line 1146
    .end local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1147
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "haman, mReadingAnrNum when load done after minus: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", mNeedNotify:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    if-nez v40, :cond_e

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-eqz v40, :cond_e

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1152
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit v41

    .line 1156
    :cond_e
    const-string/jumbo v40, "Loading USIM ANR record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1151
    :catchall_5
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1159
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v34    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v39, "userData":[I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1160
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1161
    .local v25, "pbrIndex":I
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM IAP records done "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1162
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_10

    .line 1163
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-nez v40, :cond_f

    .line 1165
    const-string/jumbo v40, "IapFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1166
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 1169
    :cond_f
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move/from16 v1, v25

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1175
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1176
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto/16 :goto_2

    .line 1175
    :catchall_6
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1170
    :catch_2
    move-exception v10

    .line 1171
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 1181
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v25    # "pbrIndex":I
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 1182
    .local v24, "pbr":I
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM Email records done "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1183
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1184
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_11

    .line 1185
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1186
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1187
    .restart local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1189
    .end local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-nez v40, :cond_12

    .line 1190
    const-string/jumbo v40, "mEmailFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1191
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 1194
    :cond_12
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move/from16 v1, v24

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3

    .line 1198
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1199
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto/16 :goto_2

    .line 1198
    :catchall_7
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1195
    :catch_3
    move-exception v10

    .line 1196
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 1203
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v24    # "pbr":I
    :sswitch_8
    const-string/jumbo v40, "Loading USIM Email length done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1204
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1205
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_14

    .line 1206
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [I

    .line 1207
    .restart local v32    # "recordSize":[I
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_13

    .line 1208
    const/16 v40, 0x2

    aget v40, v32, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 1209
    const/16 v40, 0x0

    aget v40, v32, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 1210
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Email filesize="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "recordSize="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    .end local v32    # "recordSize":[I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1219
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto/16 :goto_2

    .line 1218
    :catchall_8
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1212
    .restart local v32    # "recordSize":[I
    :cond_13
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get wrong EFEMAIL record size format"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1215
    .end local v32    # "recordSize":[I
    :cond_14
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get EF record size failed"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1223
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1224
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    .end local v39    # "userData":[I
    check-cast v39, [I

    .line 1225
    .local v39, "userData":[I
    iget-object v12, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1226
    .local v12, "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM email record done email index:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x0

    aget v41, v39, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", adn i:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    aget v41, v39, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1227
    if-eqz v12, :cond_15

    .line 1228
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v20

    .line 1230
    .restart local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v20, :cond_15

    .line 1231
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM Email record done result is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1232
    iget-object v0, v12, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    .line 1231
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1233
    const/16 v40, 0x0

    aget v40, v39, v40

    const/16 v41, 0x1

    aget v41, v39, v41

    iget-object v0, v12, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithEmailByIndex(II[B)V

    .line 1237
    .end local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1238
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "haman, mReadingEmailNum when load done after minus: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", mNeedNotify:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    if-nez v40, :cond_16

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-eqz v40, :cond_16

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1243
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    monitor-exit v41

    .line 1247
    :cond_16
    const-string/jumbo v40, "Loading USIM Email record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1242
    :catchall_9
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1250
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v39, "userData":[I
    :sswitch_a
    const-string/jumbo v40, "Updating USIM Email records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1251
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1252
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_0

    .line 1253
    const-string/jumbo v40, "Updating USIM Email records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1257
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    const-string/jumbo v40, "Updating USIM IAP records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1258
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1259
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_0

    .line 1260
    const-string/jumbo v40, "Updating USIM IAP records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1264
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    const-string/jumbo v40, "Updating USIM ANR records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1266
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1268
    .local v33, "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v33, :cond_0

    .line 1269
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v13

    .line 1271
    .local v13, "exception":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v13, :cond_0

    .line 1272
    const-string/jumbo v40, "Updating USIM ANR records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1277
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "exception":Lcom/android/internal/telephony/uicc/IccException;
    .end local v33    # "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_d
    const-string/jumbo v40, "Load USIM GRP record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1279
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    .end local v39    # "userData":[I
    check-cast v39, [I

    .line 1281
    .local v39, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    if-eqz v40, :cond_18

    .line 1282
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    .line 1284
    .local v17, "grpIds":[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    if-lez v40, :cond_18

    .line 1285
    const-string/jumbo v40, "Load USIM GRP record done result is "

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1286
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_a
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v18

    move/from16 v1, v40

    if-ge v0, v1, :cond_17

    .line 1287
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    aget v41, v17, v18

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1286
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 1289
    :cond_17
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Load USIM GRP record done result is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1290
    const/16 v40, 0x0

    aget v40, v39, v40

    const/16 v41, 0x1

    aget v41, v39, v41

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 1294
    .end local v17    # "grpIds":[I
    .end local v18    # "i":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1295
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "haman, mReadingGrpNum when load done after minus: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",mNeedNotify:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    if-nez v40, :cond_19

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-eqz v40, :cond_19

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1300
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    monitor-exit v41

    .line 1304
    :cond_19
    const-string/jumbo v40, "Loading USIM Grp record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1299
    :catchall_a
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1307
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .local v39, "userData":[I
    :sswitch_e
    const-string/jumbo v40, "Query UPB capability done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1308
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1309
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1a

    .line 1310
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, [I

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 1313
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1314
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    goto/16 :goto_2

    .line 1313
    :catchall_b
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1318
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    const-string/jumbo v40, "Load UPB GAS done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1319
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1320
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1b

    .line 1321
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Ljava/lang/String;

    .line 1322
    .local v16, "gasList":[Ljava/lang/String;
    if-eqz v16, :cond_1b

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v40, v0

    if-lez v40, :cond_1b

    .line 1323
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 1324
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_b
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v18

    move/from16 v1, v40

    if-ge v0, v1, :cond_1b

    .line 1326
    aget-object v40, v16, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->decodeGas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1327
    .local v15, "gas":Ljava/lang/String;
    new-instance v38, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    add-int/lit8 v40, v18, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-direct {v0, v1, v15}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;-><init>(ILjava/lang/String;)V

    .line 1328
    .local v38, "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Load UPB GAS done i is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", gas is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1324
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 1333
    .end local v15    # "gas":Ljava/lang/String;
    .end local v16    # "gasList":[Ljava/lang/String;
    .end local v18    # "i":I
    .end local v38    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1334
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    goto/16 :goto_2

    .line 1333
    :catchall_c
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1338
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    const-string/jumbo v40, "update UPB GAS done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1339
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1340
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1c

    .line 1341
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1353
    :goto_c
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "update UPB GAS done mResult is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1355
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    goto/16 :goto_2

    .line 1354
    :catchall_d
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1343
    :cond_1c
    iget-object v9, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/android/internal/telephony/CommandException;

    .line 1345
    .local v9, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v40

    sget-object v41, Lcom/android/internal/telephony/CommandException$Error;->TEXT_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_1d

    .line 1346
    const/16 v40, -0xa

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_c

    .line 1347
    :cond_1d
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v40

    sget-object v41, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_1e

    .line 1348
    const/16 v40, -0x14

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_c

    .line 1350
    :cond_1e
    const/16 v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_c

    .line 1359
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "e":Lcom/android/internal/telephony/CommandException;
    :sswitch_11
    const-string/jumbo v40, "update UPB GRP done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1360
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1361
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1f

    .line 1362
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1366
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1367
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    goto/16 :goto_2

    .line 1366
    :catchall_e
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1364
    :cond_1f
    const/16 v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_d

    .line 1371
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1372
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    .line 1373
    .local v26, "pbrIndexAAS":I
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "EVENT_AAS_LOAD_DONE done pbr "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1374
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_20

    .line 1375
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    .line 1377
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_23

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v35

    .line 1379
    .local v35, "size":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    .local v22, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_e
    move/from16 v0, v18

    move/from16 v1, v35

    if-ge v0, v1, :cond_22

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1382
    .local v5, "aas":[B
    if-nez v5, :cond_21

    .line 1383
    const/16 v40, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    :goto_f
    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    .line 1386
    :cond_21
    array-length v0, v5

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v41

    move/from16 v1, v40

    invoke-static {v5, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 1387
    .local v6, "aasAlphaTag":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "AAS["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "]="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",byte="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1388
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    .line 1387
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1389
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1391
    .end local v5    # "aas":[B
    .end local v6    # "aasAlphaTag":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    .end local v18    # "i":I
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v35    # "size":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1395
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    goto/16 :goto_2

    .line 1394
    :catchall_f
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1399
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "pbrIndexAAS":I
    :sswitch_13
    const-string/jumbo v40, "EVENT_AAS_UPDATE_DONE done."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1401
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    goto/16 :goto_2

    .line 1400
    :catchall_10
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1405
    :sswitch_14
    const-string/jumbo v40, "Loading record length done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1406
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1407
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1408
    .local v11, "efTag":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_26

    .line 1409
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [I

    .line 1410
    .restart local v32    # "recordSize":[I
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_25

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v40, v0

    if-nez v40, :cond_24

    .line 1412
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    .line 1414
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    .end local v32    # "recordSize":[I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1423
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_11

    monitor-exit v41

    .line 1425
    const-string/jumbo v40, "EVENT_GET_RECORDS_SIZE_DON end mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1416
    .restart local v32    # "recordSize":[I
    :cond_25
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get wrong record size format"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1419
    .end local v32    # "recordSize":[I
    :cond_26
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get EF record size failed"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1422
    :catchall_11
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1428
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "efTag":I
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1429
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 1430
    .local v27, "pbrIndexExt1":I
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "EVENT_EXT1_LOAD_DONE done pbr "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1431
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_28

    .line 1432
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/util/ArrayList;

    .line 1434
    .local v31, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v31, :cond_28

    .line 1435
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "EVENT_EXT1_LOAD_DONE done size "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v40, v0

    if-nez v40, :cond_27

    .line 1437
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    .line 1439
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    .end local v31    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1443
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    goto/16 :goto_2

    .line 1442
    :catchall_12
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1447
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "pbrIndexExt1":I
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1448
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    .line 1449
    .local v37, "tag":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_2a

    .line 1450
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [I

    .line 1456
    .restart local v32    # "recordSize":[I
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_29

    .line 1457
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM records size done tag:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "file size "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1458
    const/16 v41, 0x2

    aget v41, v32, v41

    .line 1457
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1458
    const-string/jumbo v41, ", record size "

    .line 1457
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1458
    const/16 v41, 0x0

    aget v41, v32, v41

    .line 1457
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1459
    packed-switch v37, :pswitch_data_0

    .line 1465
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "unsupported tag when loading record size "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    .end local v32    # "recordSize":[I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1479
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_13

    goto/16 :goto_2

    .line 1478
    :catchall_13
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1461
    .restart local v32    # "recordSize":[I
    :pswitch_0
    const/16 v40, 0x2

    aget v40, v32, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 1462
    const/16 v40, 0x0

    aget v40, v32, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    goto :goto_11

    .line 1470
    :cond_29
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get wrong EF record size format tag:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ",exception"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1471
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    .line 1470
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1475
    .end local v32    # "recordSize":[I
    :cond_2a
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "get EF record size failed"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1483
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v37    # "tag":I
    :sswitch_17
    const-string/jumbo v40, "Loading USIM SNE record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1484
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1485
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    .end local v39    # "userData":[I
    check-cast v39, [I

    .line 1486
    .local v39, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1488
    .local v28, "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v28, :cond_2b

    .line 1489
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v20

    .line 1491
    .restart local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v20, :cond_2b

    .line 1492
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM SNE record done result is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1493
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    .line 1492
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1494
    const/16 v40, 0x0

    aget v40, v39, v40

    const/16 v41, 0x1

    aget v41, v39, v41

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithSneByIndex(II[B)V

    .line 1498
    .end local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1499
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "haman, mReadingSneNum when load done after minus: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",mNeedNotify:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    if-nez v40, :cond_2c

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-eqz v40, :cond_2c

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1504
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_14

    monitor-exit v41

    .line 1508
    :cond_2c
    const-string/jumbo v40, "Loading USIM SNE record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1503
    :catchall_14
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1511
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v39, "userData":[I
    :sswitch_18
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v36, v0

    .line 1512
    .local v36, "snePbr":I
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM SNE records done "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1513
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1514
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    const/16 v23, 0x0

    .line 1515
    .local v23, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_2d

    .line 1516
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v23, Ljava/util/ArrayList;

    .line 1517
    .local v23, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1518
    .restart local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1520
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v30    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-nez v40, :cond_2e

    .line 1521
    const-string/jumbo v40, "mSneFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1522
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 1525
    :cond_2e
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_4

    .line 1529
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1530
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_15

    goto/16 :goto_2

    .line 1529
    :catchall_15
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1526
    :catch_4
    move-exception v10

    .line 1527
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_12

    .line 1534
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v36    # "snePbr":I
    :sswitch_19
    const-string/jumbo v40, "update UPB SNE done"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1535
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1536
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-eqz v40, :cond_2f

    .line 1537
    const-string/jumbo v40, "UsimPhoneBookManager"

    const-string/jumbo v41, "EVENT_SNE_UPDATE_DONE exception"

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-static/range {v40 .. v42}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1539
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1540
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_16

    goto/16 :goto_2

    .line 1539
    :catchall_16
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1547
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1548
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    .end local v39    # "userData":[I
    check-cast v39, [I

    .line 1549
    .local v39, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1550
    .local v29, "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM Iap record done pbr:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x0

    aget v41, v39, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", i:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    aget v41, v39, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1551
    if-eqz v29, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_30

    .line 1552
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v20

    .line 1554
    .restart local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v20, :cond_30

    .line 1555
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Loading USIM Iap record done result is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1556
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    .line 1555
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1561
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget v41, v39, v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 1563
    .local v19, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-lez v40, :cond_32

    .line 1564
    const/16 v40, 0x1

    aget v40, v39, v40

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v19

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_5

    .line 1574
    .end local v19    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_30
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1575
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "haman, mReadingIapNum when load done after minus: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",mNeedNotify "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v40

    if-nez v40, :cond_0

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v40

    if-eqz v40, :cond_31

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1579
    const-string/jumbo v40, "EVENT_IAP_RECORD_LOAD_DONE before mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1581
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_17

    monitor-exit v41

    .line 1584
    :cond_31
    const-string/jumbo v40, "EVENT_IAP_RECORD_LOAD_DONE end mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1566
    .restart local v19    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_32
    :try_start_1e
    const-string/jumbo v40, "UsimPhoneBookManager"

    const-string/jumbo v41, "Warning: IAP size is 0"

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_5

    goto/16 :goto_13

    .line 1568
    .end local v19    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_5
    move-exception v10

    .line 1569
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v40, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1580
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v20    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :catchall_17
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1588
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v39, "userData":[I
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1590
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_33

    .line 1591
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/internal/telephony/EFResponseData;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 1596
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1597
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notify()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_18

    goto/16 :goto_2

    .line 1596
    :catchall_18
    move-exception v40

    monitor-exit v41

    throw v40

    .line 1593
    :cond_33
    const-string/jumbo v40, "UsimPhoneBookManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Select EF file fail"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1002
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_4
        0x7 -> :sswitch_f
        0x8 -> :sswitch_12
        0x9 -> :sswitch_c
        0xa -> :sswitch_11
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_5
        0xe -> :sswitch_3
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_10
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x15 -> :sswitch_13
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_0
        0x3e8 -> :sswitch_14
        0x3e9 -> :sswitch_15
    .end sparse-switch

    .line 1459
    :pswitch_data_0
    .packed-switch 0xc3
        :pswitch_0
    .end packed-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 6
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 2361
    const/4 v0, -0x1

    .line 2362
    .local v0, "grpId":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager hasExistGroup grpName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    if-nez p1, :cond_0

    .line 2364
    return v0

    .line 2366
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2367
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2368
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 2369
    .local v2, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2370
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUsimGroupById index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2371
    const-string/jumbo v5, ", name is "

    .line 2370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v0

    .line 2378
    .end local v1    # "i":I
    .end local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager hasExistGroup grpId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    return v0

    .line 2367
    .restart local v1    # "i":I
    .restart local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasSne()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4045
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4046
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 4047
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 4048
    :cond_0
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "hasSne No PBR files"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 4049
    return v4

    :cond_1
    monitor-exit v2

    .line 4052
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4053
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4054
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "hasSne:  true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    const/4 v1, 0x1

    return v1

    .line 4045
    .end local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 4057
    .restart local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "hasSne:  false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    return v4
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .locals 25
    .param p1, "aasName"    # Ljava/lang/String;

    .prologue
    .line 3758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertUsimAas "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3759
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 3760
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 3762
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v17

    .line 3763
    .local v17, "limit":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    .line 3764
    .local v16, "len":I
    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 3765
    const/4 v2, 0x0

    return v2

    .line 3767
    :cond_2
    const/4 v15, -0x1

    .line 3768
    .local v15, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 3769
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v2, :cond_5

    .line 3770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3771
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "insertUsimAas No PBR "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3772
    const/4 v2, -0x1

    monitor-exit v24

    return v2

    .line 3774
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_4

    .line 3776
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "insertUsimAas No PBR files"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3777
    const/4 v2, -0x1

    monitor-exit v24

    return v2

    .line 3779
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v20

    .line 3780
    .local v20, "numRecs":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3781
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 3782
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 3781
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3786
    .end local v14    # "i":I
    .end local v20    # "numRecs":I
    :cond_5
    const/16 v21, -0x1

    .line 3787
    .local v21, "pbrIndex":I
    const/4 v5, 0x0

    .line 3788
    .local v5, "aasIndex":I
    const/4 v13, 0x0

    .line 3789
    .local v13, "found":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 3791
    .local v12, "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_6
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v13, :cond_8

    .line 3806
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertUsimAas pbrIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",aasIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3807
    if-nez v13, :cond_b

    .line 3809
    const/4 v2, -0x2

    monitor-exit v24

    return v2

    .line 3792
    :cond_8
    :try_start_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3793
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 3794
    .local v19, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 3796
    .local v22, "size":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v14, v0, :cond_6

    .line 3797
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 3798
    .local v23, "value":Ljava/lang/String;
    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 3799
    :cond_9
    const/4 v13, 0x1

    .line 3800
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 3801
    add-int/lit8 v5, v14, 0x1

    .line 3802
    goto :goto_1

    .line 3796
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 3811
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v14    # "i":I
    .end local v19    # "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "size":I
    .end local v23    # "value":Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3812
    .local v6, "temp":Ljava/lang/String;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 3813
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3815
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3819
    :goto_3
    :try_start_5
    iget-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 3820
    .local v9, "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertUsimAas UPB_EF_AAS: ar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3821
    if-eqz v9, :cond_c

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 3822
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 3823
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v18, :cond_d

    .line 3824
    add-int/lit8 v2, v5, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3825
    const-string/jumbo v2, "insertUsimAas update mAasForAnrRec done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    monitor-exit v24

    .line 3827
    return v5

    .line 3816
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 3817
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in insertUsimAas"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 3768
    .end local v5    # "aasIndex":I
    .end local v6    # "temp":Ljava/lang/String;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v13    # "found":Z
    .end local v21    # "pbrIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v24

    throw v2

    .line 3829
    .restart local v5    # "aasIndex":I
    .restart local v6    # "temp":Ljava/lang/String;
    .restart local v8    # "msg":Landroid/os/Message;
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    .restart local v12    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .restart local v13    # "found":Z
    .restart local v21    # "pbrIndex":I
    :cond_e
    :try_start_7
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertUsimAas exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3830
    const/4 v2, -0x1

    monitor-exit v24

    return v2
.end method

.method public declared-synchronized insertUsimGroup(Ljava/lang/String;)I
    .locals 11
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1932
    const/4 v3, -0x1

    .line 1933
    .local v3, "index":I
    :try_start_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UsimPhoneBookManager insertUsimGroup grpName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1935
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1936
    :cond_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager insertUsimGroup fail "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 1972
    return v3

    .line 1938
    :cond_1
    const/4 v8, 0x0

    .line 1939
    .local v8, "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    const/4 v9, 0x0

    .line 1940
    .local v9, "i":I
    const/4 v9, 0x0

    .end local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 1941
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1942
    .local v8, "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1943
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v3

    .line 1944
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UsimPhoneBookManager insertUsimGroup index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    .end local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_2
    if-gez v3, :cond_4

    .line 1949
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager insertUsimGroup fail: gas file is full."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1950
    const/16 v0, -0x14

    monitor-exit p0

    .line 1951
    return v0

    .line 1940
    .restart local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1953
    .end local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_4
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1954
    .local v4, "temp":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1955
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1954
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1957
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1962
    :goto_2
    :try_start_7
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-gez v0, :cond_5

    .line 1963
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "result is negative. insertUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return v0

    .line 1958
    :catch_0
    move-exception v7

    .line 1959
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "Interrupted Exception in insertUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 1934
    .end local v4    # "temp":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "i":I
    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit v10

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1966
    .restart local v4    # "temp":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_5
    :try_start_b
    invoke-virtual {v8, p1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 336
    return-void
.end method

.method public isAdnAccessible()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4565
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_1

    .line 4566
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4567
    const/16 v3, 0x1b

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4569
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v5, 0x6f3a

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->selectEFFile(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4572
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 4578
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    if-eqz v3, :cond_1

    .line 4579
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    invoke-virtual {v3}, Lcom/android/internal/telephony/EFResponseData;->getFileStatus()I

    move-result v1

    .line 4588
    .local v1, "fs":I
    and-int/lit8 v3, v1, 0x5

    if-lez v3, :cond_0

    .line 4589
    return v7

    .line 4573
    .end local v1    # "fs":I
    :catch_0
    move-exception v0

    .line 4574
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readType1Ef"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4566
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4591
    .restart local v1    # "fs":I
    .restart local v2    # "response":Landroid/os/Message;
    :cond_0
    return v6

    .line 4595
    .end local v1    # "fs":I
    .end local v2    # "response":Landroid/os/Message;
    :cond_1
    return v7
.end method

.method public isAnrCapacityFree(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I

    .prologue
    const/4 v8, 0x0

    .line 2440
    add-int/lit8 v5, p2, -0x1

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v3, v5, v6

    .line 2441
    .local v3, "pbrRecNum":I
    add-int/lit8 v5, p2, -0x1

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v0, v5, v6

    .line 2444
    .local v0, "anrRecNum":I
    if-eqz p1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2467
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 2444
    :cond_1
    if-lez p3, :cond_0

    .line 2446
    :try_start_0
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree anr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2448
    :cond_2
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "isAnrCapacityFree: mAnrFileSize is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    return v8

    .line 2452
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    mul-int/lit8 v6, v3, 0x3

    add-int/2addr v6, p3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2453
    .local v4, "size":I
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    add-int/lit8 v5, v0, 0x1

    if-ge v4, v5, :cond_0

    .line 2456
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree: anrRecNum out of size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2457
    return v8

    .line 2462
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 2463
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    return v8

    .line 2459
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2460
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "isAnrCapacityFree Index out of bounds."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    return v8
.end method

.method public isUsimPhbEfAndNeedReset(I)Z
    .locals 8
    .param p1, "fileId"    # I

    .prologue
    const/16 v7, 0xcb

    const/4 v6, 0x0

    .line 4603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsimPhbEfAndNeedReset, fileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4605
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 4606
    :cond_0
    const-string/jumbo v4, "isUsimPhbEfAndNeedReset, No PBR files"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4607
    return v6

    .line 4605
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 4610
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 4611
    .local v3, "numRecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 4612
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4613
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v2, 0xc0

    .local v2, "j":I
    :goto_1
    if-gt v2, v7, :cond_5

    .line 4614
    const/16 v4, 0xc5

    if-eq v2, v4, :cond_2

    const/16 v4, 0xc9

    if-ne v2, v4, :cond_4

    .line 4616
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsimPhbEfAndNeedReset, not reset EF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4613
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4614
    :cond_4
    if-eq v2, v7, :cond_2

    .line 4618
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 4619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsimPhbEfAndNeedReset, return true with EF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4620
    const/4 v4, 0x1

    return v4

    .line 4611
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4625
    .end local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "j":I
    :cond_6
    const-string/jumbo v4, "isUsimPhbEfAndNeedReset, return false."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4626
    return v6
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 253
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 254
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 255
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPhoneBookRecords.size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    const-string/jumbo v7, ",mRefreshCache "

    .line 255
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 255
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v4, :cond_0

    .line 258
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 261
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 264
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v5

    .line 265
    return-object v6

    .line 269
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 270
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 273
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    .line 274
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 277
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_5

    .line 278
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 279
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v6, 0x6f3a

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 281
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xca

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 282
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xca

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readRecordSize(I)V

    .line 284
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 285
    .local v0, "adnEf":I
    if-lez v0, :cond_7

    .line 286
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v3

    .line 287
    .local v3, "size":[I
    if-eqz v3, :cond_7

    array-length v4, v3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_7

    .line 288
    const/4 v4, 0x2

    aget v4, v3, v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 291
    .end local v3    # "size":[I
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecordSize()V

    .line 292
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 295
    .local v2, "numRecs":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v4, v4, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v4, :cond_8

    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_9

    .line 298
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUicc: numRecs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWaitForUICC(I)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_8
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 305
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 306
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-object v4

    .line 308
    :cond_a
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v4, :cond_b

    .line 309
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 311
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 312
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_c

    .line 313
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 314
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readSneFileAndWait(I)V

    .line 315
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 316
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 318
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGrpIdsAndWait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    .line 321
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v4

    .line 253
    .end local v0    # "adnEf":I
    .end local v1    # "i":I
    .end local v2    # "numRecs":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public loadPBRFiles()V
    .locals 2

    .prologue
    .line 3984
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3985
    return-void

    .line 3987
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3990
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_1

    .line 3991
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 3994
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_2

    .line 3995
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 3983
    return-void

    .line 3987
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .locals 19
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .prologue
    .line 2194
    const/4 v14, 0x0

    .line 2196
    .local v14, "ret":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v15, :cond_0

    if-gtz p1, :cond_1

    .line 2197
    :cond_0
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v16, "moveContactFromGroupsToGroups no records or invalid index."

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const/4 v15, 0x0

    return v15

    .line 2196
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v0, p1

    if-gt v0, v15, :cond_0

    .line 2201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2202
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v17, p1, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2203
    .local v13, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v13, :cond_12

    .line 2206
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v5, v15, v17

    .line 2207
    .local v5, "grpCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    move-object/from16 v17, v0

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x5

    aget v9, v15, v17

    .line 2208
    .local v9, "grpMaxCount":I
    :goto_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v8

    .line 2210
    .local v8, "grpIds":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " moveContactFromGroupsToGroups the adn index is "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2211
    const-string/jumbo v18, " original grpIds is "

    .line 2210
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2212
    const-string/jumbo v18, ", fromGrpIdList: "

    .line 2210
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2212
    if-nez p2, :cond_3

    const-string/jumbo v15, "null"

    .line 2210
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2213
    const-string/jumbo v18, ", toGrpIdList: "

    .line 2210
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2213
    if-nez p3, :cond_4

    const-string/jumbo v15, "null"

    .line 2210
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    new-array v6, v5, [I

    .line 2217
    .local v6, "grpIdIntArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v5, :cond_5

    .line 2218
    const/4 v15, 0x0

    aput v15, v6, v10

    .line 2217
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2207
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v9, v15, v17

    .restart local v9    # "grpMaxCount":I
    goto :goto_0

    .restart local v8    # "grpIds":Ljava/lang/String;
    :cond_3
    move-object/from16 v15, p2

    .line 2212
    goto :goto_1

    :cond_4
    move-object/from16 v15, p3

    .line 2213
    goto :goto_2

    .line 2222
    .restart local v6    # "grpIdIntArray":[I
    .restart local v10    # "i":I
    :cond_5
    if-eqz v8, :cond_6

    .line 2223
    const-string/jumbo v15, ","

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2224
    .local v7, "grpIdStrArray":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_6

    .line 2225
    aget-object v15, v7, v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aput v15, v6, v10

    .line 2224
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2230
    .end local v7    # "grpIdStrArray":[Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_9

    .line 2231
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p2

    array-length v15, v0

    if-ge v10, v15, :cond_9

    .line 2232
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_6
    if-ge v11, v9, :cond_8

    .line 2233
    aget v15, v6, v11

    aget v17, p2, v10

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    .line 2234
    const/4 v15, 0x0

    aput v15, v6, v11

    .line 2232
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 2231
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2241
    .end local v11    # "j":I
    :cond_9
    if-eqz p3, :cond_11

    .line 2242
    const/4 v10, 0x0

    :goto_7
    move-object/from16 v0, p3

    array-length v15, v0

    if-ge v10, v15, :cond_11

    .line 2243
    const/4 v2, 0x0

    .line 2244
    .local v2, "bEmpty":Z
    const/4 v3, 0x0

    .line 2247
    .local v3, "bExist":Z
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_8
    if-ge v12, v9, :cond_a

    .line 2248
    aget v15, v6, v12

    aget v17, p3, v10

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 2249
    const/4 v3, 0x1

    .line 2254
    :cond_a
    if-eqz v3, :cond_d

    .line 2255
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v17, "moveContactFromGroupsToGroups the adn is already in the group."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 2247
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 2260
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_9
    if-ge v11, v9, :cond_f

    .line 2261
    aget v15, v6, v11

    if-eqz v15, :cond_e

    aget v15, v6, v11

    const/16 v17, 0xff

    move/from16 v0, v17

    if-ne v15, v0, :cond_10

    .line 2262
    :cond_e
    const/4 v2, 0x1

    .line 2263
    aget v15, p3, v10

    aput v15, v6, v11

    .line 2268
    :cond_f
    if-nez v2, :cond_b

    .line 2269
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v17, "moveContactFromGroupsToGroups no empty to add."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2270
    const/4 v15, 0x0

    monitor-exit v16

    return v15

    .line 2260
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 2275
    .end local v2    # "bEmpty":Z
    .end local v3    # "bExist":Z
    .end local v11    # "j":I
    .end local v12    # "k":I
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2276
    const/16 v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 2275
    move/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v15, v0, v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2278
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2283
    :goto_a
    :try_start_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v15, :cond_12

    .line 2284
    const/4 v14, 0x1

    .line 2285
    add-int/lit8 v15, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2286
    const-string/jumbo v15, "UsimPhoneBookManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " updateContactToGroups the adn index is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2287
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v18

    .line 2286
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v5    # "grpCount":I
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    :cond_12
    monitor-exit v16

    .line 2293
    return v14

    .line 2279
    .restart local v5    # "grpCount":I
    .restart local v6    # "grpIdIntArray":[I
    .restart local v8    # "grpIds":Ljava/lang/String;
    .restart local v9    # "grpMaxCount":I
    .restart local v10    # "i":I
    :catch_0
    move-exception v4

    .line 2280
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v17, "Interrupted Exception in updateContactToGroups"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    .line 2201
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method parseType1EmailFile(I)V
    .locals 8
    .param p1, "numRecs"    # I

    .prologue
    .line 889
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 890
    const/4 v3, 0x0

    .line 892
    .local v3, "emailRec":[B
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 893
    return-void

    .line 896
    :cond_0
    const/4 v4, 0x0

    .end local v3    # "emailRec":[B
    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_2

    .line 898
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    .local v3, "emailRec":[B
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v3, v6

    .line 905
    .local v0, "adnRecNum":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 896
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 899
    .end local v0    # "adnRecNum":I
    .end local v3    # "emailRec":[B
    :catch_0
    move-exception v1

    .line 900
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v7, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void

    .line 909
    .restart local v0    # "adnRecNum":I
    .restart local v3    # "emailRec":[B
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 911
    .local v2, "email":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 916
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 917
    .local v5, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_4

    .line 918
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .restart local v5    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public readEFLinearRecordSize(I)[I
    .locals 6
    .param p1, "fileId"    # I

    .prologue
    .line 4460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readEFLinearRecordSize fileid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4461
    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4462
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 4463
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4464
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4466
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4470
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 4471
    :goto_1
    if-eqz v2, :cond_0

    .line 4472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readEFLinearRecordSize fileid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",len:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",total:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4473
    const/4 v5, 0x1

    aget v5, v2, v5

    .line 4472
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4473
    const-string/jumbo v5, ",count:"

    .line 4472
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4473
    const/4 v5, 0x2

    aget v5, v2, v5

    .line 4472
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v4

    .line 4476
    return-object v2

    .line 4467
    :catch_0
    move-exception v0

    .line 4468
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readRecordSize"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4463
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4470
    :cond_1
    const/4 v2, 0x0

    .local v2, "recordSize":[I
    goto :goto_1
.end method

.method readRecordSize(I)V
    .locals 4
    .param p1, "fileId"    # I

    .prologue
    .line 946
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    .line 945
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in readRecordSize"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 946
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public declared-synchronized removeContactFromGroup(II)Z
    .locals 15
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    monitor-enter p0

    .line 2087
    const/4 v10, 0x0

    .line 2088
    .local v10, "ret":Z
    :try_start_0
    const-string/jumbo v11, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "UsimPhoneBookManager removeContactFromGroup adnIndex is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2089
    const-string/jumbo v13, " to grp "

    .line 2088
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    if-gtz p1, :cond_1

    .line 2091
    :cond_0
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v12, "UsimPhoneBookManager removeContactFromGroup no records or invalid index."

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2092
    const/4 v11, 0x0

    monitor-exit p0

    return v11

    .line 2090
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v0, p1

    if-gt v0, v11, :cond_0

    .line 2094
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2097
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v13, p1, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2104
    .local v9, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v9, :cond_5

    .line 2105
    :try_start_3
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v6

    .line 2106
    .local v6, "grpList":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 2107
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v13, " the adn is not in any group. "

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2108
    const/4 v11, 0x0

    monitor-exit p0

    return v11

    .line 2098
    .end local v6    # "grpList":Ljava/lang/String;
    .end local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v2

    .line 2099
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_5
    const-string/jumbo v11, "UsimPhoneBookManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "UsimPhoneBookManager removeContactFromGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2100
    iget-object v14, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2099
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2100
    const-string/jumbo v14, "index is "

    .line 2099
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2100
    add-int/lit8 v14, p1, -0x1

    .line 2099
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2101
    const/4 v11, 0x0

    monitor-exit p0

    return v11

    .line 2110
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "grpList":Ljava/lang/String;
    .restart local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_7
    const-string/jumbo v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2111
    .local v5, "grpIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2112
    .local v1, "bExist":Z
    const/4 v8, -0x1

    .line 2113
    .local v8, "nOrder":I
    array-length v11, v5

    new-array v4, v11, [I

    .line 2114
    .local v4, "grpIdArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v11, v5

    if-ge v7, v11, :cond_4

    .line 2115
    aget-object v11, v5, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v4, v7

    .line 2116
    aget v11, v4, v7

    move/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 2117
    const/4 v1, 0x1

    .line 2118
    move v8, v7

    .line 2119
    const-string/jumbo v11, "UsimPhoneBookManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " removeContactFromGroup the adn is in the group. i is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2123
    :cond_4
    if-eqz v1, :cond_6

    if-ltz v8, :cond_6

    .line 2124
    const/4 v11, 0x0

    aput v11, v4, v8

    .line 2125
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2126
    const/16 v13, 0xa

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 2125
    move/from16 v0, p1

    invoke-interface {v11, v0, v4, v13}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2128
    :try_start_8
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2132
    :goto_1
    :try_start_9
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v11, :cond_5

    .line 2133
    const/4 v10, 0x1

    .line 2134
    add-int/lit8 v11, p1, -0x1

    move/from16 v0, p1

    invoke-direct {p0, v11, v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2135
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v1    # "bExist":Z
    .end local v4    # "grpIdArray":[I
    .end local v5    # "grpIds":[Ljava/lang/String;
    .end local v6    # "grpList":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "nOrder":I
    :cond_5
    :goto_2
    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    .line 2142
    return v10

    .line 2129
    .restart local v1    # "bExist":Z
    .restart local v4    # "grpIdArray":[I
    .restart local v5    # "grpIds":[Ljava/lang/String;
    .restart local v6    # "grpList":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "nOrder":I
    :catch_1
    move-exception v3

    .line 2130
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_b
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v13, "Interrupted Exception in removeContactFromGroup"

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 2094
    .end local v1    # "bExist":Z
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "grpIdArray":[I
    .end local v5    # "grpIds":[Ljava/lang/String;
    .end local v6    # "grpList":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "nOrder":I
    .end local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v11

    :try_start_c
    monitor-exit v12

    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    .line 2138
    .restart local v1    # "bExist":Z
    .restart local v4    # "grpIdArray":[I
    .restart local v5    # "grpIds":[Ljava/lang/String;
    .restart local v6    # "grpList":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "nOrder":I
    .restart local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    :try_start_d
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v13, " removeContactFromGroup the adn is not in the group. "

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2
.end method

.method public removeContactGroup(I)Z
    .locals 14
    .param p1, "adnIndex"    # I

    .prologue
    .line 2302
    const/4 v8, 0x0

    .line 2303
    .local v8, "ret":Z
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "UsimPhoneBookManager removeContactsGroup adnIndex is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2305
    :cond_0
    return v8

    .line 2307
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2310
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v12, p1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2317
    .local v7, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-nez v7, :cond_2

    .line 2302
    const/4 v10, 0x0

    monitor-exit v11

    .line 2318
    return v10

    .line 2311
    .end local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 2312
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "UsimPhoneBookManager removeContactGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2313
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2312
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2313
    const-string/jumbo v13, "index is "

    .line 2312
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2313
    add-int/lit8 v13, p1, -0x1

    .line 2312
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2314
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    .line 2320
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_2
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "UsimPhoneBookManager removeContactsGroup rec is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 2322
    .local v4, "grpList":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 2302
    const/4 v10, 0x0

    monitor-exit v11

    .line 2323
    return v10

    .line 2325
    :cond_3
    :try_start_3
    const-string/jumbo v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2326
    .local v3, "grpIds":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2327
    .local v5, "hasGroup":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v10, v3

    if-ge v6, v10, :cond_4

    .line 2328
    aget-object v10, v3, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2329
    .local v9, "value":I
    if-lez v9, :cond_5

    const/16 v10, 0xff

    if-ge v9, v10, :cond_5

    .line 2330
    const/4 v5, 0x1

    .line 2334
    .end local v9    # "value":I
    :cond_4
    if-eqz v5, :cond_7

    .line 2335
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x0

    new-array v12, v12, [I

    .line 2336
    const/16 v13, 0xa

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 2335
    invoke-interface {v10, p1, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2339
    :try_start_4
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2344
    :goto_1
    :try_start_5
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v10, :cond_7

    .line 2345
    const/4 v8, 0x1

    .line 2346
    array-length v10, v3

    new-array v2, v10, [I

    .line 2347
    .local v2, "grpIdArray":[I
    const/4 v6, 0x0

    :goto_2
    array-length v10, v3

    if-ge v6, v10, :cond_6

    .line 2348
    const/4 v10, 0x0

    aput v10, v2, v6

    .line 2347
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2327
    .end local v2    # "grpIdArray":[I
    .restart local v9    # "value":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2340
    .end local v9    # "value":I
    :catch_1
    move-exception v1

    .line 2341
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v10, "UsimPhoneBookManager"

    const-string/jumbo v12, "Interrupted Exception in removeContactGroup"

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2307
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "grpIds":[Ljava/lang/String;
    .end local v4    # "grpList":Ljava/lang/String;
    .end local v5    # "hasGroup":Z
    .end local v6    # "i":I
    .end local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2350
    .restart local v2    # "grpIdArray":[I
    .restart local v3    # "grpIds":[Ljava/lang/String;
    .restart local v4    # "grpList":Ljava/lang/String;
    .restart local v5    # "hasGroup":Z
    .restart local v6    # "i":I
    .restart local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    add-int/lit8 v10, p1, -0x1

    :try_start_6
    invoke-direct {p0, v10, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2351
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " removeContactGroup the adn index is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2352
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v13

    .line 2351
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v2    # "grpIdArray":[I
    :cond_7
    monitor-exit v11

    .line 2356
    return v8
.end method

.method public removeUsimAasById(II)Z
    .locals 16
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 3693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeUsimAasById by id "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v14, ",pbrIndex "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3694
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v5, :cond_3

    .line 3695
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3696
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v14, "No PBR files"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    const/4 v5, 0x1

    return v5

    .line 3699
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3700
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3701
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 3702
    const/4 v5, 0x1

    monitor-exit v14

    return v5

    .line 3704
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v13

    .line 3706
    .local v13, "numRecs":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3707
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v13, :cond_2

    .line 3708
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3707
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v14

    .line 3712
    .end local v10    # "i":I
    .end local v13    # "numRecs":I
    :cond_3
    move/from16 v3, p1

    .line 3713
    .local v3, "aasIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 3714
    .local v9, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_4

    const/16 v5, 0xc7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3718
    const/16 v5, 0xc7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3719
    .local v2, "efid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeUsimAasById result,efid:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3722
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_9

    .line 3724
    const/16 v5, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 3725
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v11

    .line 3726
    .local v11, "len":I
    new-array v4, v11, [B

    .line 3727
    .local v4, "aasString":[B
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 3728
    const/4 v5, -0x1

    aput-byte v5, v4, v10

    .line 3727
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3699
    .end local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v2    # "efid":I
    .end local v3    # "aasIndex":I
    .end local v4    # "aasString":[B
    .end local v6    # "msg":Landroid/os/Message;
    .end local v9    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v11    # "len":I
    :catchall_0
    move-exception v5

    monitor-exit v14

    throw v5

    .line 3715
    .restart local v3    # "aasIndex":I
    .restart local v9    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v14, "removeUsimAasById-PBR have no AAS EF record"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    const/4 v5, 0x0

    return v5

    .line 3730
    .restart local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v2    # "efid":I
    .restart local v4    # "aasString":[B
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v10    # "i":I
    .restart local v11    # "len":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3731
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3734
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v14

    .line 3739
    iget-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 3740
    .local v7, "ar":Landroid/os/AsyncResult;
    if-eqz v7, :cond_6

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_8

    .line 3741
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 3742
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_7

    .line 3743
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "remove aas done "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3744
    add-int/lit8 v5, v3, -0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v5, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3746
    :cond_7
    const/4 v5, 0x1

    return v5

    .line 3735
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 3736
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v15, "Interrupted Exception in removesimAasById"

    invoke-static {v5, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 3730
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    monitor-exit v14

    throw v5

    .line 3748
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    :cond_8
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeUsimAasById exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    const/4 v5, 0x0

    return v5

    .line 3752
    .end local v4    # "aasString":[B
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "i":I
    .end local v11    # "len":I
    :cond_9
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v14, "removeUsimAasById-IccFileHandler is null"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    const/4 v5, 0x0

    return v5
.end method

.method public declared-synchronized removeUsimGroupById(I)Z
    .locals 8
    .param p1, "nGasId"    # I

    .prologue
    monitor-enter p0

    .line 1860
    const/4 v1, 0x0

    .line 1861
    .local v1, "ret":Z
    :try_start_0
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById nGasId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1864
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_2

    .line 1865
    :cond_0
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById fail "

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 1888
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 1889
    return v1

    .line 1867
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1868
    .local v2, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " removeUsimGroupById index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1870
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1871
    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1870
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1873
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1881
    :goto_1
    :try_start_5
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v3, :cond_1

    .line 1882
    const/4 v1, 0x1

    .line 1883
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 1884
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1862
    .end local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v4

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1874
    .restart local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :catch_0
    move-exception v0

    .line 1875
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in removeUsimGroupById"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1878
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById fail: this gas doesn\'t exist "

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    .line 242
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 243
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 244
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 245
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 247
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFileRecords:Ljava/util/ArrayList;

    .line 248
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager reset finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public updateAdnAas(II)Z
    .locals 9
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .prologue
    .line 3925
    add-int/lit8 v6, p1, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v4, v6, v7

    .line 3926
    .local v4, "pbrRecNum":I
    add-int/lit8 v6, p1, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v3, v6, v7

    .line 3930
    .local v3, "index":I
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3937
    .local v5, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 3939
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_0

    .line 3940
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 3941
    .local v0, "anr":Ljava/lang/String;
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;II)V

    .line 3939
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3931
    .end local v0    # "anr":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v1

    .line 3932
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UsimPhoneBookManager updateADNAAS: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3933
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 3932
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3933
    const-string/jumbo v8, "index is "

    .line 3932
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3933
    add-int/lit8 v8, p1, -0x1

    .line 3932
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    const/4 v6, 0x0

    return v6

    .line 3944
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "i":I
    .restart local v5    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public updateAnrByAdnIndex(Ljava/lang/String;II)V
    .locals 18
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I

    .prologue
    .line 2473
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v14, v3, v5

    .line 2474
    .local v14, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v10, v3, v5

    .line 2475
    .local v10, "anrRecNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 2476
    return-void

    .line 2478
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 2480
    .local v13, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2481
    :cond_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager updateAnrByAdnIndex: No anr tag in pbr record 0"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    return-void

    .line 2484
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2485
    :cond_3
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager updateAnrByAdnIndex: mPhoneBookRecords is empty"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    return-void

    .line 2488
    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p3

    if-gt v3, v0, :cond_5

    .line 2489
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAnrByAdnIndex anr file size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    return-void

    .line 2493
    :cond_5
    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2494
    .local v4, "efid":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UsimPhoneBookManager updateAnrByAdnIndex recNum: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " EFANR id is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    const/4 v12, 0x0

    .line 2497
    .local v12, "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "record$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2498
    .local v16, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v4, :cond_6

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v3, v14, :cond_6

    .line 2499
    move-object/from16 v12, v16

    .line 2500
    .local v12, "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move/from16 v0, p3

    iput v0, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    .line 2501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAnrByAdnIndex anrIndex:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2506
    .end local v12    # "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v16    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_7
    if-nez v12, :cond_8

    .line 2507
    const-string/jumbo v3, "updateAnrByAdnIndex no efrecord "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2508
    return-void

    .line 2511
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAnrByAdnIndex efrecord "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2512
    iget v3, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v3, v5, :cond_9

    .line 2513
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateType2Anr(Ljava/lang/String;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 2514
    return-void

    .line 2519
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2526
    .local v15, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAasIndex()I

    move-result v9

    .line 2527
    .local v9, "aas":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v6

    .line 2528
    .local v6, "data":[B
    if-eqz v6, :cond_a

    .line 2529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v5, v10, 0x1

    .line 2530
    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 2529
    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2470
    :cond_a
    return-void

    .line 2520
    .end local v6    # "data":[B
    .end local v9    # "aas":I
    .end local v15    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v11

    .line 2521
    .local v11, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UsimPhoneBookManager updateAnrByAdnIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2522
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2521
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2522
    const-string/jumbo v7, "index is "

    .line 2521
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2522
    add-int/lit8 v7, p2, -0x1

    .line 2521
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    return-void
.end method

.method public updateContactToGroups(I[I)Z
    .locals 11
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .prologue
    const/4 v7, 0x0

    .line 2146
    const/4 v5, 0x0

    .line 2148
    .local v5, "ret":Z
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    if-gtz p1, :cond_1

    .line 2149
    :cond_0
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v8, "UsimPhoneBookManager updateContactToGroups no records or invalid index."

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    return v7

    .line 2148
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt p1, v6, :cond_0

    if-eqz p2, :cond_0

    .line 2153
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager updateContactToGroups grpIdList is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2154
    const-string/jumbo v9, " to grp list count "

    .line 2153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2154
    array-length v9, p2

    .line 2153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2157
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2158
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v4, :cond_5

    .line 2159
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " addContactToGroup the adn index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2160
    const-string/jumbo v10, " old grpList is "

    .line 2159
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2160
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v10

    .line 2159
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v9, 0x7

    aget v1, v6, v9

    .line 2162
    .local v1, "grpCount":I
    array-length v6, p2

    if-le v6, v1, :cond_2

    .line 2163
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v9, "updateContactToGroups length of grpIdList > grpCount."

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 2164
    return v7

    .line 2167
    :cond_2
    :try_start_1
    new-array v2, v1, [I

    .line 2168
    .local v2, "grpIdArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 2169
    array-length v6, p2

    if-ge v3, v6, :cond_3

    aget v6, p2, v3

    :goto_1
    aput v6, v2, v3

    .line 2170
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateContactToGroups i:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", grpIdArray["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v6, v7

    .line 2169
    goto :goto_1

    .line 2173
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2174
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2173
    invoke-interface {v6, p1, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2176
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2180
    :goto_2
    :try_start_3
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v6, :cond_5

    .line 2181
    const/4 v5, 0x1

    .line 2182
    add-int/lit8 v6, p1, -0x1

    invoke-direct {p0, v6, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2183
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " updateContactToGroups the adn index is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2184
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v9

    .line 2183
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "grpCount":I
    .end local v2    # "grpIdArray":[I
    .end local v3    # "i":I
    :cond_5
    monitor-exit v8

    .line 2189
    return v5

    .line 2177
    .restart local v1    # "grpCount":I
    .restart local v2    # "grpIdArray":[I
    .restart local v3    # "i":I
    :catch_0
    move-exception v0

    .line 2178
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v7, "Interrupted Exception in updateContactToGroups"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 2156
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "grpCount":I
    .end local v2    # "grpIdArray":[I
    .end local v3    # "i":I
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6
.end method

.method public updateEmailsByAdnIndex([Ljava/lang/String;I)I
    .locals 28
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "adnIndex"    # I

    .prologue
    .line 2659
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v5, v3, v4

    .line 2660
    .local v5, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v24, v3, v4

    .line 2662
    .local v24, "nIapRecNum":I
    const/16 v25, -0x3

    .line 2663
    .local v25, "recNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 2664
    const/4 v3, 0x0

    return v3

    .line 2666
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    .line 2667
    .local v22, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v22, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2668
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 2670
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2671
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 2673
    :cond_4
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2674
    const-string/jumbo v3, "UsimPhoneBookManager"

    .line 2675
    const-string/jumbo v4, "UsimPhoneBookManager updateEmailsByAdnIndex: No email tag in pbr record 0"

    .line 2674
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    const/4 v3, 0x0

    return v3

    .line 2679
    :cond_5
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2680
    .local v9, "efid":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UsimPhoneBookManager updateEmailsByAdnIndex: pbrrecNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2681
    const-string/jumbo v6, " EFEMAIL id is "

    .line 2680
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    .line 2700
    const/4 v7, 0x0

    .line 2702
    .local v7, "iapRec":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 2703
    .local v23, "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2704
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "iapRec":[B
    check-cast v7, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2714
    .local v7, "iapRec":[B
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getRecNum([Ljava/lang/String;II[BI)I

    move-result v25

    .line 2716
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UsimPhoneBookManager updateEmailsByAdnIndex: Email recNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    const/4 v3, -0x2

    move/from16 v0, v25

    if-ne v3, v0, :cond_7

    .line 2718
    const/4 v3, -0x1

    return v3

    .line 2706
    .local v7, "iapRec":[B
    :cond_6
    :try_start_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "Warning: IAP size is 0"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2707
    const/4 v3, 0x0

    return v3

    .line 2709
    .end local v7    # "iapRec":[B
    .end local v23    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v18

    .line 2710
    .local v18, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2711
    const/4 v3, 0x0

    return v3

    .line 2721
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v7, "iapRec":[B
    .restart local v23    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_7
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEmailsByAdnIndex: found Email recNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v0, v25

    int-to-byte v4, v0

    aput-byte v4, v7, v3

    .line 2724
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2725
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2732
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v10, v24, 0x1

    .line 2733
    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 2732
    const/4 v12, 0x0

    move-object v11, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2736
    const/16 v3, 0xff

    move/from16 v0, v25

    if-eq v0, v3, :cond_b

    const/4 v3, -0x1

    move/from16 v0, v25

    if-eq v0, v3, :cond_b

    .line 2737
    const/16 v19, 0x0

    .line 2738
    .local v19, "eMailAd":Ljava/lang/String;
    if-eqz p1, :cond_b

    .line 2740
    const/4 v3, 0x0

    :try_start_2
    aget-object v19, p1, v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2744
    .end local v19    # "eMailAd":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_9

    .line 2745
    const/4 v3, 0x0

    return v3

    .line 2728
    :cond_8
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateEmailsByAdnIndex Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    const/4 v3, 0x0

    return v3

    .line 2741
    .restart local v19    # "eMailAd":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 2742
    .restart local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "Error: updateEmailsByAdnIndex no email address, continuing"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2747
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v19    # "eMailAd":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v11

    .line 2749
    .local v11, "eMailRecData":[B
    if-nez v11, :cond_a

    .line 2750
    const/4 v3, -0x2

    return v3

    .line 2754
    :cond_a
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2755
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2756
    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    const/4 v12, 0x0

    move/from16 v10, v25

    .line 2755
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2789
    .end local v7    # "iapRec":[B
    .end local v11    # "eMailRecData":[B
    .end local v23    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_b
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 2761
    :cond_c
    const/16 v20, 0x0

    .line 2762
    .local v20, "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "record$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2763
    .local v26, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v9, :cond_d

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v3, v5, :cond_d

    .line 2764
    move-object/from16 v20, v26

    .line 2768
    .end local v20    # "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v26    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateEmailsByAdnIndex record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2769
    if-nez v20, :cond_f

    .line 2770
    const/4 v3, 0x0

    return v3

    .line 2772
    :cond_f
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_10

    .line 2773
    const/4 v3, 0x0

    return v3

    .line 2777
    :cond_10
    if-eqz p1, :cond_11

    move-object/from16 v0, p1

    array-length v3, v0

    if-gtz v3, :cond_12

    :cond_11
    const/16 v21, 0x0

    .line 2778
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_13

    .line 2779
    const/4 v3, 0x0

    return v3

    .line 2777
    :cond_12
    const/4 v3, 0x0

    aget-object v21, p1, v3

    .local v21, "email":Ljava/lang/String;
    goto :goto_2

    .line 2781
    .end local v21    # "email":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v15

    .line 2782
    .local v15, "data":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateEmailsByAdnIndex build type1 email record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2783
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 2782
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2784
    if-eqz v15, :cond_b

    .line 2785
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v14, v24, 0x1

    .line 2786
    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 2785
    const/16 v16, 0x0

    move v13, v9

    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1
.end method

.method public updateSneByAdnIndex(Ljava/lang/String;I)V
    .locals 17
    .param p1, "sne"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I

    .prologue
    .line 4119
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager updateSneByAdnIndex sne is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",adnIndex "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    add-int/lit8 v1, p2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v12, v1, v2

    .line 4122
    .local v12, "pbrRecNum":I
    add-int/lit8 v1, p2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v11, v1, v2

    .line 4123
    .local v11, "nIapRecNum":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 4124
    :cond_0
    return-void

    .line 4126
    :cond_1
    const/16 v1, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4128
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 4129
    .local v10, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_3

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4134
    :cond_2
    return-void

    .line 4130
    :cond_3
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "updateSneByAdnIndex: No SNE tag in pbr record 0"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    return-void

    .line 4136
    :cond_4
    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 4137
    .local v9, "efid":I
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSneByAdnIndex: EFSNE id is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    const/4 v3, 0x0

    .line 4139
    .local v3, "efIndex":I
    const/4 v15, 0x0

    .line 4140
    .local v15, "sneEf":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "record$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4141
    .local v13, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v1, v13, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v1, v12, :cond_5

    .line 4142
    add-int/lit8 v3, v3, 0x1

    .line 4143
    iget v1, v13, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v1, v9, :cond_5

    .line 4144
    move-object v15, v13

    .line 4149
    .end local v13    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v15    # "sneEf":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_6
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSneByAdnIndex: efIndex is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 4151
    if-eqz p1, :cond_7

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 4153
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    move/from16 v0, p2

    invoke-interface {v1, v2, v3, v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4160
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4164
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSneByAdnIndex update IAP? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4165
    if-eqz v15, :cond_8

    iget v1, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v2, 0xa9

    if-ne v1, v2, :cond_8

    .line 4166
    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit v16

    .line 4117
    return-void

    .line 4155
    :cond_9
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4157
    .local v5, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    const/4 v6, 0x0

    move/from16 v4, p2

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4150
    .end local v5    # "temp":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v16

    throw v1

    .line 4161
    :catch_0
    move-exception v8

    .line 4162
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "Interrupted Exception in updateSneByAdnIndex"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .locals 20
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .prologue
    .line 3837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",pbrIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",aasName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 3839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3840
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "updateUsimAas No PBR "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    const/4 v2, 0x0

    return v2

    .line 3843
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3844
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 3846
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateUsimAas No PBR files"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3847
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .line 3849
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v17

    .line 3850
    .local v17, "numRecs":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3851
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 3852
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3851
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3

    .line 3856
    .end local v12    # "i":I
    .end local v17    # "numRecs":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas not found pbr index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3858
    const/4 v2, 0x0

    return v2

    .line 3843
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 3860
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 3861
    .local v16, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v16, :cond_5

    .line 3862
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no aas for pbr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    const/4 v2, 0x0

    return v2

    .line 3865
    :cond_5
    if-lez p1, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-le v0, v2, :cond_7

    .line 3866
    :cond_6
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsimAas not found aas index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    const/4 v2, 0x0

    return v2

    .line 3869
    :cond_7
    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3870
    .local v9, "aas":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas old aas "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3874
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 3876
    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v2

    return v2

    .line 3879
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v14

    .line 3880
    .local v14, "limit":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    .line 3881
    .local v13, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas aas limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3882
    if-le v13, v14, :cond_a

    .line 3883
    const/4 v2, 0x0

    return v2

    .line 3885
    :cond_a
    const/16 v18, 0x0

    .line 3886
    .local v18, "offset":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v12, v0, :cond_c

    .line 3887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v18, v18, v2

    .line 3886
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3891
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3892
    add-int v5, p1, v18

    .line 3893
    .local v5, "aasIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3894
    .local v6, "temp":Ljava/lang/String;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 3895
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3896
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3898
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v19

    .line 3903
    iget-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 3904
    .local v10, "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_d

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 3905
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 3906
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v15, :cond_e

    .line 3907
    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3908
    const-string/jumbo v2, "updateUsimAas update mAasForAnrRec done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3910
    :cond_e
    const/4 v2, 0x1

    return v2

    .line 3899
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 3900
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in updateUsimAas"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 3895
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    .line 3912
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    :cond_f
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsimAas exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    const/4 v2, 0x0

    return v2
.end method

.method public declared-synchronized updateUsimGroup(ILjava/lang/String;)I
    .locals 11
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1976
    const/4 v8, -0x1

    .line 1977
    .local v8, "ret":I
    :try_start_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UsimPhoneBookManager updateUsimGroup nGasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1980
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1982
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 1983
    :cond_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager updateUsimGroup fail "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v0, :cond_4

    .line 1995
    move v8, p1

    .line 1996
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1997
    .local v9, "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v9, :cond_3

    .line 1998
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUsimGroup index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    invoke-virtual {v9, p2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :goto_1
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 2007
    return v8

    .line 1984
    :cond_2
    if-eqz p2, :cond_1

    .line 1985
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1986
    .local v4, "temp":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1987
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1986
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1989
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1990
    :catch_0
    move-exception v7

    .line 1991
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "Interrupted Exception in updateUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1979
    .end local v4    # "temp":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v10

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2001
    .restart local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_3
    :try_start_7
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "updateUsimGroup the entry doesn\'t exist "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2004
    .end local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_4
    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/uicc/AdnRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 2862
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimPhonebookRecordsList update the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "th record."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 2864
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2865
    .local v0, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2866
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 2868
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2861
    .end local v0    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    return-void
.end method
