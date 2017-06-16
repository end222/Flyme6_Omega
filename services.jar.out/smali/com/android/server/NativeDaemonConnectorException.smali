.class public Lcom/android/server/NativeDaemonConnectorException;
.super Ljava/lang/Exception;
.source "NativeDaemonConnectorException.java"


# instance fields
.field private mCmd:Ljava/lang/String;

.field private mEvent:Lcom/android/server/NativeDaemonEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/android/server/NativeDaemonEvent;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "command \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' failed with \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnectorException;->mCmd:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnectorException;->mEvent:Lcom/android/server/NativeDaemonEvent;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mEvent:Lcom/android/server/NativeDaemonEvent;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mEvent:Lcom/android/server/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v0

    return v0

    .line 52
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/android/server/NativeDaemonConnectorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
