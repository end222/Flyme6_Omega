.class public Lcom/android/server/content/SyncStorageEngine$PendingOperation;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingOperation"
.end annotation


# instance fields
.field final authorityId:I

.field final expedited:Z

.field final extras:Landroid/os/Bundle;

.field flatExtras:[B

.field final reason:I

.field final syncSource:I

.field final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;IILandroid/os/Bundle;Z)V
    .locals 1
    .param p1, "authority"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .param p2, "reason"    # I
    .param p3, "source"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "expedited"    # Z

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 189
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 190
    iput p2, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    .line 191
    if-eqz p4, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p4, v0

    .end local p4    # "extras":Landroid/os/Bundle;
    :cond_0
    iput-object p4, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 192
    iput-boolean p5, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    .line 193
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 187
    return-void
.end method

.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    .line 198
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 199
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 200
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 201
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 202
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    .line 196
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    const-string/jumbo v1, " user="

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    const-string/jumbo v1, " auth="

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    const-string/jumbo v1, " account="

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    const-string/jumbo v1, " src="

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string/jumbo v1, " extras="

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
