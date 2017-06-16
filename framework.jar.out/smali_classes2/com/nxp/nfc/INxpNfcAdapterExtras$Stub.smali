.class public abstract Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;
.super Landroid/os/Binder;
.source "INxpNfcAdapterExtras.java"

# interfaces
.implements Lcom/nxp/nfc/INxpNfcAdapterExtras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/nfc/INxpNfcAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nxp.nfc.INxpNfcAdapterExtras"

.field static final TRANSACTION_deliverSeIntent:I = 0x7

.field static final TRANSACTION_doGetRouting:I = 0x5

.field static final TRANSACTION_getAtr:I = 0x4

.field static final TRANSACTION_getSecureElementTechList:I = 0x1

.field static final TRANSACTION_getSecureElementUid:I = 0x2

.field static final TRANSACTION_notifyCheckCertResult:I = 0x6

.field static final TRANSACTION_reset:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p0, p0, v0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nxp/nfc/INxpNfcAdapterExtras;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nxp/nfc/INxpNfcAdapterExtras;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nxp/nfc/INxpNfcAdapterExtras;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 45
    :sswitch_0
    const-string/jumbo v7, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v8

    .line 50
    :sswitch_1
    const-string/jumbo v7, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->getSecureElementTechList(Ljava/lang/String;)I

    move-result v3

    .line 54
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return v8

    .line 60
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_2
    const-string/jumbo v7, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->getSecureElementUid(Ljava/lang/String;)[B

    move-result-object v6

    .line 64
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 66
    return v8

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":[B
    :sswitch_3
    const-string/jumbo v9, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->reset(Ljava/lang/String;)Z

    move-result v5

    .line 74
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v5, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return v8

    .line 80
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Z
    :sswitch_4
    const-string/jumbo v9, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->getAtr(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 84
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v4, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_0
    return v8

    .line 90
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v7, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->doGetRouting()[B

    move-result-object v6

    .line 98
    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    return v8

    .line 104
    .end local v6    # "_result":[B
    :sswitch_6
    const-string/jumbo v7, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    .line 109
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->notifyCheckCertResult(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v8

    .line 108
    .end local v2    # "_arg1":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Z
    goto :goto_1

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :sswitch_7
    const-string/jumbo v7, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 120
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 125
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->deliverSeIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    return v8

    .line 123
    :cond_3
    const/4 v1, 0x0

    .local v1, "_arg1":Landroid/content/Intent;
    goto :goto_2

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
