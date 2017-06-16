.class public Lcom/android/server/camera/CameraService;
.super Lcom/android/server/SystemService;
.source "CameraService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/camera/CameraService$1;,
        Lcom/android/server/camera/CameraService$2;
    }
.end annotation


# static fields
.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field private static final MSG_SWITCH_USER:I = 0x1

.field public static final NO_EVENT:I = 0x0

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field public static final USER_SWITCHED:I = 0x1


# instance fields
.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field private final mContext:Landroid/content/Context;

.field private mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/camera/CameraService;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/camera/CameraService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/camera/CameraService;->mLastUser:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/camera/CameraService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/camera/CameraService;I)V
    .locals 0
    .param p1, "retries"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->notifySwitchWithRetries(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/camera/CameraService;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->processCustomBroadcastActions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/camera/CameraService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/android/server/camera/CameraService$1;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraService$1;-><init>(Lcom/android/server/camera/CameraService;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Lcom/android/server/camera/CameraService$2;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraService$2;-><init>(Lcom/android/server/camera/CameraService;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    .line 113
    iput-object p1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "CameraService_proxy"

    const/4 v2, -0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 115
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 116
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method private addCustomActionsToFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 243
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private closeAllFlash()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 263
    :try_start_0
    iget-object v6, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "camera"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 264
    .local v2, "cameraManager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "cameraIdList":[Ljava/lang/String;
    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 266
    .local v0, "cameraId":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraIdList":[Ljava/lang/String;
    .end local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    :catch_0
    move-exception v4

    .line 271
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "CameraService_proxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not close flash, IllegalArgument exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    return-void

    .line 268
    :catch_1
    move-exception v3

    .line 269
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string/jumbo v5, "CameraService_proxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not close flash, camera access exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .locals 5
    .param p1, "currentUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v4, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 182
    .local v3, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 184
    .local v0, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 185
    .local v1, "i":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v1    # "i":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v0
.end method

.method private notifyMediaserver(ILjava/util/Set;)Z
    .locals 7
    .param p1, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "updatedUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 211
    const-string/jumbo v3, "media.camera"

    invoke-virtual {p0, v3}, Lcom/android/server/camera/CameraService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 212
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 213
    const-string/jumbo v3, "CameraService_proxy"

    const-string/jumbo v4, "Could not notify mediaserver, camera service not available."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v6

    .line 217
    :cond_0
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v1

    .line 220
    .local v1, "cameraServiceRaw":Landroid/hardware/ICameraService;
    :try_start_0
    invoke-static {p2}, Lcom/android/server/camera/CameraService;->toArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const/4 v3, 0x1

    return v3

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CameraService_proxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not notify mediaserver, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v6
.end method

.method private notifySwitchWithRetries(I)V
    .locals 6
    .param p1, "retries"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 194
    return-void

    .line 196
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/camera/CameraService;->notifyMediaserver(ILjava/util/Set;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const/4 p1, 0x0

    :cond_1
    monitor-exit v1

    .line 200
    if-gtz p1, :cond_2

    .line 201
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 203
    :cond_2
    const-string/jumbo v0, "CameraService_proxy"

    const-string/jumbo v1, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 205
    const-wide/16 v2, 0x14

    .line 204
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 191
    return-void
.end method

.method private processCustomBroadcastActions(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/camera/CameraService;->closeAllFlash()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 247
    :cond_0
    return-void

    .line 248
    :cond_1
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private switchUserLocked(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .line 172
    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/android/server/camera/CameraService;->mLastUser:I

    .line 173
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 175
    :cond_0
    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    .line 176
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraService;->notifyMediaserver(ILjava/util/Set;)Z

    goto :goto_0
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    .line 231
    .local v4, "len":I
    new-array v5, v4, [I

    .line 232
    .local v5, "ret":[I
    const/4 v2, 0x0

    .line 233
    .local v2, "idx":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 234
    .local v0, "i":Ljava/lang/Integer;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "idx":I
    .local v3, "idx":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v2

    move v2, v3

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_0

    .line 236
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_0
    return-object v5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    const-string/jumbo v0, "CameraService_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CameraService error, invalid message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 123
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraService;->notifySwitchWithRetries(I)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    .line 135
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "UserManagerService must start before CameraService!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraService;->addCustomActionsToFilter(Landroid/content/IntentFilter;)V

    .line 148
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v1, "media.camera.proxy"

    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/camera/CameraService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 133
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 154
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 164
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
