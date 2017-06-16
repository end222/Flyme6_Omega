.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraManagerGlobal"
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final STATUS_ENUMERATING:I = 0x2

.field public static final STATUS_NOT_AVAILABLE:I = -0x80000000

.field public static final STATUS_NOT_PRESENT:I = 0x0

.field public static final STATUS_PRESENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraManagerGlobal"

.field public static final TORCH_STATUS_AVAILABLE_OFF:I = 0x1

.field public static final TORCH_STATUS_AVAILABLE_ON:I = 0x2

.field public static final TORCH_STATUS_NOT_AVAILABLE:I

.field private static final gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# instance fields
.field private final CAMERA_SERVICE_RECONNECT_DELAY_MS:I

.field private final DEBUG:Z

.field private final mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraService:Landroid/hardware/ICameraService;

.field private final mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mTorchCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/hardware/camera2/CameraManager$TorchCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchClientBinder:Landroid/os/Binder;

.field private final mTorchStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 736
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    .line 735
    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 726
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    .line 732
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    .line 759
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 763
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 762
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    .line 777
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    .line 780
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    .line 784
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 783
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    .line 786
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    .line 792
    return-void
.end method

.method private connectCameraServiceLocked()V
    .locals 8

    .prologue
    .line 829
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-eqz v5, :cond_0

    return-void

    .line 831
    :cond_0
    const-string/jumbo v5, "CameraManagerGlobal"

    const-string/jumbo v6, "Connecting to camera service"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string/jumbo v5, "media.camera"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 834
    .local v1, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v1, :cond_1

    .line 836
    return-void

    .line 839
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v1, p0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    invoke-static {v1}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    .line 852
    .local v2, "cameraServiceRaw":Landroid/hardware/ICameraService;
    invoke-static {v2}, Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ICameraService;

    .line 856
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetupGlobalVendorTagDescriptor()I

    move-result v5

    .line 855
    invoke-static {v5}, Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;->throwOnError(I)V
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 862
    :goto_0
    :try_start_2
    invoke-interface {v0, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)I

    .line 863
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 827
    :goto_1
    return-void

    .line 840
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v2    # "cameraServiceRaw":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v4

    .line 842
    .local v4, "e":Landroid/os/RemoteException;
    return-void

    .line 857
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v2    # "cameraServiceRaw":Landroid/hardware/ICameraService;
    :catch_1
    move-exception v3

    .line 858
    .local v3, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    const-string/jumbo v5, "Failed to set up vendor tags"

    invoke-direct {p0, v3, v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/hardware/camera2/utils/CameraRuntimeException;Ljava/lang/String;)V

    goto :goto_0

    .line 864
    .end local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_2
    move-exception v3

    .line 866
    .restart local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Failed to register a camera service listener"

    .line 867
    invoke-virtual {v3}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v7

    .line 866
    invoke-direct {v5, v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 868
    .end local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_3
    move-exception v4

    .restart local v4    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public static get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .locals 1

    .prologue
    .line 796
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-object v0
.end method

.method private handleRecoverableSetupErrors(Landroid/hardware/camera2/utils/CameraRuntimeException;Ljava/lang/String;)V
    .locals 5
    .param p1, "e"    # Landroid/hardware/camera2/utils/CameraRuntimeException;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 905
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v1

    .line 906
    .local v1, "problem":I
    packed-switch v1, :pswitch_data_0

    .line 912
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 908
    :pswitch_0
    invoke-static {v1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v2, "CameraManagerGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return-void

    .line 906
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private isAvailable(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 917
    packed-switch p1, :pswitch_data_0

    .line 921
    const/4 v0, 0x0

    return v0

    .line 919
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 917
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onStatusChangedLocked(ILjava/lang/String;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 1013
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1014
    const-string/jumbo v5, "CameraManagerGlobal"

    const-string/jumbo v6, "Ignoring invalid device %s status 0x%x"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    .line 1015
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 1014
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return-void

    .line 1019
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1021
    .local v4, "oldStatus":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 1027
    return-void

    .line 1043
    :cond_1
    if-eqz v4, :cond_2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1052
    return-void

    .line 1055
    :cond_2
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1056
    .local v1, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1057
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 1058
    .local v2, "handler":Landroid/os/Handler;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 1060
    .local v0, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v0, v2, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1056
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1007
    .end local v0    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_3
    return-void
.end method

.method private onTorchStatusChangedLocked(ILjava/lang/String;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 1078
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1079
    const-string/jumbo v5, "CameraManagerGlobal"

    const-string/jumbo v6, "Ignoring invalid device %s torch status 0x%x"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    .line 1080
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 1079
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return-void

    .line 1084
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1085
    .local v4, "oldStatus":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 1091
    return-void

    .line 1094
    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1095
    .local v1, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1096
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 1097
    .local v2, "handler":Landroid/os/Handler;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 1098
    .local v0, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v0, v2, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1095
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1072
    .end local v0    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_2
    return-void
.end method

.method private postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    .line 971
    packed-switch p4, :pswitch_data_0

    .line 985
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    .line 984
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 970
    :goto_0
    return-void

    .line 975
    :pswitch_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;

    invoke-direct {v0, p0, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    .line 974
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    .line 950
    invoke-direct {p0, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 949
    :goto_0
    return-void

    .line 960
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    .line 959
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private scheduleCameraServiceReconnectionLocked()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1175
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1176
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1190
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    .line 1204
    const-wide/16 v2, 0x3e8

    .line 1189
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1172
    return-void

    .line 1177
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1178
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .restart local v0    # "handler":Landroid/os/Handler;
    goto :goto_0

    .line 1181
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method private updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1000
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1001
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1002
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1003
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1065
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1066
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1067
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1068
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1065
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private validStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 926
    sparse-switch p1, :sswitch_data_0

    .line 933
    const/4 v0, 0x0

    return v0

    .line 931
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 926
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private validTorchStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 938
    packed-switch p1, :pswitch_data_0

    .line 944
    const/4 v0, 0x0

    return v0

    .line 942
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 938
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 801
    return-object p0
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 1215
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1217
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return-void

    .line 1219
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 1224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1225
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1226
    .local v0, "cameraId":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 1224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1228
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1229
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    .restart local v0    # "cameraId":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    .line 1228
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1233
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1214
    return-void

    .line 1215
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getCameraService()Landroid/hardware/ICameraService;
    .locals 3

    .prologue
    .line 812
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 813
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 814
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_0

    .line 815
    const-string/jumbo v0, "CameraManagerGlobal"

    const-string/jumbo v2, "Camera service is unavailable"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStatusChanged(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1156
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1157
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1155
    return-void

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTorchStatusChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1164
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1162
    return-void

    .line 1163
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1110
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1111
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 1113
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1115
    .local v0, "oldHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 1116
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1109
    return-void

    .line 1110
    .end local v0    # "oldHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1134
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1135
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 1137
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1139
    .local v0, "oldHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 1140
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1133
    return-void

    .line 1134
    .end local v0    # "oldHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 874
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 876
    if-nez p1, :cond_0

    .line 877
    :try_start_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "cameraId was null"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 880
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 881
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    .line 882
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    .line 883
    const-string/jumbo v7, "Camera service is currently unavailable"

    .line 882
    const/4 v8, 0x2

    invoke-direct {v5, v8, v7}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v5}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)I
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .local v4, "status":I
    monitor-exit v6

    .line 873
    return-void

    .line 897
    .end local v4    # "status":I
    :catch_0
    move-exception v2

    .line 898
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    .line 899
    const-string/jumbo v7, "Camera service is currently unavailable"

    .line 898
    const/4 v8, 0x2

    invoke-direct {v5, v8, v7}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 888
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 889
    .local v1, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v3

    .line 890
    .local v3, "problem":I
    packed-switch v3, :pswitch_data_0

    .line 895
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v5

    throw v5

    .line 892
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 893
    const-string/jumbo v7, "the camera device doesn\'t have a flash unit."

    .line 892
    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 890
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    .line 1128
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1129
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1127
    return-void

    .line 1128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .prologue
    .line 1146
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1147
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1145
    return-void

    .line 1146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
