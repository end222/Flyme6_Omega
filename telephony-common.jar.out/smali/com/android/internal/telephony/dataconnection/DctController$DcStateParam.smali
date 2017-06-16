.class public Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
.super Ljava/lang/Object;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DcStateParam"
.end annotation


# instance fields
.field private mMessage:Landroid/os/Message;

.field private mNeedCheck:Z

.field private mPhoneId:I

.field private mReason:Ljava/lang/String;

.field private mRegistrant:Landroid/os/Registrant;

.field private mState:Ljava/lang/String;

.field private mUser:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mNeedCheck:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)Landroid/os/Registrant;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mRegistrant:Landroid/os/Registrant;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;Landroid/os/Registrant;)Landroid/os/Registrant;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mRegistrant:Landroid/os/Registrant;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "msg"    # Landroid/os/Message;

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1642
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mState:Ljava/lang/String;

    .line 1643
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mPhoneId:I

    .line 1644
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mReason:Ljava/lang/String;

    .line 1645
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mMessage:Landroid/os/Message;

    .line 1641
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "needCheckDisconnect"    # Z

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1649
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mUser:Ljava/lang/String;

    .line 1650
    iput-boolean p3, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mNeedCheck:Z

    .line 1648
    return-void
.end method


# virtual methods
.method public confirmPreCheckDetach()Z
    .locals 2

    .prologue
    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "confirmPreCheckDetach, msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap7(Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    .line 1667
    const/4 v0, 0x0

    return v0

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1670
    const/4 v0, 0x1

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 1658
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mPhoneId:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPhoneId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1677
    const-string/jumbo v1, ", user = "

    .line 1676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1677
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mUser:Ljava/lang/String;

    .line 1676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1677
    const-string/jumbo v1, ", needCheck = "

    .line 1676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1677
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mNeedCheck:Z

    .line 1676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1678
    const-string/jumbo v1, ", message = "

    .line 1676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1678
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mMessage:Landroid/os/Message;

    .line 1676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1678
    const-string/jumbo v1, ", Registrant = "

    .line 1676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1678
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mRegistrant:Landroid/os/Registrant;

    .line 1676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1678
    const-string/jumbo v1, "]"

    .line 1676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
