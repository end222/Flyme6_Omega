.class public abstract Landroid/telecom/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ConnectionService$1;,
        Landroid/telecom/ConnectionService$2;,
        Landroid/telecom/ConnectionService$3;,
        Landroid/telecom/ConnectionService$4;
    }
.end annotation


# static fields
.field private static final MSG_ABORT:I = 0x3

.field private static final MSG_ADD_CONNECTION_SERVICE_ADAPTER:I = 0x1

.field private static final MSG_ANSWER:I = 0x4

.field private static final MSG_ANSWER_VIDEO:I = 0x11

.field private static final MSG_CONFERENCE:I = 0xc

.field private static final MSG_CREATE_CONFERENCE:I = 0x3ed

.field private static final MSG_CREATE_CONNECTION:I = 0x2

.field private static final MSG_DISCONNECT:I = 0x6

.field private static final MSG_ECT:I = 0x3ea

.field private static final MSG_HANGUP_ALL:I = 0x3eb

.field private static final MSG_HOLD:I = 0x7

.field private static final MSG_INVITE_CONFERENCE_PARTICIPANTS:I = 0x3ec

.field private static final MSG_MERGE_CONFERENCE:I = 0x12

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x9

.field private static final MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final MSG_REJECT:I = 0x5

.field private static final MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

.field private static final MSG_SPLIT_FROM_CONFERENCE:I = 0xd

.field private static final MSG_STOP_DTMF_TONE:I = 0xb

.field private static final MSG_SWAP_CONFERENCE:I = 0x13

.field private static final MSG_UNHOLD:I = 0x8

.field private static final MTK_MSG_BASE:I = 0x3e8

.field private static final PII_DEBUG:Z

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.ConnectionService"

.field private static sNullConnection:Landroid/telecom/Connection;


# instance fields
.field private final mAdapter:Landroid/telecom/ConnectionServiceAdapter;

.field private mAreAccountsInitialized:Z

.field private final mBinder:Landroid/os/IBinder;

.field private final mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private final mIdByConference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Conference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Connection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreInitializationConnectionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

.field private sNullConference:Landroid/telecom/Conference;


# direct methods
.method static synthetic -get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/ConnectionService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return v0
.end method

.method static synthetic -get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Landroid/telecom/ConnectionService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    return-object v0
.end method

.method static synthetic -set0(Landroid/telecom/ConnectionService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "connections"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createConnectionIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "conferenceables"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hangupAll(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "conferenceCallId"    # Ljava/lang/String;
    .param p2, "numbers"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->inviteConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/telecom/ConnectionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAccountsInitialized()V

    return-void
.end method

.method static synthetic -wrap15(Landroid/telecom/ConnectionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAdapterAttached()V

    return-void
.end method

.method static synthetic -wrap16(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method static synthetic -wrap17(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic -wrap19(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap20(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V

    return-void
.end method

.method static synthetic -wrap21(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap22(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap23(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap24(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V
    .locals 0
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "conferenceCallId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "numbers"    # Ljava/util/List;
    .param p5, "isIncoming"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 0
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->explicitCallTransfer(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/ConnectionService;->PII_DEBUG:Z

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    .line 136
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    .line 135
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    .line 138
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 143
    new-instance v0, Landroid/telecom/ConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    .line 297
    new-instance v0, Landroid/telecom/ConnectionService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    .line 484
    new-instance v0, Landroid/telecom/ConnectionService$3;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    .line 566
    new-instance v0, Landroid/telecom/ConnectionService$4;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    .line 87
    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 949
    const-string/jumbo v0, "abort %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    const-string/jumbo v0, "abort"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAbort()V

    .line 948
    return-void
.end method

.method private addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .locals 5
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    const/4 v4, 0x0

    .line 1650
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1651
    const-string/jumbo v1, "Re-adding an existing conference: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1660
    :cond_0
    return-object v4

    .line 1652
    :cond_1
    if-eqz p1, :cond_0

    .line 1653
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1654
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1657
    return-object v0
.end method

.method private addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1609
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p2, v0}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1612
    invoke-virtual {p2, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1616
    invoke-virtual {p2}, Landroid/telecom/Connection;->fireOnCallState()V

    .line 1608
    return-void
.end method

.method private addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1603
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1604
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 1605
    return-object v0
.end method

.method private answer(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 960
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Answer"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string/jumbo v0, "answer %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    const-string/jumbo v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAnswer()V

    .line 958
    return-void
.end method

.method private answerVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 954
    const-string/jumbo v0, "answerVideo %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    const-string/jumbo v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 953
    return-void
.end method

.method private conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1047
    const-string/jumbo v4, "CC"

    const-string/jumbo v5, "Conference"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, p1, v6}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string/jumbo v4, "conference %s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1052
    const-string/jumbo v4, "conference"

    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v3

    .line 1053
    .local v3, "connection2":Landroid/telecom/Connection;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v1

    .line 1054
    .local v1, "conference2":Landroid/telecom/Conference;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1055
    const-string/jumbo v4, "conference"

    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v1

    .line 1056
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 1057
    const-string/jumbo v4, "Connection2 or Conference2 missing in conference request %s."

    new-array v5, v8, [Ljava/lang/Object;

    .line 1058
    aput-object p2, v5, v7

    .line 1057
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    return-void

    .line 1064
    :cond_0
    const-string/jumbo v4, "conference"

    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v2

    .line 1065
    .local v2, "connection1":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 1066
    const-string/jumbo v4, "addConnection"

    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 1067
    .local v0, "conference1":Landroid/telecom/Conference;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 1069
    const-string/jumbo v4, "Connection1 or Conference1 missing in conference request %s."

    .line 1068
    new-array v5, v8, [Ljava/lang/Object;

    .line 1070
    aput-object p1, v5, v7

    .line 1068
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :goto_0
    return-void

    .line 1073
    .restart local v0    # "conference1":Landroid/telecom/Conference;
    :cond_1
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 1075
    invoke-virtual {v0, v3}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1078
    :cond_2
    const-string/jumbo v4, "There can only be one conference and an attempt was made to merge two conferences."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    return-void

    .line 1085
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-eq v1, v4, :cond_4

    .line 1087
    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1090
    :cond_4
    invoke-virtual {p0, v2, v3}, Landroid/telecom/ConnectionService;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    goto :goto_0
.end method

.method private createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V
    .locals 19
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "conferenceCallId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p5, "isIncoming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/String;",
            "Landroid/telecom/ConnectionRequest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1183
    .local p4, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "createConference, callManagerAccount: %s, conferenceCallId: %s, request: %s, numbers: %s, isIncoming: %b"

    .line 1182
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 1184
    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    .line 1185
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 1182
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1188
    if-nez p5, :cond_1

    .line 1189
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    .local v18, "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "number$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1191
    .local v16, "number":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1194
    .end local v16    # "number":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/mediatek/telecom/FormattedLog$Builder;

    invoke-direct {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;-><init>()V

    .line 1195
    const-string/jumbo v5, "CC"

    .line 1194
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1196
    invoke-direct/range {p0 .. p0}, Landroid/telecom/ConnectionService;->getConnectionServiceName()Ljava/lang/String;

    move-result-object v5

    .line 1194
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1197
    sget-object v5, Lcom/mediatek/telecom/FormattedLog$OpType;->OPERATION:Lcom/mediatek/telecom/FormattedLog$OpType;

    .line 1194
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1198
    const-string/jumbo v5, "DialConf"

    .line 1194
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setActionName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1199
    const-string/jumbo v5, "conferenceCall"

    .line 1194
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1200
    const-string/jumbo v5, ""

    .line 1194
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "numbers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1194
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setExtraMessage(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;->buildDebugMsg()Lcom/mediatek/telecom/FormattedLog;

    move-result-object v15

    .line 1203
    .local v15, "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    if-eqz v15, :cond_1

    .line 1204
    invoke-virtual {v15}, Lcom/mediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1210
    .end local v15    # "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    .end local v17    # "number$iterator":Ljava/util/Iterator;
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual/range {p0 .. p5}, Landroid/telecom/ConnectionService;->onCreateConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)Landroid/telecom/Conference;

    move-result-object v2

    .line 1217
    .local v2, "conference":Landroid/telecom/Conference;
    if-nez v2, :cond_3

    .line 1218
    const-string/jumbo v4, "Fail to create conference!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1219
    invoke-direct/range {p0 .. p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v2

    .line 1230
    :cond_2
    :goto_1
    new-instance v3, Landroid/telecom/ParcelableConference;

    .line 1231
    invoke-virtual {v2}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 1232
    invoke-virtual {v2}, Landroid/telecom/Conference;->getState()I

    move-result v5

    .line 1233
    invoke-virtual {v2}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v6

    .line 1235
    invoke-virtual {v2}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1236
    const/4 v8, 0x0

    .line 1237
    :goto_2
    invoke-virtual {v2}, Landroid/telecom/Conference;->getVideoState()I

    move-result v9

    .line 1238
    invoke-virtual {v2}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v10

    .line 1239
    invoke-virtual {v2}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v12

    .line 1240
    invoke-virtual {v2}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 1241
    invoke-virtual {v2}, Landroid/telecom/Conference;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v14

    .line 1234
    const/4 v7, 0x0

    .line 1230
    invoke-direct/range {v3 .. v14}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/telecom/DisconnectCause;)V

    .line 1243
    .local v3, "parcelableConference":Landroid/telecom/ParcelableConference;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1, v3}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V

    .line 1181
    return-void

    .line 1220
    .end local v3    # "parcelableConference":Landroid/telecom/ParcelableConference;
    :cond_3
    invoke-virtual {v2}, Landroid/telecom/Conference;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    .line 1221
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1222
    const-string/jumbo v4, "Re-adding an existing conference: %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1224
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_1

    .line 1236
    :cond_5
    invoke-virtual {v2}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v8

    goto :goto_2
.end method

.method private createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 28
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .prologue
    .line 800
    const-string/jumbo v4, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 801
    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 802
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    .line 800
    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    if-nez p4, :cond_1

    .line 806
    const/16 v23, 0x0

    .line 807
    .local v23, "callNumber":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 808
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v23

    .line 810
    .end local v23    # "callNumber":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/mediatek/telecom/FormattedLog$Builder;

    invoke-direct {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;-><init>()V

    .line 811
    const-string/jumbo v6, "CC"

    .line 810
    invoke-virtual {v4, v6}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 812
    invoke-direct/range {p0 .. p0}, Landroid/telecom/ConnectionService;->getConnectionServiceName()Ljava/lang/String;

    move-result-object v6

    .line 810
    invoke-virtual {v4, v6}, Lcom/mediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 813
    sget-object v6, Lcom/mediatek/telecom/FormattedLog$OpType;->OPERATION:Lcom/mediatek/telecom/FormattedLog$OpType;

    .line 810
    invoke-virtual {v4, v6}, Lcom/mediatek/telecom/FormattedLog$Builder;->setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 814
    const-string/jumbo v6, "Dial"

    .line 810
    invoke-virtual {v4, v6}, Lcom/mediatek/telecom/FormattedLog$Builder;->setActionName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 816
    const-string/jumbo v6, ""

    .line 810
    invoke-virtual {v4, v6}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;->buildDebugMsg()Lcom/mediatek/telecom/FormattedLog;

    move-result-object v25

    .line 818
    .local v25, "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    if-eqz v25, :cond_1

    .line 819
    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    .end local v25    # "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    :cond_1
    if-eqz p5, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v24

    .line 827
    .local v24, "connection":Landroid/telecom/Connection;
    :goto_0
    const-string/jumbo v4, "createConnection, connection: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v24, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    if-nez v24, :cond_2

    .line 830
    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/telecom/DisconnectCause;-><init>(I)V

    .line 829
    invoke-static {v4}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v24

    .line 833
    :cond_2
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getState()I

    move-result v4

    const/4 v6, 0x6

    if-eq v4, v6, :cond_3

    .line 834
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 837
    :cond_3
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v22

    .line 838
    .local v22, "address":Landroid/net/Uri;
    if-nez v22, :cond_7

    const-string/jumbo v26, "null"

    .line 839
    .local v26, "number":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, "createConnection, number: %s, state: %s, capabilities: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 840
    invoke-static/range {v26 .. v26}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 841
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getState()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 842
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 839
    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    const-string/jumbo v4, "createConnection, calling handleCreateConnectionSuccessful %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 846
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 847
    .local v5, "handle":Landroid/telecom/PhoneAccountHandle;
    if-nez v5, :cond_8

    .line 848
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 853
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v27, v0

    .line 856
    new-instance v4, Landroid/telecom/ParcelableConnection;

    .line 860
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getState()I

    move-result v6

    .line 861
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    .line 862
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v8

    .line 863
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v9

    .line 864
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 865
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v11

    .line 866
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v12

    if-nez v12, :cond_9

    .line 867
    const/4 v12, 0x0

    .line 868
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getVideoState()I

    move-result v13

    .line 869
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v14

    .line 870
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v15

    .line 871
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v16

    .line 872
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v18

    .line 873
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v19

    .line 874
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 875
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .line 856
    invoke-direct/range {v4 .. v21}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    .line 853
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 879
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getState()I

    move-result v4

    const/4 v6, 0x6

    if-eq v4, v6, :cond_4

    .line 880
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionService;->forceSuppMessageUpdate(Landroid/telecom/Connection;)V

    .line 799
    :cond_4
    return-void

    .line 825
    .end local v5    # "handle":Landroid/telecom/PhoneAccountHandle;
    .end local v22    # "address":Landroid/net/Uri;
    .end local v24    # "connection":Landroid/telecom/Connection;
    .end local v26    # "number":Ljava/lang/String;
    :cond_5
    if-eqz p4, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v24

    .restart local v24    # "connection":Landroid/telecom/Connection;
    goto/16 :goto_0

    .line 826
    .end local v24    # "connection":Landroid/telecom/Connection;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v24

    .restart local v24    # "connection":Landroid/telecom/Connection;
    goto/16 :goto_0

    .line 838
    .restart local v22    # "address":Landroid/net/Uri;
    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "number":Ljava/lang/String;
    goto/16 :goto_1

    .line 850
    .restart local v5    # "handle":Landroid/telecom/PhoneAccountHandle;
    :cond_8
    const-string/jumbo v4, "createConnection, set back phone account:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 867
    :cond_9
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v12

    goto :goto_3
.end method

.method private createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1698
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1700
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1701
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1704
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1705
    return-object v2
.end method

.method private createIdList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1716
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 1719
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v5, v0, Landroid/telecom/Connection;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 1720
    check-cast v3, Landroid/telecom/Connection;

    .line 1721
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1722
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1724
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v5, v0, Landroid/telecom/Conference;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 1725
    check-cast v2, Landroid/telecom/Conference;

    .line 1726
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1727
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1731
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1732
    return-object v4
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 976
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "RemoveMember"

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :goto_0
    const-string/jumbo v0, "disconnect %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    const-string/jumbo v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    .line 974
    :goto_1
    return-void

    .line 980
    :cond_0
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Hangup"

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 988
    :cond_1
    const-string/jumbo v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_1
.end method

.method private endAllConnections()V
    .locals 5

    .prologue
    .line 1744
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    .line 1746
    .local v2, "connection":Landroid/telecom/Connection;
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1747
    invoke-virtual {v2}, Landroid/telecom/Connection;->onDisconnect()V

    goto :goto_0

    .line 1750
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conference$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    .line 1751
    .local v0, "conference":Landroid/telecom/Conference;
    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_1

    .line 1742
    .end local v0    # "conference":Landroid/telecom/Conference;
    :cond_2
    return-void
.end method

.method private explicitCallTransfer(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1134
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->canTransfer(Landroid/telecom/Connection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    const-string/jumbo v0, "explicitCallTransfer %s fail"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    return-void

    .line 1138
    :cond_0
    const-string/jumbo v0, "explicitCallTransfer %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    const-string/jumbo v0, "explicitCallTransfer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onExplicitCallTransfer()V

    .line 1133
    return-void
.end method

.method private findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;
    .locals 3
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1690
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    return-object v0

    .line 1693
    :cond_0
    const-string/jumbo v0, "%s - Cannot find conference %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1694
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v0

    return-object v0
.end method

.method private findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1675
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0

    .line 1678
    :cond_0
    const-string/jumbo v0, "%s - Cannot find Connection %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v0

    return-object v0
.end method

.method private getConnectionServiceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1854
    invoke-virtual {p0}, Landroid/telecom/ConnectionService;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v2, "ConnectionService"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1857
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1858
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1860
    :cond_0
    return-object v0
.end method

.method private getNullConference()Landroid/telecom/Conference;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1736
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    if-nez v0, :cond_0

    .line 1737
    new-instance v0, Landroid/telecom/ConnectionService$7;

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    .line 1739
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method static declared-synchronized getNullConnection()Landroid/telecom/Connection;
    .locals 2

    .prologue
    const-class v1, Landroid/telecom/ConnectionService;

    monitor-enter v1

    .line 1683
    :try_start_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_0

    .line 1684
    new-instance v0, Landroid/telecom/ConnectionService$6;

    invoke-direct {v0}, Landroid/telecom/ConnectionService$6;-><init>()V

    sput-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    .line 1686
    :cond_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hangupAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1145
    const-string/jumbo v0, "hangupAll %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1146
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    const-string/jumbo v0, "hangupAll"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onHangupAll()V

    .line 1144
    :goto_0
    return-void

    .line 1149
    :cond_0
    const-string/jumbo v0, "hangupAll"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onHangupAll()V

    goto :goto_0
.end method

.method private hold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 994
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Hold"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string/jumbo v0, "hold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 997
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    const-string/jumbo v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onHold()V

    .line 992
    :goto_0
    return-void

    .line 1000
    :cond_0
    const-string/jumbo v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onHold()V

    goto :goto_0
.end method

.method private inviteConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "conferenceCallId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1157
    .local p2, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1158
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "number$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1159
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1161
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "CC"

    const-string/jumbo v4, "AddMember"

    .line 1162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " numbers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1161
    invoke-virtual {p0, v3, v4, p1, v5}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string/jumbo v3, "inviteConferenceParticipants %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1167
    const-string/jumbo v3, "inviteConferenceParticipants"

    invoke-direct {p0, p1, v3}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/telecom/Conference;->onInviteConferenceParticipants(Ljava/util/List;)V

    .line 1155
    :cond_1
    return-void
.end method

.method private mergeConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1111
    const-string/jumbo v1, "mergeConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    const-string/jumbo v1, "mergeConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 1113
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0}, Landroid/telecom/Conference;->onMerge()V

    .line 1110
    :cond_0
    return-void
.end method

.method private onAccountsInitialized()V
    .locals 3

    .prologue
    .line 1589
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 1590
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1591
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1593
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1588
    return-void
.end method

.method private onAdapterAttached()V
    .locals 2

    .prologue
    .line 1300
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-eqz v0, :cond_0

    .line 1302
    return-void

    .line 1305
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v1, Landroid/telecom/ConnectionService$5;

    invoke-direct {v1, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    .line 1299
    return-void
.end method

.method private onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 1017
    const-string/jumbo v0, "onAudioStateChanged %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 1016
    :goto_0
    return-void

    .line 1022
    :cond_0
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    goto :goto_0
.end method

.method private onPostDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 1127
    const-string/jumbo v0, "onPostDialContinue(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1128
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    .line 1126
    return-void
.end method

.method private playDtmfTone(Ljava/lang/String;C)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 1028
    const-string/jumbo v0, "playDtmfTone %s %c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    .line 1027
    :goto_0
    return-void

    .line 1032
    :cond_0
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onPlayDtmfTone(C)V

    goto :goto_0
.end method

.method private reject(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 968
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Reject"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string/jumbo v0, "reject %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onReject()V

    .line 966
    return-void
.end method

.method private removeConference(Landroid/telecom/Conference;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1664
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1665
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1667
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1668
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1663
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private splitFromConference(Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1096
    const-string/jumbo v2, "splitFromConference(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    const-string/jumbo v2, "splitFromConference"

    invoke-direct {p0, p1, v2}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 1099
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1100
    const-string/jumbo v2, "Connection missing in conference request %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1101
    return-void

    .line 1104
    :cond_0
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    .line 1105
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_1

    .line 1106
    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    .line 1095
    :cond_1
    return-void
.end method

.method private stopDtmfTone(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1037
    const-string/jumbo v0, "stopDtmfTone %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopDtmfTone()V

    .line 1036
    :goto_0
    return-void

    .line 1041
    :cond_0
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onStopDtmfTone()V

    goto :goto_0
.end method

.method private swapConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1119
    const-string/jumbo v1, "swapConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    const-string/jumbo v1, "swapConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 1121
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwap()V

    .line 1118
    :cond_0
    return-void
.end method

.method private unhold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1006
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Unhold"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string/jumbo v0, "unhold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onUnhold()V

    .line 1004
    :goto_0
    return-void

    .line 1012
    :cond_0
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onUnhold()V

    goto :goto_0
.end method


# virtual methods
.method public final addConference(Landroid/telecom/Conference;)V
    .locals 15
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1399
    const-string/jumbo v2, "addConference: conference=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    invoke-direct/range {p0 .. p1}, Landroid/telecom/ConnectionService;->addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    move-result-object v14

    .line 1402
    .local v14, "id":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 1403
    new-instance v5, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1404
    .local v5, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1405
    .local v0, "connection":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1406
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1409
    .end local v0    # "connection":Landroid/telecom/Connection;
    :cond_1
    new-instance v1, Landroid/telecom/ParcelableConference;

    .line 1410
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 1411
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getState()I

    move-result v3

    .line 1412
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v4

    .line 1414
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1415
    const/4 v6, 0x0

    .line 1416
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v7

    .line 1417
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v8

    .line 1418
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v10

    .line 1419
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 1409
    invoke-direct/range {v1 .. v11}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V

    .line 1421
    .local v1, "parcelableConference":Landroid/telecom/ParcelableConference;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v14, v1}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 1422
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 1423
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v3

    invoke-virtual {v2, v14, v3}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 1426
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1427
    .restart local v0    # "connection":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1428
    .local v13, "connectionId":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 1429
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v13, v14}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1415
    .end local v0    # "connection":Landroid/telecom/Connection;
    .end local v1    # "parcelableConference":Landroid/telecom/ParcelableConference;
    .end local v13    # "connectionId":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v6

    goto :goto_1

    .line 1398
    .end local v5    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "connection$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public final addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .locals 21
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1445
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v20

    .line 1446
    .local v20, "id":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 1447
    new-instance v18, Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1449
    .local v18, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/telecom/ParcelableConnection;

    .line 1451
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    move-result v4

    .line 1452
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v5

    .line 1453
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v6

    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v7

    .line 1455
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v9

    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1458
    const/4 v10, 0x0

    .line 1459
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    move-result v11

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v12

    .line 1461
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v13

    .line 1462
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v14

    .line 1463
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v16

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v17

    .line 1466
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v3, p1

    .line 1449
    invoke-direct/range {v2 .. v19}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    .line 1467
    .local v2, "parcelableConnection":Landroid/telecom/ParcelableConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    .line 1443
    .end local v2    # "parcelableConnection":Landroid/telecom/ParcelableConnection;
    .end local v18    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 1458
    .restart local v18    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v10

    goto :goto_0
.end method

.method addRemoteConference(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "remoteConference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1580
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    .line 1579
    return-void
.end method

.method addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "remoteConnection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1585
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    .line 1584
    return-void
.end method

.method public canDial(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1767
    const/4 v0, 0x1

    return v0
.end method

.method public canTransfer(Landroid/telecom/Connection;)Z
    .locals 1
    .param p1, "bgConnection"    # Landroid/telecom/Connection;

    .prologue
    .line 1780
    const/4 v0, 0x0

    return v0
.end method

.method public final conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .locals 1
    .param p1, "remoteConnection1"    # Landroid/telecom/RemoteConnection;
    .param p2, "remoteConnection2"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1387
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    .line 1386
    return-void
.end method

.method public containsConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1575
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createConnectionInternal(Ljava/lang/String;Landroid/telecom/ConnectionRequest;)V
    .locals 26
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 896
    const-string/jumbo v4, "createConnectionInternal, callId: %s, request: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 898
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v23

    .line 899
    .local v23, "connection":Landroid/telecom/Connection;
    const-string/jumbo v4, "createConnectionInternal, connection: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    if-nez v23, :cond_0

    .line 902
    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/telecom/DisconnectCause;-><init>(I)V

    .line 901
    invoke-static {v4}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v23

    .line 905
    :cond_0
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    move-result v4

    const/4 v6, 0x6

    if-eq v4, v6, :cond_1

    .line 906
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 909
    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v22

    .line 910
    .local v22, "address":Landroid/net/Uri;
    if-nez v22, :cond_3

    const-string/jumbo v24, "null"

    .line 911
    .local v24, "number":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "createConnectionInternal, number: %s, state: %s, capabilities: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 912
    invoke-static/range {v24 .. v24}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 913
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 914
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 911
    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    const-string/jumbo v4, "createConnectionInternal, calling handleCreateConnectionComplete %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 919
    .local v5, "handle":Landroid/telecom/PhoneAccountHandle;
    if-nez v5, :cond_2

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 923
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v25, v0

    .line 926
    new-instance v4, Landroid/telecom/ParcelableConnection;

    .line 930
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    move-result v6

    .line 931
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    .line 932
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v8

    .line 933
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v9

    .line 934
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 935
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v11

    .line 936
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v12

    if-nez v12, :cond_4

    .line 937
    const/4 v12, 0x0

    .line 938
    :goto_1
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoState()I

    move-result v13

    .line 939
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v14

    .line 940
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v15

    .line 941
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v16

    .line 942
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v18

    .line 943
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v19

    .line 944
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 945
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .line 926
    invoke-direct/range {v4 .. v21}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    .line 923
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 895
    return-void

    .line 910
    .end local v5    # "handle":Landroid/telecom/PhoneAccountHandle;
    .end local v24    # "number":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "number":Ljava/lang/String;
    goto/16 :goto_0

    .line 937
    .restart local v5    # "handle":Landroid/telecom/PhoneAccountHandle;
    :cond_4
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v12

    goto :goto_1
.end method

.method public final createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1351
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 1352
    const/4 v1, 0x1

    .line 1351
    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1370
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 1371
    const/4 v1, 0x0

    .line 1370
    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method protected forceSuppMessageUpdate(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conn"    # Landroid/telecom/Connection;

    .prologue
    .line 1791
    return-void
.end method

.method public final getAllConnections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1478
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 1807
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1809
    :cond_0
    return-void

    .line 1807
    :cond_1
    if-eqz p3, :cond_0

    .line 1813
    if-nez p4, :cond_2

    .line 1814
    const-string/jumbo p4, ""

    .line 1817
    :cond_2
    const-string/jumbo v0, "null"

    .line 1818
    .local v0, "callNumber":Ljava/lang/String;
    const-string/jumbo v3, "null"

    .line 1820
    .local v3, "localCallId":Ljava/lang/String;
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1821
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 1822
    .local v1, "conn":Landroid/telecom/Connection;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1823
    invoke-virtual {v1}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1825
    :cond_3
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1831
    .end local v1    # "conn":Landroid/telecom/Connection;
    :cond_4
    :goto_0
    new-instance v4, Lcom/mediatek/telecom/FormattedLog$Builder;

    invoke-direct {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1833
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getConnectionServiceName()Ljava/lang/String;

    move-result-object v5

    .line 1831
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1834
    sget-object v5, Lcom/mediatek/telecom/FormattedLog$OpType;->OPERATION:Lcom/mediatek/telecom/FormattedLog$OpType;

    .line 1831
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setActionName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/mediatek/telecom/FormattedLog$Builder;->setExtraMessage(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;->buildDebugMsg()Lcom/mediatek/telecom/FormattedLog;

    move-result-object v2

    .line 1841
    .local v2, "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    if-eqz v2, :cond_5

    .line 1842
    invoke-virtual {v2}, Lcom/mediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1806
    :cond_5
    return-void

    .line 1826
    .end local v2    # "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    :cond_6
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1827
    const-string/jumbo v0, "conferenceCall"

    .line 1828
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 779
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection1"    # Landroid/telecom/Connection;
    .param p2, "connection2"    # Landroid/telecom/Connection;

    .prologue
    .line 1551
    return-void
.end method

.method protected onCreateConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)Landroid/telecom/Conference;
    .locals 1
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "conferenceCallId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p5, "isIncoming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/String;",
            "Landroid/telecom/ConnectionRequest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/telecom/Conference;"
        }
    .end annotation

    .prologue
    .line 1266
    .local p4, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1494
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1523
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1540
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1563
    return-void
.end method

.method public onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1569
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 785
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->endAllConnections()V

    .line 786
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected removeConnection(Landroid/telecom/Connection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1622
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1623
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1624
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1625
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1621
    return-void
.end method

.method protected removeConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;
    .locals 4
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1639
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1640
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1641
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1642
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    const-string/jumbo v1, "removeConnectionInternal, callId: %s, connection: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1645
    return-object v0
.end method

.method protected replaceConference(Landroid/telecom/Conference;Landroid/telecom/Conference;)V
    .locals 5
    .param p1, "oldConf"    # Landroid/telecom/Conference;
    .param p2, "newConf"    # Landroid/telecom/Conference;

    .prologue
    const/4 v4, 0x0

    .line 1279
    const-string/jumbo v1, "SRVCC: oldConf= %s , newConf= %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1280
    if-ne p1, p2, :cond_0

    .line 1281
    return-void

    .line 1284
    :cond_0
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1285
    const-string/jumbo v1, "SRVCC: start to do replacement"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1286
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1288
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1289
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p2, v1}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1278
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    return-void
.end method
