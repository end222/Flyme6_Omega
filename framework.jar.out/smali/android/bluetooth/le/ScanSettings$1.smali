.class final Landroid/bluetooth/le/ScanSettings$1;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/bluetooth/le/ScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanSettings;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 217
    new-instance v0, Landroid/bluetooth/le/ScanSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/le/ScanSettings;-><init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanSettings;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/le/ScanSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 212
    new-array v0, p1, [Landroid/bluetooth/le/ScanSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanSettings$1;->newArray(I)[Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    return-object v0
.end method
