.class public Landroid/telephony/SmsMemoryStatus;
.super Ljava/lang/Object;
.source "SmsMemoryStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMemoryStatus$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsMemoryStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mTotal:I

.field public mUsed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Landroid/telephony/SmsMemoryStatus$1;

    invoke-direct {v0}, Landroid/telephony/SmsMemoryStatus$1;-><init>()V

    .line 101
    sput-object v0, Landroid/telephony/SmsMemoryStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    .line 67
    iput v0, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "used"    # I
    .param p2, "total"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    .line 72
    iput p2, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    return v0
.end method

.method public getUnused()I
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    iget v1, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUsed()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    iput v0, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    .line 89
    iput v0, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    .line 87
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 97
    iget v0, p0, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void
.end method
