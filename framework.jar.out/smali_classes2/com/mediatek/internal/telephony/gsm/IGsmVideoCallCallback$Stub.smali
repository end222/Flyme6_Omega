.class public abstract Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;
.super Landroid/os/Binder;
.source "IGsmVideoCallCallback.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

.field static final TRANSACTION_changeCallDataUsage:I = 0x6

.field static final TRANSACTION_changeCameraCapabilities:I = 0x7

.field static final TRANSACTION_changePeerDimensions:I = 0x4

.field static final TRANSACTION_changePeerDimensionsWithAngle:I = 0x5

.field static final TRANSACTION_changeVideoQuality:I = 0x8

.field static final TRANSACTION_handleCallSessionEvent:I = 0x3

.field static final TRANSACTION_receiveSessionModifyRequest:I = 0x1

.field static final TRANSACTION_receiveSessionModifyResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string/jumbo v0, "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 35
    if-nez p0, :cond_0

    .line 36
    return-object v1

    .line 38
    :cond_0
    const-string/jumbo v1, "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 42
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v10, 0x1

    .line 50
    sparse-switch p1, :sswitch_data_0

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 54
    :sswitch_0
    const-string/jumbo v9, "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v10

    .line 59
    :sswitch_1
    const-string/jumbo v9, "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    .line 62
    sget-object v9, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/VideoProfile;

    .line 67
    :goto_0
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 68
    return v10

    .line 65
    :cond_0
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_0

    .line 72
    .end local v4    # "_arg0":Landroid/telecom/VideoProfile;
    :sswitch_2
    const-string/jumbo v9, "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    .line 77
    sget-object v9, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/VideoProfile;

    .line 83
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    .line 84
    sget-object v9, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telecom/VideoProfile;

    .line 89
    :goto_2
    invoke-virtual {p0, v0, v6, v8}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 90
    return v10

    .line 80
    :cond_1
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/telecom/VideoProfile;
    goto :goto_1

    .line 87
    .end local v6    # "_arg1":Landroid/telecom/VideoProfile;
    :cond_2
    const/4 v8, 0x0

    .local v8, "_arg2":Landroid/telecom/VideoProfile;
    goto :goto_2

    .line 94
    .end local v0    # "_arg0":I
    .end local v8    # "_arg2":Landroid/telecom/VideoProfile;
    :sswitch_3
    const-string/jumbo v9, "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;->handleCallSessionEvent(I)V

    .line 98
    return v10

    .line 102
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v9, "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 107
    .local v5, "_arg1":I
    invoke-virtual {p0, v0, v5}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;->changePeerDimensions(II)V

    .line 108
    return v10

    .line 112
    .end local v0    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_5
    const-string/jumbo v9, "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 118
    .restart local v5    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 119
    .local v7, "_arg2":I
    invoke-virtual {p0, v0, v5, v7}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;->changePeerDimensionsWithAngle(III)V

    .line 120
    return v10

    .line 124
    .end local v0    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_6
    const-string/jumbo v9, "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 127
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;->changeCallDataUsage(J)V

    .line 128
    return v10

    .line 132
    .end local v2    # "_arg0":J
    :sswitch_7
    const-string/jumbo v9, "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    .line 135
    sget-object v9, Landroid/telecom/VideoProfile$CameraCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 140
    :goto_3
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 141
    return v10

    .line 138
    :cond_3
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    goto :goto_3

    .line 145
    .end local v1    # "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    :sswitch_8
    const-string/jumbo v9, "com.mediatek.internal.telephony.gsm.IGsmVideoCallCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;->changeVideoQuality(I)V

    .line 149
    return v10

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
