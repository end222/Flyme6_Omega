.class public Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;,
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;,
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;,
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;,
        Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardServiceDelegate"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field protected mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

.field private final mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

.field private final mScrim:Landroid/view/View;

.field private final mScrimHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    invoke-direct {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 137
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 106
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->createScrim(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mScrimHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method private static final createScrim(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 312
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 314
    .local v8, "view":Landroid/view/View;
    const v4, 0x110900

    .line 320
    .local v4, "flags":I
    const/4 v6, -0x1

    .line 321
    .local v6, "stretch":I
    const/16 v7, 0x7ed

    .line 322
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 323
    const/16 v3, 0x7ed

    const/4 v5, -0x3

    move v2, v1

    .line 322
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 324
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 325
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 326
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 327
    const-string/jumbo v1, "KeyguardScrim"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 329
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    const/high16 v1, 0x3610000

    invoke-virtual {v8, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 337
    return-object v8
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 116
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x104004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 117
    .local v1, "keyguardComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 120
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    .line 119
    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    const-string/jumbo v3, "KeyguardServiceDelegate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*** Keyguard: can\'t bind to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v6, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 123
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v6, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotOccluded:Z

    .line 124
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v6, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 125
    iget-object v4, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    monitor-enter v4

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hideScrim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 111
    :goto_0
    return-void

    .line 125
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 133
    :cond_0
    const-string/jumbo v3, "KeyguardServiceDelegate"

    const-string/jumbo v4, "*** Keyguard started"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismiss()V

    .line 202
    :cond_0
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 292
    :cond_0
    return-void
.end method

.method public hideScrim()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mScrimHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    return-void
.end method

.method public isInputRestricted()Z
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->isInputRestricted()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    return v0
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->isSecure()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->isShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 1
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->keyguardDone(ZZ)V

    .line 189
    :cond_0
    return-void
.end method

.method public onActivityDrawn()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onActivityDrawn()V

    .line 368
    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 361
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onDreamingStarted()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 215
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onDreamingStopped()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 222
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedGoingToSleep(I)V

    .line 271
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 238
    const-string/jumbo v0, "KeyguardServiceDelegate"

    const-string/jumbo v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOff()V

    .line 236
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 259
    const-string/jumbo v0, "KeyguardServiceDelegate"

    const-string/jumbo v1, "onScreenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn()V

    .line 257
    :cond_0
    return-void
.end method

.method public onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V
    .locals 3
    .param p1, "drawnListener"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 245
    const-string/jumbo v0, "KeyguardServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenTurnedOn(showListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 243
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string/jumbo v0, "KeyguardServiceDelegate"

    const-string/jumbo v1, "onScreenTurningOn(): no keyguard service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 253
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    goto :goto_0
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedGoingToSleep(I)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    .line 264
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 231
    const-string/jumbo v0, "KeyguardServiceDelegate"

    const-string/jumbo v1, "onStartedWakingUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp()V

    .line 229
    :cond_0
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 284
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 298
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 277
    return-void
.end method

.method public setOccluded(Z)V
    .locals 1
    .param p1, "isOccluded"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setOccluded(Z)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 195
    return-void
.end method

.method public showScrim()V
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    .line 343
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mScrimHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 340
    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->startKeyguardExitAnimation(JJ)V

    .line 305
    :cond_0
    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .param p1, "onKeyguardExitResult"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 183
    :cond_0
    return-void
.end method
