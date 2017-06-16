.class public final Lcom/mediatek/bluetooth/BluetoothDun;
.super Ljava/lang/Object;
.source "BluetoothDun.java"

# interfaces
.implements Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;,
        Lcom/mediatek/bluetooth/BluetoothDun$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

.field public static final STATE_CHANGED_ACTION:Ljava/lang/String; = "android.bluetooth.profilemanager.action.STATE_CHANGED"

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_CONNECTING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_DISCONNECTING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothDun"

.field private static mService:Lcom/mediatek/bluetooth/IBluetoothDun;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;


# direct methods
.method static synthetic -get0(Lcom/mediatek/bluetooth/BluetoothDun;)Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/bluetooth/IBluetoothDun;)Lcom/mediatek/bluetooth/IBluetoothDun;
    .locals 0

    sput-object p0, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    return-object p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/bluetooth/BluetoothDun;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v1, Lcom/mediatek/bluetooth/BluetoothDun$1;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/BluetoothDun$1;-><init>(Lcom/mediatek/bluetooth/BluetoothDun;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    .line 182
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    .line 183
    const-string/jumbo v1, "profile_supported_dun"

    invoke-static {v1}, Lcom/mediatek/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/IBluetoothDun;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.mediatek.bluetooth"

    const-string/jumbo v2, "com.mediatek.bluetooth.dun.BluetoothDunService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Could not bind to Bluetooth Dun Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Bluetooth Dun is not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v1, Lcom/mediatek/bluetooth/BluetoothDun$1;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/BluetoothDun$1;-><init>(Lcom/mediatek/bluetooth/BluetoothDun;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    .line 198
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    .line 200
    const-string/jumbo v1, "profile_supported_dun"

    invoke-static {v1}, Lcom/mediatek/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/IBluetoothDun;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.mediatek.bluetooth"

    const-string/jumbo v2, "com.mediatek.bluetooth.dun.BluetoothDunService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Could not bind to Bluetooth Dun Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Bluetooth Dun is not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 348
    const-string/jumbo v0, "BluetoothDun"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    .line 234
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/BluetoothDun;->mServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 228
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 265
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    if-eqz v1, :cond_0

    .line 267
    :try_start_0
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/IBluetoothDun;->dunDisconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    const/4 v1, 0x1

    return v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDun"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 273
    :cond_0
    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "disconnect error: not attached to DUN service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothDun;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 213
    return-void

    .line 217
    :catchall_0
    move-exception v0

    .line 218
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 217
    throw v0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v4, "getConnectedDevices()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 241
    .local v1, "devices":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    sget-object v3, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    if-eqz v3, :cond_1

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "connDev":Landroid/bluetooth/BluetoothDevice;
    :try_start_0
    sget-object v3, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    invoke-interface {v3}, Lcom/mediatek/bluetooth/IBluetoothDun;->dunGetConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    .end local v0    # "connDev":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    :goto_1
    return-object v1

    .line 245
    .restart local v0    # "connDev":Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDun"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v0    # "connDev":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v4, "getConnectedDevices error: not attached to DUN service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 280
    sget-object v2, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    if-eqz v2, :cond_2

    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, "remoteDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothDun;->getConnectedDevices()Ljava/util/Set;

    move-result-object v1

    .line 286
    .local v1, "remoteDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 287
    :cond_0
    const/4 v2, 0x2

    return v2

    .line 286
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    sget-object v2, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    invoke-interface {v2}, Lcom/mediatek/bluetooth/IBluetoothDun;->dunGetState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 290
    .end local v1    # "remoteDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDun"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v2, 0x5

    return v2

    .line 294
    :cond_2
    const-string/jumbo v2, "BluetoothDun"

    const-string/jumbo v3, "get state error: not attached to DUN service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isTetheringOn()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 313
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    if-nez v1, :cond_0

    .line 314
    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Service is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return v4

    .line 318
    :cond_0
    :try_start_0
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/IBluetoothDun;->isTetheringOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return v4
.end method

.method public setBluetoothTethering(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothTethering("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/BluetoothDun;->log(Ljava/lang/String;)V

    .line 301
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    if-nez v1, :cond_0

    .line 302
    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Service is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    .line 306
    :cond_0
    :try_start_0
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothDun;->mService:Lcom/mediatek/bluetooth/IBluetoothDun;

    invoke-interface {v1, p1}, Lcom/mediatek/bluetooth/IBluetoothDun;->setBluetoothTethering(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
