.class Lcom/android/internal/telephony/cat/ReceiveDataResult;
.super Ljava/lang/Object;
.source "BipService.java"


# instance fields
.field public buffer:[B

.field public remainingCount:I

.field public requestCount:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1774
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1775
    iput v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->requestCount:I

    .line 1776
    iput v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 1773
    return-void
.end method
