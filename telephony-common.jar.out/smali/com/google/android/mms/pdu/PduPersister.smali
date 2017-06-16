.class public Lcom/google/android/mms/pdu/PduPersister;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ADDRESS_FIELDS:[I

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
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

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DUMMY_THREAD_ID:J = 0x7fffffffffffffffL

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
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

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOGV:Z = false

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;
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

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
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

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_COLUMN_CHARSET:I = 0x1

.field private static final PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final PART_COLUMN_FILENAME:I = 0x6

.field private static final PART_COLUMN_ID:I = 0x0

.field private static final PART_COLUMN_NAME:I = 0x7

.field private static final PART_COLUMN_TEXT:I = 0x8

.field private static final PART_PROJECTION:[Ljava/lang/String;

.field private static final PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

.field private static final PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final PDU_COLUMN_DATE:I = 0x15

.field private static final PDU_COLUMN_DATE_SENT:I = 0x1c

.field private static final PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final PDU_COLUMN_EXPIRY:I = 0x17

.field private static final PDU_COLUMN_ID:I = 0x0

.field private static final PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final PDU_COLUMN_PRIORITY:I = 0xf

.field private static final PDU_COLUMN_READ:I = 0x1b

.field private static final PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final PDU_COLUMN_STATUS:I = 0x14

.field private static final PDU_COLUMN_SUBJECT:I = 0x4

.field private static final PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field public static final PROC_STATUS_COMPLETED:I = 0x3

.field public static final PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PduPersister"

.field public static final TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://mms/9223372036854775807/part"

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
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

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersister:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private mBackupRestore:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x9a

    const/16 v7, 0x96

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const-class v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduPersister;->-assertionsDisabled:Z

    .line 106
    const/16 v0, 0x81

    .line 107
    const/16 v2, 0x82

    .line 108
    const/16 v3, 0x89

    .line 109
    const/16 v4, 0x97

    .line 105
    filled-new-array {v0, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .line 112
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    .line 113
    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 114
    const-string/jumbo v2, "msg_box"

    aput-object v2, v0, v1

    .line 115
    const-string/jumbo v2, "thread_id"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 116
    const-string/jumbo v2, "retr_txt"

    aput-object v2, v0, v5

    .line 117
    const-string/jumbo v2, "sub"

    aput-object v2, v0, v6

    .line 118
    const-string/jumbo v2, "ct_l"

    const/4 v3, 0x5

    aput-object v2, v0, v3

    .line 119
    const-string/jumbo v2, "ct_t"

    const/4 v3, 0x6

    aput-object v2, v0, v3

    .line 120
    const-string/jumbo v2, "m_cls"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    .line 121
    const-string/jumbo v2, "m_id"

    const/16 v3, 0x8

    aput-object v2, v0, v3

    .line 122
    const-string/jumbo v2, "resp_txt"

    const/16 v3, 0x9

    aput-object v2, v0, v3

    .line 123
    const-string/jumbo v2, "tr_id"

    const/16 v3, 0xa

    aput-object v2, v0, v3

    .line 124
    const-string/jumbo v2, "ct_cls"

    const/16 v3, 0xb

    aput-object v2, v0, v3

    .line 125
    const-string/jumbo v2, "d_rpt"

    const/16 v3, 0xc

    aput-object v2, v0, v3

    .line 126
    const-string/jumbo v2, "m_type"

    const/16 v3, 0xd

    aput-object v2, v0, v3

    .line 127
    const-string/jumbo v2, "v"

    const/16 v3, 0xe

    aput-object v2, v0, v3

    .line 128
    const-string/jumbo v2, "pri"

    const/16 v3, 0xf

    aput-object v2, v0, v3

    .line 129
    const-string/jumbo v2, "rr"

    const/16 v3, 0x10

    aput-object v2, v0, v3

    .line 130
    const-string/jumbo v2, "read_status"

    const/16 v3, 0x11

    aput-object v2, v0, v3

    .line 131
    const-string/jumbo v2, "rpt_a"

    const/16 v3, 0x12

    aput-object v2, v0, v3

    .line 132
    const-string/jumbo v2, "retr_st"

    const/16 v3, 0x13

    aput-object v2, v0, v3

    .line 133
    const-string/jumbo v2, "st"

    const/16 v3, 0x14

    aput-object v2, v0, v3

    .line 134
    const-string/jumbo v2, "date"

    const/16 v3, 0x15

    aput-object v2, v0, v3

    .line 135
    const-string/jumbo v2, "d_tm"

    const/16 v3, 0x16

    aput-object v2, v0, v3

    .line 136
    const-string/jumbo v2, "exp"

    const/16 v3, 0x17

    aput-object v2, v0, v3

    .line 137
    const-string/jumbo v2, "m_size"

    const/16 v3, 0x18

    aput-object v2, v0, v3

    .line 138
    const-string/jumbo v2, "sub_cs"

    const/16 v3, 0x19

    aput-object v2, v0, v3

    .line 139
    const-string/jumbo v2, "retr_txt_cs"

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    .line 141
    const-string/jumbo v2, "read"

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    .line 144
    const-string/jumbo v2, "date_sent"

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    .line 112
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 180
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 181
    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 182
    const-string/jumbo v2, "chset"

    aput-object v2, v0, v1

    .line 183
    const-string/jumbo v2, "cd"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 184
    const-string/jumbo v2, "cid"

    aput-object v2, v0, v5

    .line 185
    const-string/jumbo v2, "cl"

    aput-object v2, v0, v6

    .line 186
    const-string/jumbo v2, "ct"

    const/4 v3, 0x5

    aput-object v2, v0, v3

    .line 187
    const-string/jumbo v2, "fn"

    const/4 v3, 0x6

    aput-object v2, v0, v3

    .line 188
    const-string/jumbo v2, "name"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    .line 189
    const-string/jumbo v2, "text"

    const/16 v3, 0x8

    aput-object v2, v0, v3

    .line 180
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 217
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 223
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 227
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 232
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 236
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 241
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 249
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 258
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 270
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 283
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 289
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    .line 297
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "date_sent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mBackupRestore:Z

    .line 308
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 312
    const-string/jumbo v0, "phone"

    .line 311
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 307
    return-void
.end method

.method public static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1028
    const/4 v8, 0x0

    .line 1029
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1030
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 1031
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1032
    const-string/jumbo v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1031
    if-eqz v0, :cond_2

    .line 1033
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1062
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 1035
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "path":Ljava/lang/String;
    goto :goto_0

    .line 1038
    .local v8, "path":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1039
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v1

    .line 1040
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1042
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    .line 1043
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 1042
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1044
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 1045
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1051
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 1054
    if-eqz v6, :cond_5

    .line 1055
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1053
    :cond_5
    throw v0

    .line 1044
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1048
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1049
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 1054
    .local v8, "path":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1055
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1059
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    .local v8, "path":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 375
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 378
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getByteArrayFromPartColumn2(Landroid/database/Cursor;I)[B
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 388
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 391
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1732
    :try_start_0
    const-string/jumbo v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1733
    :catch_0
    move-exception v0

    .line 1735
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, "PduPersister"

    const-string/jumbo v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1736
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 368
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 371
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 2
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    const/4 v0, 0x0

    .line 763
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_1

    .line 318
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 324
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0

    .line 319
    :cond_1
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 321
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    goto :goto_0
.end method

.method private loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V
    .locals 15
    .param p1, "msgId"    # J
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 530
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 532
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v7, "address"

    aput-object v7, v5, v12

    const-string/jumbo v7, "charset"

    aput-object v7, v5, v8

    const-string/jumbo v7, "type"

    aput-object v7, v5, v13

    move-object v7, v6

    move-object v8, v6

    .line 530
    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 535
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 537
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 539
    .local v9, "addr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 541
    .local v10, "addrType":I
    sparse-switch v10, :sswitch_data_0

    .line 555
    const-string/jumbo v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown address type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 560
    .end local v9    # "addr":Ljava/lang/String;
    .end local v10    # "addrType":I
    :catchall_0
    move-exception v2

    .line 561
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 560
    throw v2

    .line 544
    .restart local v9    # "addr":Ljava/lang/String;
    .restart local v10    # "addrType":I
    :sswitch_0
    :try_start_1
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 543
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    goto :goto_0

    .line 551
    :sswitch_1
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 550
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v10}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 561
    .end local v9    # "addr":Ljava/lang/String;
    .end local v10    # "addrType":I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 529
    :cond_2
    return-void

    .line 541
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private loadParts(J)[Lcom/google/android/mms/pdu/PduPart;
    .locals 33
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 398
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 396
    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 400
    .local v12, "c":Landroid/database/Cursor;
    const/16 v30, 0x0

    .line 403
    .local v30, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 407
    :cond_0
    const/4 v2, 0x0

    .line 521
    if-eqz v12, :cond_1

    .line 522
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_1
    return-object v2

    .line 410
    :cond_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 411
    .local v24, "partCount":I
    const/16 v25, 0x0

    .line 412
    .local v25, "partIdx":I
    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v30, v0

    .local v30, "parts":[Lcom/google/android/mms/pdu/PduPart;
    move/from16 v28, v25

    .line 413
    .end local v25    # "partIdx":I
    .local v28, "partIdx":I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 414
    new-instance v23, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 416
    .local v23, "part":Lcom/google/android/mms/pdu/PduPart;
    const/4 v2, 0x1

    .line 415
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v13

    .line 417
    .local v13, "charset":Ljava/lang/Integer;
    if-eqz v13, :cond_3

    .line 418
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 422
    :cond_3
    const/4 v2, 0x2

    .line 421
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v14

    .line 423
    .local v14, "contentDisposition":[B
    if-eqz v14, :cond_4

    .line 424
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 428
    :cond_4
    const/4 v2, 0x3

    .line 427
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v15

    .line 429
    .local v15, "contentId":[B
    if-eqz v15, :cond_5

    .line 430
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 434
    :cond_5
    const/4 v2, 0x4

    .line 433
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v16

    .line 435
    .local v16, "contentLocation":[B
    if-eqz v16, :cond_6

    .line 436
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 440
    :cond_6
    const/4 v2, 0x5

    .line 439
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v17

    .line 441
    .local v17, "contentType":[B
    if-eqz v17, :cond_a

    .line 442
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 448
    const/4 v2, 0x6

    .line 447
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v19

    .line 449
    .local v19, "fileName":[B
    if-eqz v19, :cond_7

    .line 450
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 454
    :cond_7
    const/4 v2, 0x7

    .line 453
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v22

    .line 455
    .local v22, "name":[B
    if-eqz v22, :cond_8

    .line 456
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 460
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 461
    .local v26, "partId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 462
    .local v29, "partURI":Landroid/net/Uri;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 466
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v32

    .line 467
    .local v32, "type":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 468
    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 518
    :cond_9
    :goto_1
    add-int/lit8 v25, v28, 0x1

    .end local v28    # "partIdx":I
    .restart local v25    # "partIdx":I
    aput-object v23, v30, v28

    move/from16 v28, v25

    .end local v25    # "partIdx":I
    .restart local v28    # "partIdx":I
    goto/16 :goto_0

    .line 444
    .end local v19    # "fileName":[B
    .end local v22    # "name":[B
    .end local v26    # "partId":J
    .end local v29    # "partURI":Landroid/net/Uri;
    .end local v32    # "type":Ljava/lang/String;
    :cond_a
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Content-Type must be set."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    .end local v13    # "charset":Ljava/lang/Integer;
    .end local v14    # "contentDisposition":[B
    .end local v15    # "contentId":[B
    .end local v16    # "contentLocation":[B
    .end local v17    # "contentType":[B
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v24    # "partCount":I
    .end local v28    # "partIdx":I
    .end local v30    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    :catchall_0
    move-exception v2

    .line 521
    if-eqz v12, :cond_b

    .line 522
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_b
    throw v2

    .line 469
    .restart local v13    # "charset":Ljava/lang/Integer;
    .restart local v14    # "contentDisposition":[B
    .restart local v15    # "contentId":[B
    .restart local v16    # "contentLocation":[B
    .restart local v17    # "contentType":[B
    .restart local v19    # "fileName":[B
    .restart local v22    # "name":[B
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v24    # "partCount":I
    .restart local v26    # "partId":J
    .restart local v28    # "partIdx":I
    .restart local v29    # "partURI":Landroid/net/Uri;
    .restart local v30    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v32    # "type":Ljava/lang/String;
    :cond_c
    :try_start_2
    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 470
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 471
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    .line 476
    .local v20, "is":Ljava/io/InputStream;
    const-string/jumbo v2, "text/plain"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "application/smil"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 477
    const-string/jumbo v2, "text/html"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 476
    if-eqz v2, :cond_12

    .line 478
    :cond_d
    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 482
    .local v31, "text":Ljava/lang/String;
    if-eqz v13, :cond_10

    .line 483
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v31, :cond_f

    .end local v31    # "text":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v31

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    .line 490
    .local v10, "blob":[B
    :goto_3
    array-length v2, v10

    const/4 v3, 0x0

    invoke-virtual {v9, v10, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 516
    .end local v10    # "blob":[B
    .end local v20    # "is":Ljava/io/InputStream;
    :cond_e
    :goto_4
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_1

    .line 483
    .restart local v20    # "is":Ljava/io/InputStream;
    .restart local v31    # "text":Ljava/lang/String;
    :cond_f
    const-string/jumbo v31, ""

    goto :goto_2

    .line 486
    :cond_10
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    if-eqz v31, :cond_11

    .end local v31    # "text":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v31

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    .restart local v10    # "blob":[B
    goto :goto_3

    .end local v10    # "blob":[B
    .restart local v31    # "text":Ljava/lang/String;
    :cond_11
    const-string/jumbo v31, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 494
    .end local v31    # "text":Ljava/lang/String;
    :cond_12
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 496
    .local v20, "is":Ljava/io/InputStream;
    const/16 v2, 0x100

    new-array v11, v2, [B

    .line 497
    .local v11, "buffer":[B
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .line 498
    .local v21, "len":I
    :goto_6
    if-ltz v21, :cond_13

    .line 499
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v11, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 500
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v21

    goto :goto_6

    .line 507
    :cond_13
    if-eqz v20, :cond_e

    .line 509
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 510
    :catch_0
    move-exception v18

    .line 511
    .local v18, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v2, "PduPersister"

    const-string/jumbo v3, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 502
    .end local v11    # "buffer":[B
    .end local v18    # "e":Ljava/io/IOException;
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v21    # "len":I
    :catch_1
    move-exception v18

    .line 503
    .restart local v18    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v2, "PduPersister"

    const-string/jumbo v3, "Failed to load part data"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 505
    new-instance v2, Lcom/google/android/mms/MmsException;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 506
    .end local v18    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    .line 507
    if-eqz v20, :cond_14

    .line 509
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 506
    :cond_14
    :goto_7
    :try_start_8
    throw v2

    .line 510
    :catch_2
    move-exception v18

    .line 511
    .restart local v18    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "PduPersister"

    const-string/jumbo v4, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 521
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "charset":Ljava/lang/Integer;
    .end local v14    # "contentDisposition":[B
    .end local v15    # "contentId":[B
    .end local v16    # "contentLocation":[B
    .end local v17    # "contentType":[B
    .end local v18    # "e":Ljava/io/IOException;
    .end local v19    # "fileName":[B
    .end local v22    # "name":[B
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v26    # "partId":J
    .end local v29    # "partURI":Landroid/net/Uri;
    .end local v32    # "type":Ljava/lang/String;
    :cond_15
    if-eqz v12, :cond_16

    .line 522
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_16
    return-object v30
.end method

.method private loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V
    .locals 14
    .param p1, "addressType"    # I
    .param p4, "excludeMyNumber"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/google/android/mms/pdu/EncodedStringValue;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1642
    .local p2, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1643
    .local v2, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v2, :cond_0

    .line 1644
    return-void

    .line 1648
    :cond_0
    if-eqz p4, :cond_1

    array-length v7, v2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1649
    return-void

    .line 1651
    :cond_1
    iget-object v7, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    .line 1652
    .local v1, "SubIdList":[I
    const/4 v7, 0x0

    array-length v9, v2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_7

    aget-object v6, v2, v8

    .line 1653
    .local v6, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_2

    .line 1654
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    .line 1655
    .local v4, "number":Ljava/lang/String;
    const-string/jumbo v7, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "number = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const-string/jumbo v7, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    array-length v7, v1

    if-nez v7, :cond_3

    .line 1658
    const-string/jumbo v7, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "recipients add number = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1652
    .end local v4    # "number":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 1662
    .restart local v4    # "number":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    array-length v10, v1

    :goto_1
    if-ge v7, v10, :cond_2

    aget v5, v1, v7

    .line 1663
    .local v5, "subid":I
    const-string/jumbo v11, "PduPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "subid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    if-eqz p4, :cond_5

    iget-object v11, p0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11, v5}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 1666
    :goto_2
    if-eqz v3, :cond_6

    invoke-static {v4, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1662
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1665
    :cond_5
    const/4 v3, 0x0

    .local v3, "myNumber":Ljava/lang/String;
    goto :goto_2

    .line 1667
    .end local v3    # "myNumber":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1669
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1641
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "subid":I
    .end local v6    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_7
    return-void
.end method

.method private persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 7
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 745
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v1, "strValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 747
    .local v3, "values":Landroid/content/ContentValues;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 748
    .local v2, "uri":Landroid/net/Uri;
    if-nez p4, :cond_0

    .line 749
    return-void

    .line 751
    :cond_0
    const/4 v4, 0x0

    array-length v5, p4

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, p4, v4

    .line 752
    .local v0, "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 756
    .end local v0    # "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    const-string/jumbo v4, "addresses"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 757
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v5, v2, v3}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 743
    return-void
.end method

.method private persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 27
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 861
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/16 v24, 0x0

    .line 862
    .local v24, "os":Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 863
    .local v19, "is":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 864
    .local v14, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    const/4 v13, 0x0

    .line 865
    .local v13, "dataUri":Landroid/net/Uri;
    const/16 v25, 0x0

    .line 868
    .local v25, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v12

    .line 869
    .local v12, "data":[B
    const-string/jumbo v2, "text/plain"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 870
    const-string/jumbo v2, "application/smil"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 869
    if-nez v2, :cond_0

    .line 871
    const-string/jumbo v2, "text/html"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 869
    if-eqz v2, :cond_7

    .line 872
    :cond_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 875
    .local v11, "cv":Landroid/content/ContentValues;
    if-nez v12, :cond_1

    .line 876
    const-string/jumbo v2, "MMSLog"

    const-string/jumbo v3, "convert data from null to empty."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 882
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v9

    .line 883
    .local v9, "charset":I
    if-eqz v9, :cond_2

    const-string/jumbo v2, "application/smil"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 886
    :cond_2
    const-string/jumbo v2, "text"

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v12}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_17

    .line 890
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    .end local v9    # "charset":I
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v12    # "data":[B
    .end local v13    # "dataUri":Landroid/net/Uri;
    .end local v14    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v19    # "is":Ljava/io/InputStream;
    .end local v24    # "os":Ljava/io/OutputStream;
    .end local v25    # "path":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 982
    .local v15, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string/jumbo v2, "PduPersister"

    const-string/jumbo v3, "Failed to open Input/Output stream."

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "File not found."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    move-object/from16 v26, v2

    .line 990
    if-eqz v24, :cond_3

    .line 992
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 997
    :cond_3
    :goto_1
    if-eqz v19, :cond_4

    .line 999
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 1004
    :cond_4
    :goto_2
    if-eqz v14, :cond_5

    .line 1005
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1009
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v18, "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1011
    .local v5, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1013
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1011
    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 989
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v18    # "f":Ljava/io/File;
    :cond_5
    throw v26

    .line 884
    .restart local v9    # "charset":I
    .restart local v11    # "cv":Landroid/content/ContentValues;
    .restart local v12    # "data":[B
    .restart local v13    # "dataUri":Landroid/net/Uri;
    .restart local v14    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v19    # "is":Ljava/io/InputStream;
    .restart local v24    # "os":Ljava/io/OutputStream;
    .restart local v25    # "path":Ljava/lang/String;
    :cond_6
    :try_start_4
    const-string/jumbo v2, "text"

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v9, v12}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 985
    .end local v9    # "charset":I
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v12    # "data":[B
    .end local v13    # "dataUri":Landroid/net/Uri;
    .end local v14    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v19    # "is":Ljava/io/InputStream;
    .end local v24    # "os":Ljava/io/OutputStream;
    .end local v25    # "path":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 986
    .local v16, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v2, "PduPersister"

    const-string/jumbo v3, "Failed to read/write data."

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 987
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Read or write file failure."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 893
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v12    # "data":[B
    .restart local v13    # "dataUri":Landroid/net/Uri;
    .restart local v14    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v19    # "is":Ljava/io/InputStream;
    .restart local v24    # "os":Ljava/io/OutputStream;
    .restart local v25    # "path":Ljava/lang/String;
    :cond_7
    :try_start_6
    invoke-static/range {p3 .. p3}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v20

    .line 894
    .local v20, "isDrm":Z
    if-eqz v20, :cond_9

    .line 895
    if-eqz p2, :cond_8

    .line 897
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v25

    .line 901
    .local v25, "path":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 902
    .restart local v18    # "f":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v22

    .line 906
    .local v22, "len":J
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-lez v2, :cond_8

    .line 909
    return-void

    .line 911
    .end local v18    # "f":Ljava/io/File;
    .end local v22    # "len":J
    .end local v25    # "path":Ljava/lang/String;
    :catch_2
    move-exception v17

    .line 912
    .local v17, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t get file info for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/google/android/mms/util/DrmConvertSession;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;

    move-result-object v14

    .line 917
    .local v14, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    if-nez v14, :cond_9

    .line 918
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Mimetype "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 919
    const-string/jumbo v4, " can not be converted."

    .line 918
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 924
    .end local v14    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v24

    .line 925
    .local v24, "os":Ljava/io/OutputStream;
    if-nez v12, :cond_16

    .line 926
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v13

    .line 927
    .local v13, "dataUri":Landroid/net/Uri;
    if-eqz v13, :cond_a

    move-object/from16 v0, p2

    if-ne v13, v0, :cond_d

    .line 928
    :cond_a
    const-string/jumbo v2, "PduPersister"

    const-string/jumbo v3, "Can\'t find data for this part."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 990
    if-eqz v24, :cond_b

    .line 992
    :try_start_9
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1004
    :cond_b
    :goto_3
    if-eqz v14, :cond_c

    .line 1005
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1009
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1010
    .restart local v18    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1011
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1013
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1011
    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 929
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v18    # "f":Ljava/io/File;
    :cond_c
    return-void

    .line 993
    :catch_3
    move-exception v16

    .line 994
    .restart local v16    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 933
    .end local v16    # "e":Ljava/io/IOException;
    :cond_d
    if-eqz p4, :cond_e

    :try_start_a
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 934
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/io/InputStream;

    move-object/from16 v19, v0

    .line 936
    .end local v19    # "is":Ljava/io/InputStream;
    :cond_e
    if-nez v19, :cond_f

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v19

    .line 944
    :cond_f
    if-nez v19, :cond_13

    .line 945
    const-string/jumbo v2, "PduPersister"

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the valude of ContentResolver.openInputStream() is null . InputStream uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 945
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 990
    if-eqz v24, :cond_10

    .line 992
    :try_start_b
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 997
    :cond_10
    :goto_4
    if-eqz v19, :cond_11

    .line 999
    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 1004
    :cond_11
    :goto_5
    if-eqz v14, :cond_12

    .line 1005
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1009
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1010
    .restart local v18    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1011
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1013
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1011
    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 948
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v18    # "f":Ljava/io/File;
    :cond_12
    return-void

    .line 993
    :catch_4
    move-exception v16

    .line 994
    .restart local v16    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1000
    .end local v16    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v16

    .line 1001
    .restart local v16    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 951
    .end local v16    # "e":Ljava/io/IOException;
    :cond_13
    const/16 v2, 0x2000

    :try_start_d
    new-array v8, v2, [B

    .line 952
    .local v8, "buffer":[B
    const/16 v21, 0x0

    .local v21, "len":I
    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_17

    .line 953
    if-nez v20, :cond_14

    .line 954
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v8, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 956
    :cond_14
    move/from16 v0, v21

    invoke-virtual {v14, v8, v0}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v10

    .line 957
    .local v10, "convertedData":[B
    if-eqz v10, :cond_15

    .line 958
    array-length v2, v10

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 960
    :cond_15
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Error converting drm data."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 968
    .end local v8    # "buffer":[B
    .end local v10    # "convertedData":[B
    .end local v21    # "len":I
    .local v13, "dataUri":Landroid/net/Uri;
    .restart local v19    # "is":Ljava/io/InputStream;
    :cond_16
    if-nez v20, :cond_1b

    .line 969
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 990
    .end local v13    # "dataUri":Landroid/net/Uri;
    .end local v19    # "is":Ljava/io/InputStream;
    .end local v20    # "isDrm":Z
    .end local v24    # "os":Ljava/io/OutputStream;
    :cond_17
    :goto_7
    if-eqz v24, :cond_18

    .line 992
    :try_start_e
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 997
    :cond_18
    :goto_8
    if-eqz v19, :cond_19

    .line 999
    :try_start_f
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 1004
    :cond_19
    :goto_9
    if-eqz v14, :cond_1a

    .line 1005
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1009
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1010
    .restart local v18    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1011
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1013
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1011
    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 860
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v18    # "f":Ljava/io/File;
    :cond_1a
    return-void

    .line 971
    .restart local v13    # "dataUri":Landroid/net/Uri;
    .restart local v19    # "is":Ljava/io/InputStream;
    .restart local v20    # "isDrm":Z
    .restart local v24    # "os":Ljava/io/OutputStream;
    :cond_1b
    move-object/from16 v13, p2

    .line 972
    .local v13, "dataUri":Landroid/net/Uri;
    :try_start_10
    array-length v2, v12

    invoke-virtual {v14, v12, v2}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v10

    .line 973
    .restart local v10    # "convertedData":[B
    if-eqz v10, :cond_1c

    .line 974
    array-length v2, v10

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    .line 976
    :cond_1c
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Error converting drm data."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 993
    .end local v10    # "convertedData":[B
    .end local v13    # "dataUri":Landroid/net/Uri;
    .end local v19    # "is":Ljava/io/InputStream;
    .end local v20    # "isDrm":Z
    .end local v24    # "os":Ljava/io/OutputStream;
    :catch_6
    move-exception v16

    .line 994
    .restart local v16    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1000
    .end local v16    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v16

    .line 1001
    .restart local v16    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 993
    .end local v12    # "data":[B
    .end local v16    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v16

    .line 994
    .restart local v16    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1000
    .end local v16    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v16

    .line 1001
    .restart local v16    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method private persistForBackupRestore(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Ljava/util/HashMap;)Landroid/net/Uri;
    .locals 56
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1811
    .local p3, "attach":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 1812
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string/jumbo v5, "Uri may not be null."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1814
    :cond_0
    const-wide/16 v32, -0x1

    .line 1816
    .local v32, "msgId":J
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v32

    .line 1820
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, v32, v4

    if-eqz v4, :cond_1

    const/16 v22, 0x1

    .line 1822
    .local v22, "existingUri":Z
    :goto_1
    if-nez v22, :cond_2

    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1823
    new-instance v4, Lcom/google/android/mms/MmsException;

    .line 1824
    const-string/jumbo v5, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    .line 1823
    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1817
    .end local v22    # "existingUri":Z
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1820
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/16 v22, 0x0

    .restart local v22    # "existingUri":Z
    goto :goto_1

    .line 1829
    :cond_2
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1832
    :try_start_1
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 1837
    :try_start_2
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_2
    monitor-exit v5

    .line 1843
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1844
    const-string/jumbo v4, "PduPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persist uri "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v26

    .line 1846
    .local v26, "header":Lcom/google/android/mms/pdu/PduHeaders;
    const/4 v15, 0x0

    .line 1847
    .local v15, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1850
    .local v7, "values":Landroid/content/ContentValues;
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v44

    .line 1851
    .local v44, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface/range {v44 .. v44}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "e$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1852
    .local v19, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1853
    .local v23, "field":I
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v21

    .line 1854
    .local v21, "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v21, :cond_4

    .line 1855
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1856
    .local v16, "charsetColumn":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1838
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v15    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v16    # "charsetColumn":Ljava/lang/String;
    .end local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v20    # "e$iterator":Ljava/util/Iterator;
    .end local v21    # "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v23    # "field":I
    .end local v26    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v44    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :catch_1
    move-exception v17

    .line 1839
    .local v17, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v4, "PduPersister"

    const-string/jumbo v8, "persist1: "

    move-object/from16 v0, v17

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 1829
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1861
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v15    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v20    # "e$iterator":Ljava/util/Iterator;
    .restart local v26    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v44    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_5
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v44

    .line 1862
    invoke-interface/range {v44 .. v44}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_6
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1863
    .restart local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v48

    .line 1864
    .local v48, "text":[B
    if-eqz v48, :cond_6

    .line 1865
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1869
    .end local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v48    # "text":[B
    :cond_7
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v44

    .line 1870
    invoke-interface/range {v44 .. v44}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_8
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1871
    .restart local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v13

    .line 1872
    .local v13, "b":I
    if-eqz v13, :cond_8

    .line 1873
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 1878
    .end local v13    # "b":I
    .end local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mBackupRestore:Z

    if-eqz v4, :cond_c

    .line 1879
    const/16 v42, 0x0

    .line 1880
    .local v42, "read":I
    if-eqz p3, :cond_a

    .line 1881
    const-string/jumbo v4, "read"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 1884
    :cond_a
    const-string/jumbo v4, "read"

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1886
    const-wide/16 v46, 0x0

    .line 1887
    .local v46, "size":J
    if-eqz p3, :cond_b

    const-string/jumbo v4, "m_size"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1888
    const-string/jumbo v4, "m_size"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v46

    .line 1890
    :cond_b
    const-string/jumbo v4, "m_size"

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1894
    .end local v42    # "read":I
    .end local v46    # "size":J
    :cond_c
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v44

    .line 1895
    invoke-interface/range {v44 .. v44}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_d
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1896
    .restart local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v28

    .line 1897
    .local v28, "l":J
    const-wide/16 v4, -0x1

    cmp-long v4, v28, v4

    if-eqz v4, :cond_d

    .line 1898
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6

    .line 1903
    .end local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v28    # "l":J
    :cond_e
    new-instance v11, Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v4, v4

    invoke-direct {v11, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1905
    .local v11, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    const/4 v4, 0x0

    array-length v8, v5

    :goto_7
    if-ge v4, v8, :cond_11

    aget v10, v5, v4

    .line 1906
    .local v10, "addrType":I
    const/4 v12, 0x0

    .line 1907
    .local v12, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v9, 0x89

    if-ne v10, v9, :cond_10

    .line 1908
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v49

    .line 1909
    .local v49, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v49, :cond_f

    .line 1910
    const/4 v9, 0x1

    new-array v12, v9, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1911
    .local v12, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v9, 0x0

    aput-object v49, v12, v9

    .line 1916
    .end local v12    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v49    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_f
    :goto_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1914
    .local v12, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_10
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .local v12, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_8

    .line 1919
    .end local v10    # "addrType":I
    .end local v12    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_11
    new-instance v43, Ljava/util/HashSet;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashSet;-><init>()V

    .line 1920
    .local v43, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v31

    .line 1925
    .local v31, "msgType":I
    const/16 v4, 0x82

    move/from16 v0, v31

    if-eq v0, v4, :cond_12

    .line 1926
    const/16 v4, 0x84

    move/from16 v0, v31

    if-ne v0, v4, :cond_14

    .line 1928
    :cond_12
    const/4 v12, 0x0

    .line 1929
    .local v12, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    packed-switch v31, :pswitch_data_0

    .line 1939
    .end local v12    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_9
    :pswitch_0
    if-eqz v12, :cond_18

    .line 1940
    const/4 v4, 0x0

    array-length v5, v12

    :goto_a
    if-ge v4, v5, :cond_18

    aget-object v49, v12, v4

    .line 1941
    .restart local v49    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v49, :cond_13

    .line 1942
    invoke-virtual/range {v49 .. v49}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1940
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1927
    .end local v49    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_14
    const/16 v4, 0x80

    move/from16 v0, v31

    if-eq v0, v4, :cond_12

    .line 1968
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    .line 1969
    .local v52, "time_1":J
    const-string/jumbo v4, "PduPersister"

    const-string/jumbo v5, "persist pdu begin "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const-string/jumbo v4, "need_notify"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1975
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mBackupRestore:Z

    if-eqz v4, :cond_15

    .line 1976
    const-string/jumbo v4, "seen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1979
    :cond_15
    const/16 v45, -0x1

    .line 1980
    .local v45, "sub_id":I
    const/16 v30, 0x0

    .line 1982
    .local v30, "locked":I
    if-eqz p3, :cond_16

    .line 1983
    const-string/jumbo v4, "sub_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 1984
    const-string/jumbo v4, "locked"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1987
    :cond_16
    const-string/jumbo v4, "sub_id"

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1988
    const-string/jumbo v4, "locked"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1991
    const/4 v6, 0x0

    .line 1992
    .local v6, "res":Landroid/net/Uri;
    if-eqz v22, :cond_1b

    .line 1993
    move-object/from16 v6, p2

    .line 1994
    .local v6, "res":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2005
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    .line 2007
    .local v54, "time_2":J
    sub-long v40, v54, v52

    .line 2009
    .local v40, "persistPdu_t":J
    const-string/jumbo v4, "MMSLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BR_TEST: parse time persistPdu="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v40

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const-string/jumbo v4, "PduPersister"

    const-string/jumbo v5, "persist address begin "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    .line 2018
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    const/4 v4, 0x0

    array-length v8, v5

    :goto_d
    if-ge v4, v8, :cond_1d

    aget v10, v5, v4

    .line 2019
    .restart local v10    # "addrType":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 2020
    .local v12, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_17

    .line 2021
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2018
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1932
    .end local v6    # "res":Landroid/net/Uri;
    .end local v10    # "addrType":I
    .end local v30    # "locked":I
    .end local v40    # "persistPdu_t":J
    .end local v45    # "sub_id":I
    .end local v52    # "time_1":J
    .end local v54    # "time_2":J
    .local v12, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_1
    const/16 v4, 0x89

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v12, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .local v12, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto/16 :goto_9

    .line 1935
    .local v12, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_2
    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v12, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .local v12, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto/16 :goto_9

    .line 1947
    .end local v12    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    .line 1950
    .restart local v52    # "time_1":J
    const/4 v14, 0x0

    .line 1951
    .local v14, "backupRestore":Ljava/lang/String;
    if-eqz p3, :cond_19

    .line 1952
    const-string/jumbo v4, "index"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "backupRestore":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1956
    :cond_19
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1957
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v43

    invoke-static {v4, v0, v14}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)J

    move-result-wide v50

    .line 1958
    .local v50, "threadId":J
    const-string/jumbo v4, "thread_id"

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1961
    .end local v50    # "threadId":J
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    .line 1963
    .restart local v54    # "time_2":J
    sub-long v24, v54, v52

    .line 1965
    .local v24, "getThreadId_t":J
    const-string/jumbo v4, "MMSLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BR_TEST: getThreadId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1996
    .end local v24    # "getThreadId_t":J
    .end local v54    # "time_2":J
    .local v6, "res":Landroid/net/Uri;
    .restart local v30    # "locked":I
    .restart local v45    # "sub_id":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-static {v4, v5, v0, v7}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1997
    .local v6, "res":Landroid/net/Uri;
    if-nez v6, :cond_1c

    .line 1998
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string/jumbo v5, "persist() failed: return null."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2002
    :cond_1c
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v32

    goto/16 :goto_c

    .line 2025
    .restart local v40    # "persistPdu_t":J
    .restart local v54    # "time_2":J
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    .line 2027
    sub-long v36, v54, v52

    .line 2029
    .local v36, "persistAddress_t":J
    const-string/jumbo v4, "MMSLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BR_TEST: parse time persistAddress="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    const-string/jumbo v4, "PduPersister"

    const-string/jumbo v5, "persist part begin "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v4, :cond_1f

    .line 2038
    nop

    nop

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v15

    .line 2040
    .local v15, "body":Lcom/google/android/mms/pdu/PduBody;
    if-eqz v15, :cond_1f

    .line 2041
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v35

    .line 2043
    .local v35, "partsNum":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    .line 2045
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_e
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_1e

    .line 2046
    move/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v34

    .line 2047
    .local v34, "part":Lcom/google/android/mms/pdu/PduPart;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    .line 2045
    add-int/lit8 v27, v27, 0x1

    goto :goto_e

    .line 2050
    .end local v34    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    .line 2051
    sub-long v38, v54, v52

    .line 2052
    .local v38, "persistPart_t":J
    const-string/jumbo v4, "MMSLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BR_TEST: parse time PersistPart="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v38

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    .end local v15    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v27    # "i":I
    .end local v35    # "partsNum":I
    .end local v38    # "persistPart_t":J
    :cond_1f
    if-nez v22, :cond_20

    .line 2062
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2064
    :cond_20
    return-object v6

    .line 1929
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 330
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 332
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 333
    .local v1, "charsetColumnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 334
    .local v0, "charset":I
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 335
    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 334
    invoke-direct {v3, v0, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 336
    .local v3, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 329
    .end local v0    # "charset":I
    .end local v1    # "charsetColumnIndex":I
    .end local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 361
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 363
    .local v0, "l":J
    invoke-virtual {p3, v0, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 360
    .end local v0    # "l":J
    :cond_0
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 354
    .local v0, "b":I
    invoke-virtual {p3, v0, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 351
    .end local v0    # "b":I
    :cond_0
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 343
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 345
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 342
    :cond_0
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 1715
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "iso-8859-1"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1721
    :catch_0
    move-exception v1

    .line 1722
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, ""

    return-object v2

    .line 1716
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1718
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "PduPersister"

    const-string/jumbo v3, "ISO_8859_1 must be supported!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1719
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 5
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1068
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1072
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1066
    return-void
.end method

.method private updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v4, 0x0

    .line 1194
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1196
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    .line 1197
    .local v6, "charset":I
    if-eqz v6, :cond_0

    .line 1198
    const-string/jumbo v0, "chset"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1201
    :cond_0
    const/4 v7, 0x0

    .line 1202
    .local v7, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1203
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    .line 1204
    .local v7, "contentType":Ljava/lang/String;
    const-string/jumbo v0, "ct"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1210
    new-instance v8, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 1211
    .local v8, "fileName":Ljava/lang/String;
    const-string/jumbo v0, "fn"

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1215
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 1216
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v0, "name"

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    .line 1220
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1221
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1222
    const-string/jumbo v1, "cd"

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    .end local v10    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1226
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1227
    .restart local v10    # "value":Ljava/lang/Object;
    const-string/jumbo v1, "cid"

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    .end local v10    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1231
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1232
    .restart local v10    # "value":Ljava/lang/Object;
    const-string/jumbo v1, "cl"

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    .end local v10    # "value":Ljava/lang/Object;
    :cond_5
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1240
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    if-nez v0, :cond_6

    .line 1241
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eq p1, v0, :cond_7

    .line 1242
    :cond_6
    invoke-direct {p0, p2, p1, v7, p3}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1193
    :cond_7
    return-void

    .line 1206
    .local v7, "contentType":Ljava/lang/String;
    :cond_8
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string/jumbo v1, "MIME type of the part must be set."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPendingMessages(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "dueTime"    # J

    .prologue
    .line 1752
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1753
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "protocol"

    const-string/jumbo v1, "mms"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1755
    const-string/jumbo v4, "err_type < ? AND due_time <= ?"

    .line 1758
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    .line 1759
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 1760
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    .line 1763
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1764
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1765
    const-string/jumbo v6, "due_time"

    .line 1764
    const/4 v3, 0x0

    .line 1763
    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 32
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 574
    const/16 v27, 0x0

    .line 575
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    const/4 v14, 0x0

    .line 576
    .local v14, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    const/16 v21, 0x0

    .line 577
    .local v21, "msgBox":I
    const-wide/16 v30, -0x1

    .line 579
    .local v30, "threadId":J
    :try_start_0
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 580
    :try_start_1
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 585
    :try_start_2
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v4}, Lcom/google/android/mms/util/PduCache;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    :goto_0
    :try_start_3
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    move-object v14, v0

    .line 590
    .local v14, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v14, :cond_0

    .line 591
    invoke-virtual {v14}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 728
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 735
    :try_start_5
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 736
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v6}, Lcom/google/android/mms/util/PduCache;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v5

    .line 591
    return-object v4

    .line 586
    .local v14, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :catch_0
    move-exception v16

    .line 587
    .local v16, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v4, "PduPersister"

    const-string/jumbo v6, "load: "

    move-object/from16 v0, v16

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 579
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_7
    monitor-exit v5

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 727
    :catchall_1
    move-exception v4

    .line 728
    .end local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_2
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 735
    :try_start_8
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 736
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v6}, Lcom/google/android/mms/util/PduCache;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    monitor-exit v5

    .line 727
    throw v4

    .line 728
    .local v14, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_0
    move-object v15, v14

    .line 596
    .local v15, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :try_start_9
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    monitor-exit v5

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 600
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    .line 599
    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 601
    .local v13, "c":Landroid/database/Cursor;
    new-instance v19, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 603
    .local v19, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result-wide v22

    .line 606
    .local v22, "msgId":J
    if-eqz v13, :cond_1

    :try_start_b
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 607
    :cond_1
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 649
    :catchall_3
    move-exception v4

    .line 650
    if-eqz v13, :cond_2

    .line 651
    :try_start_c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 649
    :cond_2
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 727
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v22    # "msgId":J
    .end local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catchall_4
    move-exception v4

    move-object v14, v15

    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    goto :goto_2

    .line 606
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v22    # "msgId":J
    .restart local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_3
    :try_start_d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 610
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 611
    const/4 v4, 0x2

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 613
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    .line 614
    .local v28, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "e$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 616
    .local v17, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 615
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v5, v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_3

    .line 619
    .end local v17    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    .line 620
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 622
    .restart local v17    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v5, v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_4

    .line 625
    .end local v17    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    .line 626
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 628
    .restart local v17    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 627
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v5, v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_5

    .line 631
    .end local v17    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    .line 632
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 634
    .restart local v17    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 633
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v5, v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_6

    .line 638
    .end local v17    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mBackupRestore:Z

    if-eqz v4, :cond_8

    .line 639
    const-string/jumbo v4, "PduPersister"

    const-string/jumbo v5, "load for backuprestore"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/16 v4, 0x1b

    invoke-interface {v13, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 641
    const/16 v4, 0x1b

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 642
    .local v11, "b":I
    const-string/jumbo v4, "PduPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v4, 0x1

    if-ne v11, v4, :cond_8

    .line 644
    const/16 v4, 0x80

    const/16 v5, 0x9b

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 650
    .end local v11    # "b":I
    :cond_8
    if-eqz v13, :cond_9

    .line 651
    :try_start_e
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 656
    :cond_9
    const-wide/16 v4, -0x1

    cmp-long v4, v22, v4

    if-nez v4, :cond_a

    .line 657
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string/jumbo v5, "Error! ID of the message: -1."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 661
    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V

    .line 663
    const/16 v4, 0x8c

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v24

    .line 664
    .local v24, "msgType":I
    new-instance v12, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 668
    .local v12, "body":Lcom/google/android/mms/pdu/PduBody;
    const/16 v4, 0x84

    move/from16 v0, v24

    if-eq v0, v4, :cond_b

    .line 669
    const/16 v4, 0x80

    move/from16 v0, v24

    if-ne v0, v4, :cond_c

    .line 670
    :cond_b
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->loadParts(J)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v25

    .line 671
    .local v25, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v25, :cond_c

    .line 672
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    .line 673
    .local v26, "partsNum":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 674
    aget-object v4, v25, v20

    invoke-virtual {v12, v4}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 673
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 679
    .end local v20    # "i":I
    .end local v25    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local v26    # "partsNum":I
    :cond_c
    packed-switch v24, :pswitch_data_0

    .line 724
    new-instance v4, Lcom/google/android/mms/MmsException;

    .line 725
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 724
    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 681
    :pswitch_0
    new-instance v27, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 728
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_8
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 729
    if-eqz v27, :cond_f

    .line 730
    :try_start_f
    sget-boolean v4, Lcom/google/android/mms/pdu/PduPersister;->-assertionsDisabled:Z

    if-nez v4, :cond_e

    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    :goto_9
    if-nez v4, :cond_e

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 728
    :catchall_5
    move-exception v4

    move-object v14, v15

    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :goto_a
    monitor-exit v5

    throw v4

    .line 684
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1
    :try_start_10
    new-instance v27, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 685
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 687
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_2
    new-instance v27, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 688
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 690
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_3
    new-instance v27, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 691
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 693
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_4
    new-instance v27, Lcom/google/android/mms/pdu/SendReq;

    .end local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 694
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 696
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_5
    new-instance v27, Lcom/google/android/mms/pdu/AcknowledgeInd;

    .end local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 697
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 699
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_6
    new-instance v27, Lcom/google/android/mms/pdu/NotifyRespInd;

    .end local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 700
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 702
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_7
    new-instance v27, Lcom/google/android/mms/pdu/ReadRecInd;

    .end local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 703
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 720
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_8
    new-instance v4, Lcom/google/android/mms/MmsException;

    .line 721
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 720
    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 730
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_d
    const/4 v4, 0x0

    goto :goto_9

    .line 732
    :cond_e
    :try_start_11
    new-instance v14, Lcom/google/android/mms/util/PduCacheEntry;

    move-object/from16 v0, v27

    move/from16 v1, v21

    move-wide/from16 v2, v30

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 733
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :try_start_12
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v14}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 735
    :goto_b
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 736
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v4}, Lcom/google/android/mms/util/PduCache;->notifyAll()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    monitor-exit v5

    .line 739
    return-object v27

    .line 728
    .end local v12    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v18    # "e$iterator":Ljava/util/Iterator;
    .end local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v22    # "msgId":J
    .end local v24    # "msgType":I
    .end local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v28    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :catchall_6
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v12    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v18    # "e$iterator":Ljava/util/Iterator;
    .restart local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v22    # "msgId":J
    .restart local v24    # "msgType":I
    .restart local v27    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v28    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :catchall_7
    move-exception v4

    goto/16 :goto_a

    .line 579
    .end local v12    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v18    # "e$iterator":Ljava/util/Iterator;
    .end local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v22    # "msgId":J
    .end local v24    # "msgType":I
    .end local v28    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catchall_8
    move-exception v4

    move-object v14, v15

    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    goto/16 :goto_1

    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v12    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v18    # "e$iterator":Ljava/util/Iterator;
    .restart local v19    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v22    # "msgId":J
    .restart local v24    # "msgType":I
    .local v27, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v28    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_f
    move-object v14, v15

    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    goto :goto_b

    .line 679
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public load(Landroid/net/Uri;Z)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "backupRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1772
    const-string/jumbo v0, "MMSLog"

    const-string/jumbo v1, "load for backuprestore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduPersister;->mBackupRestore:Z

    .line 1774
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    return-object v0
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p1, "from"    # Landroid/net/Uri;
    .param p2, "to"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1689
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 1690
    .local v8, "msgId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    .line 1691
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string/jumbo v1, "Error! ID of the message: -1."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1695
    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1696
    .local v6, "msgBox":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 1697
    new-instance v0, Lcom/google/android/mms/MmsException;

    .line 1698
    const-string/jumbo v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    .line 1697
    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1704
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1705
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "msg_box"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1706
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1707
    invoke-static {p2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1347
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 2
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "backupRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1780
    const-string/jumbo v0, "MMSLog"

    const-string/jumbo v1, "persist for backuprestore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iput-boolean p3, p0, Lcom/google/android/mms/pdu/PduPersister;->mBackupRestore:Z

    .line 1782
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZ)Landroid/net/Uri;
    .locals 6
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1342
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    .locals 49
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1365
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    if-nez p2, :cond_0

    .line 1366
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string/jumbo v7, "Uri may not be null."

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1368
    :cond_0
    const-wide/16 v38, -0x1

    .line 1370
    .local v38, "msgId":J
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v38

    .line 1374
    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v6, v38, v6

    if-eqz v6, :cond_1

    const/16 v30, 0x1

    .line 1376
    .local v30, "existingUri":Z
    :goto_1
    if-nez v30, :cond_2

    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1377
    new-instance v6, Lcom/google/android/mms/MmsException;

    .line 1378
    const-string/jumbo v7, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    .line 1377
    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1371
    .end local v30    # "existingUri":Z
    :catch_0
    move-exception v26

    .local v26, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1374
    .end local v26    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/16 v30, 0x0

    .restart local v30    # "existingUri":Z
    goto :goto_1

    .line 1383
    :cond_2
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v7

    .line 1386
    :try_start_1
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    .line 1391
    :try_start_2
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v6}, Lcom/google/android/mms/util/PduCache;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_2
    monitor-exit v7

    .line 1397
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1398
    const-string/jumbo v6, "PduPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "persist uri "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v32

    .line 1400
    .local v32, "header":Lcom/google/android/mms/pdu/PduHeaders;
    const/16 v20, 0x0

    .line 1401
    .local v20, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1404
    .local v9, "values":Landroid/content/ContentValues;
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v43

    .line 1405
    .local v43, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "e$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 1406
    .local v27, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 1407
    .local v31, "field":I
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v29

    .line 1408
    .local v29, "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v29, :cond_4

    .line 1409
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1410
    .local v21, "charsetColumn":Ljava/lang/String;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1392
    .end local v9    # "values":Landroid/content/ContentValues;
    .end local v20    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v21    # "charsetColumn":Ljava/lang/String;
    .end local v27    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v28    # "e$iterator":Ljava/util/Iterator;
    .end local v29    # "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v31    # "field":I
    .end local v32    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v43    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :catch_1
    move-exception v23

    .line 1393
    .local v23, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v6, "PduPersister"

    const-string/jumbo v10, "persist1: "

    move-object/from16 v0, v23

    invoke-static {v6, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 1383
    .end local v23    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1415
    .restart local v9    # "values":Landroid/content/ContentValues;
    .restart local v20    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v28    # "e$iterator":Ljava/util/Iterator;
    .restart local v32    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v43    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_5
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v43

    .line 1416
    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_6
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 1417
    .restart local v27    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v44

    .line 1418
    .local v44, "text":[B
    if-eqz v44, :cond_6

    .line 1419
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v44 .. v44}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1423
    .end local v27    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v44    # "text":[B
    :cond_7
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v43

    .line 1424
    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_8
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 1425
    .restart local v27    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v19

    .line 1426
    .local v19, "b":I
    if-eqz v19, :cond_8

    .line 1427
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 1432
    .end local v19    # "b":I
    .end local v27    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mBackupRestore:Z

    if-eqz v6, :cond_a

    .line 1433
    const-string/jumbo v6, "PduPersister"

    const-string/jumbo v7, "add READ"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const/16 v6, 0x9b

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v19

    .line 1435
    .restart local v19    # "b":I
    const-string/jumbo v6, "PduPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "READ="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    if-nez v19, :cond_c

    .line 1437
    const-string/jumbo v6, "read"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1446
    .end local v19    # "b":I
    :cond_a
    :goto_6
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v43

    .line 1447
    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_b
    :goto_7
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 1448
    .restart local v27    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v34

    .line 1449
    .local v34, "l":J
    const-wide/16 v6, -0x1

    cmp-long v6, v34, v6

    if-eqz v6, :cond_b

    .line 1450
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7

    .line 1438
    .end local v27    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v34    # "l":J
    .restart local v19    # "b":I
    :cond_c
    const/16 v6, 0x80

    move/from16 v0, v19

    if-ne v0, v6, :cond_d

    .line 1439
    const-string/jumbo v6, "read"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 1441
    :cond_d
    const-string/jumbo v6, "read"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 1455
    .end local v19    # "b":I
    :cond_e
    new-instance v17, Ljava/util/HashMap;

    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v6, v6

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 1457
    .local v17, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    const/4 v6, 0x0

    array-length v10, v7

    :goto_8
    if-ge v6, v10, :cond_11

    aget v16, v7, v6

    .line 1458
    .local v16, "addrType":I
    const/16 v18, 0x0

    .line 1459
    .local v18, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v11, 0x89

    move/from16 v0, v16

    if-ne v0, v11, :cond_10

    .line 1460
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v48

    .line 1461
    .local v48, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v48, :cond_f

    .line 1462
    const/4 v11, 0x1

    new-array v0, v11, [Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v18, v0

    .line 1463
    .local v18, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v11, 0x0

    aput-object v48, v18, v11

    .line 1468
    .end local v18    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v48    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_f
    :goto_9
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1466
    .local v18, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_10
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .local v18, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_9

    .line 1471
    .end local v16    # "addrType":I
    .end local v18    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_11
    new-instance v42, Ljava/util/HashSet;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashSet;-><init>()V

    .line 1472
    .local v42, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v37

    .line 1477
    .local v37, "msgType":I
    const/16 v6, 0x82

    move/from16 v0, v37

    if-eq v0, v6, :cond_12

    .line 1478
    const/16 v6, 0x84

    move/from16 v0, v37

    if-ne v0, v6, :cond_18

    .line 1480
    :cond_12
    :goto_a
    const/16 v18, 0x0

    .line 1481
    .local v18, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    packed-switch v37, :pswitch_data_0

    .line 1505
    :cond_13
    :goto_b
    :pswitch_0
    const-wide/16 v46, 0x0

    .line 1506
    .local v46, "threadId":J
    if-eqz p3, :cond_14

    invoke-virtual/range {v42 .. v42}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1511
    :cond_14
    :goto_c
    const-string/jumbo v6, "thread_id"

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1513
    .end local v18    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v46    # "threadId":J
    :cond_15
    const-string/jumbo v6, "PduPersister"

    const-string/jumbo v7, "persist part begin "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1519
    .local v24, "dummyId":J
    const/16 v45, 0x1

    .line 1522
    .local v45, "textOnly":Z
    const/16 v36, 0x0

    .line 1525
    .local v36, "messageSize":I
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v6, :cond_1b

    .line 1526
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v20

    .line 1528
    .local v20, "body":Lcom/google/android/mms/pdu/PduBody;
    if-eqz v20, :cond_1b

    .line 1529
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v41

    .line 1530
    .local v41, "partsNum":I
    const/4 v6, 0x2

    move/from16 v0, v41

    if-le v0, v6, :cond_16

    .line 1535
    const/16 v45, 0x0

    .line 1537
    :cond_16
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_d
    move/from16 v0, v33

    move/from16 v1, v41

    if-ge v0, v1, :cond_1b

    .line 1538
    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v40

    .line 1539
    .local v40, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/mms/pdu/PduPart;->getDataLength()I

    move-result v6

    add-int v36, v36, v6

    .line 1540
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v24

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    .line 1544
    invoke-static/range {v40 .. v40}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v22

    .line 1545
    .local v22, "contentType":Ljava/lang/String;
    if-eqz v22, :cond_17

    const-string/jumbo v6, "application/smil"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1537
    :cond_17
    :goto_e
    add-int/lit8 v33, v33, 0x1

    goto :goto_d

    .line 1479
    .end local v22    # "contentType":Ljava/lang/String;
    .end local v24    # "dummyId":J
    .end local v33    # "i":I
    .end local v36    # "messageSize":I
    .end local v40    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v41    # "partsNum":I
    .end local v45    # "textOnly":Z
    .local v20, "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_18
    const/16 v6, 0x80

    move/from16 v0, v37

    if-ne v0, v6, :cond_15

    goto :goto_a

    .line 1484
    .restart local v18    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_1
    const/16 v6, 0x89

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v17

    invoke-direct {v0, v6, v1, v2, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1492
    if-eqz p4, :cond_13

    .line 1493
    const/16 v6, 0x97

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v17

    invoke-direct {v0, v6, v1, v2, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1498
    const/16 v6, 0x82

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v17

    invoke-direct {v0, v6, v1, v2, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    goto/16 :goto_b

    .line 1502
    :pswitch_2
    const/16 v6, 0x97

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v17

    invoke-direct {v0, v6, v1, v2, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    goto/16 :goto_b

    .line 1509
    .restart local v46    # "threadId":J
    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    invoke-static {v6, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v46

    goto/16 :goto_c

    .line 1546
    .end local v18    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v46    # "threadId":J
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .local v20, "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v22    # "contentType":Ljava/lang/String;
    .restart local v24    # "dummyId":J
    .restart local v33    # "i":I
    .restart local v36    # "messageSize":I
    .restart local v40    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v41    # "partsNum":I
    .restart local v45    # "textOnly":Z
    :cond_1a
    const-string/jumbo v6, "text/plain"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 1547
    const/16 v45, 0x0

    goto :goto_e

    .line 1554
    .end local v20    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v22    # "contentType":Ljava/lang/String;
    .end local v33    # "i":I
    .end local v40    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v41    # "partsNum":I
    :cond_1b
    const-string/jumbo v7, "text_only"

    if-eqz v45, :cond_1f

    const/4 v6, 0x1

    :goto_f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1557
    const-string/jumbo v6, "m_size"

    invoke-virtual {v9, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_1c

    .line 1558
    const-string/jumbo v6, "m_size"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1561
    :cond_1c
    const-string/jumbo v6, "PduPersister"

    const-string/jumbo v7, "persist pdu begin "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const-string/jumbo v6, "need_notify"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1567
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mBackupRestore:Z

    if-eqz v6, :cond_1d

    .line 1568
    const-string/jumbo v6, "seen"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1572
    :cond_1d
    const/4 v8, 0x0

    .line 1573
    .local v8, "res":Landroid/net/Uri;
    if-eqz v30, :cond_20

    .line 1574
    move-object/from16 v8, p2

    .line 1575
    .local v8, "res":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1588
    :goto_10
    const-string/jumbo v6, "PduPersister"

    const-string/jumbo v7, "persist address begin "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    const/4 v6, 0x0

    array-length v10, v7

    :goto_11
    if-ge v6, v10, :cond_22

    aget v16, v7, v6

    .line 1591
    .restart local v16    # "addrType":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1592
    .local v18, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v18, :cond_1e

    .line 1593
    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move/from16 v3, v16

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1590
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 1554
    .end local v8    # "res":Landroid/net/Uri;
    .end local v16    # "addrType":I
    .end local v18    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1f
    const/4 v6, 0x0

    goto :goto_f

    .line 1577
    .local v8, "res":Landroid/net/Uri;
    :cond_20
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0, v9}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1578
    .local v8, "res":Landroid/net/Uri;
    if-nez v8, :cond_21

    .line 1579
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string/jumbo v7, "persist() failed: return null."

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1583
    :cond_21
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v38

    goto :goto_10

    .line 1598
    :cond_22
    const-string/jumbo v6, "PduPersister"

    const-string/jumbo v7, "persist update part begin "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    new-instance v9, Landroid/content/ContentValues;

    .end local v9    # "values":Landroid/content/ContentValues;
    const/4 v6, 0x1

    invoke-direct {v9, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1600
    .restart local v9    # "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "mid"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1602
    const-string/jumbo v6, "need_notify"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1605
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "content://mms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/part"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1606
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v9

    .line 1604
    invoke-static/range {v10 .. v15}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1609
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1610
    const-string/jumbo v6, "PduPersister"

    const-string/jumbo v7, "persist purge end "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    if-nez v30, :cond_23

    .line 1618
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1629
    :cond_23
    return-object v8

    .line 1481
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public persistEx(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Ljava/util/HashMap;)Landroid/net/Uri;
    .locals 2
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1796
    .local p3, "attach":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "MMSLog"

    const-string/jumbo v1, "Call persist_ex 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/mms/pdu/PduPersister;->persistForBackupRestore(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Ljava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persistEx(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZLjava/util/HashMap;)Landroid/net/Uri;
    .locals 2
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "backupRestore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1804
    .local p4, "attach":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "MMSLog"

    const-string/jumbo v1, "Call persist_ex 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    iput-boolean p3, p0, Lcom/google/android/mms/pdu/PduPersister;->mBackupRestore:Z

    .line 1806
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistForBackupRestore(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Ljava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;
    .locals 10
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 770
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "content://mms/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/part"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 771
    .local v5, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 778
    .local v7, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 782
    const-string/jumbo v8, "image/jpg"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 783
    const-string/jumbo v1, "image/jpeg"

    .line 786
    :cond_0
    const-string/jumbo v8, "ct"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string/jumbo v8, "application/smil"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 789
    const-string/jumbo v8, "seq"

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v0

    .line 798
    .local v0, "charset":I
    if-eqz v0, :cond_2

    .line 799
    const-string/jumbo v8, "application/smil"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 800
    const-string/jumbo v8, "chset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 805
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v8

    if-eqz v8, :cond_3

    .line 806
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    .line 807
    .local v2, "fileName":Ljava/lang/String;
    const-string/jumbo v8, "fn"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v8

    if-eqz v8, :cond_4

    .line 811
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    .line 812
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    .line 816
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v8

    if-eqz v8, :cond_5

    .line 817
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 818
    const-string/jumbo v9, "cd"

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .end local v6    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    if-eqz v8, :cond_6

    .line 822
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 823
    .restart local v6    # "value":Ljava/lang/Object;
    const-string/jumbo v9, "cid"

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .end local v6    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v8

    if-eqz v8, :cond_7

    .line 827
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 828
    .restart local v6    # "value":Ljava/lang/Object;
    const-string/jumbo v9, "cl"

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    .end local v6    # "value":Ljava/lang/Object;
    :cond_7
    iget-object v8, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v9, v5, v7}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 832
    .local v4, "res":Landroid/net/Uri;
    if-nez v4, :cond_9

    .line 833
    new-instance v8, Lcom/google/android/mms/MmsException;

    const-string/jumbo v9, "Failed to persist part, return null."

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 792
    .end local v0    # "charset":I
    .end local v4    # "res":Landroid/net/Uri;
    :cond_8
    new-instance v8, Lcom/google/android/mms/MmsException;

    const-string/jumbo v9, "MIME type of the part must be set."

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 836
    .restart local v0    # "charset":I
    .restart local v4    # "res":Landroid/net/Uri;
    :cond_9
    invoke-direct {p0, p1, v4, v1, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 839
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 841
    return-object v4
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1744
    const-string/jumbo v1, "content://mms/9223372036854775807/part"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1745
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1743
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 34
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;

    .prologue
    .line 1083
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1086
    :try_start_0
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1091
    :try_start_1
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v4}, Lcom/google/android/mms/util/PduCache;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v5

    .line 1097
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1099
    new-instance v7, Landroid/content/ContentValues;

    const/16 v4, 0xa

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1100
    .local v7, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v12

    .line 1101
    .local v12, "contentType":[B
    if-eqz v12, :cond_1

    .line 1102
    const-string/jumbo v4, "ct_t"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v14

    .line 1106
    .local v14, "date":J
    const-wide/16 v4, -0x1

    cmp-long v4, v14, v4

    if-eqz v4, :cond_2

    .line 1107
    const-string/jumbo v4, "date"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1110
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v13

    .line 1111
    .local v13, "deliveryReport":I
    if-eqz v13, :cond_3

    .line 1112
    const-string/jumbo v4, "d_rpt"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1115
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v18

    .line 1116
    .local v18, "expiry":J
    const-wide/16 v4, -0x1

    cmp-long v4, v18, v4

    if-eqz v4, :cond_4

    .line 1117
    const-string/jumbo v4, "exp"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1120
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v22

    .line 1121
    .local v22, "msgClass":[B
    if-eqz v22, :cond_5

    .line 1122
    const-string/jumbo v4, "m_cls"

    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    move-result v23

    .line 1126
    .local v23, "priority":I
    if-eqz v23, :cond_6

    .line 1127
    const-string/jumbo v4, "pri"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1130
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    move-result v26

    .line 1131
    .local v26, "readReport":I
    if-eqz v26, :cond_7

    .line 1132
    const-string/jumbo v4, "rr"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1135
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v29

    .line 1136
    .local v29, "transId":[B
    if-eqz v29, :cond_8

    .line 1137
    const-string/jumbo v4, "tr_id"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 1141
    .local v28, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v28, :cond_c

    .line 1142
    const-string/jumbo v4, "sub"

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const-string/jumbo v4, "sub_cs"

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1148
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v20

    .line 1149
    .local v20, "messageSize":J
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_9

    .line 1150
    const-string/jumbo v4, "m_size"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1153
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v17

    .line 1154
    .local v17, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 1155
    .local v27, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    const/4 v4, 0x0

    array-length v8, v6

    move v5, v4

    :goto_2
    if-ge v5, v8, :cond_10

    aget v10, v6, v5

    .line 1156
    .local v10, "addrType":I
    const/4 v11, 0x0

    .line 1157
    .local v11, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v4, 0x89

    if-ne v10, v4, :cond_d

    .line 1158
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v32

    .line 1159
    .local v32, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v32, :cond_a

    .line 1160
    const/4 v4, 0x1

    new-array v11, v4, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1161
    .local v11, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v4, 0x0

    aput-object v32, v11, v4

    .line 1167
    .end local v11    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v32    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    :goto_3
    if-eqz v11, :cond_e

    .line 1168
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 1169
    .local v24, "msgId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/google/android/mms/pdu/PduPersister;->updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1170
    const/16 v4, 0x97

    if-ne v10, v4, :cond_e

    .line 1171
    const/4 v4, 0x0

    array-length v9, v11

    :goto_4
    if-ge v4, v9, :cond_e

    aget-object v32, v11, v4

    .line 1172
    .restart local v32    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v32, :cond_b

    .line 1173
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1171
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1092
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v10    # "addrType":I
    .end local v12    # "contentType":[B
    .end local v13    # "deliveryReport":I
    .end local v14    # "date":J
    .end local v17    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v18    # "expiry":J
    .end local v20    # "messageSize":J
    .end local v22    # "msgClass":[B
    .end local v23    # "priority":I
    .end local v24    # "msgId":J
    .end local v26    # "readReport":I
    .end local v27    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v28    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29    # "transId":[B
    .end local v32    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v16

    .line 1093
    .local v16, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v4, "PduPersister"

    const-string/jumbo v6, "updateHeaders: "

    move-object/from16 v0, v16

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1083
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1145
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v12    # "contentType":[B
    .restart local v13    # "deliveryReport":I
    .restart local v14    # "date":J
    .restart local v18    # "expiry":J
    .restart local v22    # "msgClass":[B
    .restart local v23    # "priority":I
    .restart local v26    # "readReport":I
    .restart local v28    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v29    # "transId":[B
    :cond_c
    const-string/jumbo v4, "sub"

    const-string/jumbo v5, ""

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1164
    .restart local v10    # "addrType":I
    .local v11, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v17    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v20    # "messageSize":J
    .restart local v27    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v11

    .local v11, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_3

    .line 1179
    .end local v11    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_e
    const/16 v4, 0x82

    if-ne v10, v4, :cond_f

    if-nez v11, :cond_f

    .line 1180
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 1181
    .restart local v24    # "msgId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/google/android/mms/pdu/PduPersister;->updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1155
    .end local v24    # "msgId":J
    :cond_f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    .line 1184
    .end local v10    # "addrType":I
    :cond_10
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v30

    .line 1186
    .local v30, "threadId":J
    const-string/jumbo v4, "thread_id"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1189
    .end local v30    # "threadId":J
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1082
    return-void
.end method

.method public updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V
    .locals 27
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1258
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :try_start_0
    sget-object v23, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1259
    :try_start_1
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v22

    if-eqz v22, :cond_0

    .line 1264
    :try_start_2
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/util/PduCache;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1268
    :goto_0
    :try_start_3
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/mms/util/PduCacheEntry;

    .line 1269
    .local v6, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v6, :cond_0

    .line 1270
    invoke-virtual {v6}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v22

    check-cast v22, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1275
    .end local v6    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_0
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v23

    .line 1278
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    .local v19, "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 1281
    .local v20, "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v17

    .line 1282
    .local v17, "partsNum":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x28

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1283
    .local v10, "filter":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .line 1284
    .local v18, "skippedCount":I
    const/16 v21, 0x0

    .line 1285
    .local v21, "updateCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v11, v0, :cond_4

    .line 1286
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v14

    .line 1287
    .local v14, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v16

    .line 1288
    .local v16, "partUri":Landroid/net/Uri;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "mms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1293
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->needUpdate()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1294
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    add-int/lit8 v21, v21, 0x1

    .line 1303
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    .line 1304
    const-string/jumbo v22, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    :cond_1
    const-string/jumbo v22, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    const-string/jumbo v22, "!="

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1285
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1265
    .end local v10    # "filter":Ljava/lang/StringBuilder;
    .end local v11    # "i":I
    .end local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v16    # "partUri":Landroid/net/Uri;
    .end local v17    # "partsNum":I
    .end local v18    # "skippedCount":I
    .end local v19    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v20    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v21    # "updateCount":I
    :catch_0
    move-exception v7

    .line 1266
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v22, "PduPersister"

    const-string/jumbo v24, "updateParts: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1258
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v22

    :try_start_6
    monitor-exit v23

    throw v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1331
    :catchall_1
    move-exception v22

    .line 1332
    sget-object v23, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v23

    .line 1333
    :try_start_7
    sget-object v24, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1334
    sget-object v24, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/util/PduCache;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v23

    .line 1331
    throw v22

    .line 1289
    .restart local v10    # "filter":Ljava/lang/StringBuilder;
    .restart local v11    # "i":I
    .restart local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v16    # "partUri":Landroid/net/Uri;
    .restart local v17    # "partsNum":I
    .restart local v18    # "skippedCount":I
    .restart local v19    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .restart local v20    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    .restart local v21    # "updateCount":I
    :cond_2
    :try_start_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1297
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1312
    .end local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v16    # "partUri":Landroid/net/Uri;
    :cond_4
    const/16 v22, 0x29

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1315
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 1318
    .local v12, "msgId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    .line 1319
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v25, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v25, "/part"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 1320
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    const/16 v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_4
    const/16 v26, 0x0

    .line 1318
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    move-object/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1323
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "part$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/mms/pdu/PduPart;

    .line 1324
    .restart local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v12, v13, v1}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    goto :goto_5

    .line 1320
    .end local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v15    # "part$iterator":Ljava/util/Iterator;
    :cond_5
    const/16 v22, 0x0

    goto :goto_4

    .line 1328
    .restart local v15    # "part$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "e$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1329
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/Uri;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    .line 1332
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :cond_7
    sget-object v23, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v23

    .line 1333
    :try_start_9
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1334
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/util/PduCache;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v23

    .line 1255
    return-void

    .line 1332
    :catchall_2
    move-exception v22

    monitor-exit v23

    throw v22

    .end local v9    # "e$iterator":Ljava/util/Iterator;
    .end local v10    # "filter":Ljava/lang/StringBuilder;
    .end local v11    # "i":I
    .end local v12    # "msgId":J
    .end local v15    # "part$iterator":Ljava/util/Iterator;
    .end local v17    # "partsNum":I
    .end local v18    # "skippedCount":I
    .end local v19    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v20    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v21    # "updateCount":I
    :catchall_3
    move-exception v22

    monitor-exit v23

    throw v22
.end method
