.class Lcom/android/internal/telephony/cat/BipService$5;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/BipService;->newRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipService;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1124
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 1125
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get0(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get1(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipChannelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-get4(Lcom/android/internal/telephony/cat/BipService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v0

    .line 1129
    .local v0, "channel":Lcom/android/internal/telephony/cat/Channel;
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetworkCallbackListener.onAvailable, mChannelId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1130
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipService;->-get4(Lcom/android/internal/telephony/cat/BipService;)I

    move-result v3

    .line 1129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1130
    const-string/jumbo v3, " , mIsOpenInProgress: "

    .line 1129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1130
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipService;->-get9(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v3

    .line 1129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1131
    const-string/jumbo v3, " , mIsNetworkAvailableReceived: "

    .line 1129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1131
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipService;->-get8(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v3

    .line 1129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    if-nez v0, :cond_1

    .line 1133
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Channel is null."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get9(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get8(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1136
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/BipService;->-set2(Lcom/android/internal/telephony/cat/BipService;Z)Z

    .line 1137
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/BipService;->-set3(Lcom/android/internal/telephony/cat/BipService;Landroid/net/Network;)Landroid/net/Network;

    .line 1138
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-wrap0(Lcom/android/internal/telephony/cat/BipService;)V

    .line 1123
    :goto_0
    return-void

    .line 1140
    :cond_2
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Bip channel has been established."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1146
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 1147
    const/4 v1, 0x0

    .line 1148
    .local v1, "ret":I
    const/4 v0, 0x0

    .line 1149
    .local v0, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-get0(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1150
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1152
    :cond_0
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NetworkCallbackListener.onLost: network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2, p0}, Lcom/android/internal/telephony/cat/BipService;->-wrap4(Lcom/android/internal/telephony/cat/BipService;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1154
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-get10(Lcom/android/internal/telephony/cat/BipService;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 1155
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;)V

    .line 1157
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-wrap2(Lcom/android/internal/telephony/cat/BipService;)V

    .line 1145
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .prologue
    .line 1162
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 1163
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipService;->-get0(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1166
    :cond_0
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "NetworkCallbackListener.onUnavailable"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/BipService;->-wrap4(Lcom/android/internal/telephony/cat/BipService;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1168
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipService;->-get10(Lcom/android/internal/telephony/cat/BipService;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;)V

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService$5;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipService;->-wrap2(Lcom/android/internal/telephony/cat/BipService;)V

    .line 1161
    return-void
.end method
