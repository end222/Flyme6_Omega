.class public abstract Landroid/telecom/Connection$Listener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 512
    return-void
.end method

.method public onActionFailed(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .prologue
    .line 498
    return-void
.end method

.method public onActionFailed(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "action"    # I

    .prologue
    .line 501
    return-void
.end method

.method public onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "newAddress"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    .line 470
    return-void
.end method

.method public onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "isVoip"    # Z

    .prologue
    .line 482
    return-void
.end method

.method public onCallInfoChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 520
    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    .line 472
    return-void
.end method

.method public onCdmaCallAccepted(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .prologue
    .line 511
    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 486
    return-void
.end method

.method public onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .prologue
    .line 491
    return-void
.end method

.method public onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    return-void
.end method

.method public onConferenceStarted()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p2, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "capabilities"    # I

    .prologue
    .line 479
    return-void
.end method

.method public onConnectionLost(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .prologue
    .line 495
    return-void
.end method

.method public onCrssSuppServiceNumberUpdate(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 499
    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .prologue
    .line 478
    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 474
    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 492
    return-void
.end method

.method public onIncomingInfoUpdate(Landroid/telecom/Connection;ILjava/lang/String;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "type"    # I
    .param p3, "alphaid"    # Ljava/lang/String;
    .param p4, "cli_validity"    # I

    .prologue
    .line 505
    return-void
.end method

.method public onNumberUpdate(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 504
    return-void
.end method

.method public onPostDialChar(Landroid/telecom/Connection;C)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "nextChar"    # C

    .prologue
    .line 476
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 475
    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/Connection;Z)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "ringback"    # Z

    .prologue
    .line 477
    return-void
.end method

.method public onSSNotificationToast(Landroid/telecom/Connection;IIILjava/lang/String;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "notiType"    # I
    .param p3, "type"    # I
    .param p4, "code"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "index"    # I

    .prologue
    .line 502
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "state"    # I

    .prologue
    .line 469
    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 483
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 481
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .prologue
    .line 473
    return-void
.end method

.method public onVtStatusInfo(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "status"    # I

    .prologue
    .line 516
    return-void
.end method
