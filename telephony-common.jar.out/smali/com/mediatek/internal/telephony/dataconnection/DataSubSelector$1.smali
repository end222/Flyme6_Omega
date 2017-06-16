.class Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onReceive: action="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v12, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 124
    const-string/jumbo v12, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, "simStatus":Ljava/lang/String;
    const-string/jumbo v12, "slot"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 126
    .local v11, "slotId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "slotId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " simStatus: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " mIsNeedWaitImsi: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v14

    .line 126
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 127
    const-string/jumbo v14, " mIsNeedWaitUnlock: "

    .line 126
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v15, "persist.radio.unlock"

    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v14

    .line 126
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v12, "IMSI"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 131
    const-string/jumbo v12, "1"

    .line 130
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 132
    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearRilMccMnc(I)V

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "sub for OP01 open market"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap14(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    .line 117
    .end local v10    # "simStatus":Ljava/lang/String;
    .end local v11    # "slotId":I
    :cond_1
    :goto_0
    return-void

    .line 136
    .restart local v10    # "simStatus":Ljava/lang/String;
    .restart local v11    # "slotId":I
    :cond_2
    const-string/jumbo v12, "OP01"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "get imsi so check op01 again"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)Landroid/content/Intent;

    .line 142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 146
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    const-string/jumbo v14, "false"

    invoke-static {v12, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 150
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 151
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 152
    const-string/jumbo v12, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 153
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "get imsi and need to check op02 again"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    move-result v12

    if-nez v12, :cond_6

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 164
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "get imsi and need to check op02Roaming again"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto/16 :goto_0

    .line 157
    :cond_7
    const-string/jumbo v12, "OP18"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "get imsi and need to check op18 again"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto :goto_1

    .line 171
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    .line 171
    if-eqz v12, :cond_1

    .line 173
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "get imsi because unlock"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v12, "phoneEx"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 175
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v6

    .line 177
    .local v6, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v6, :cond_1

    .line 179
    :try_start_0
    invoke-interface {v6}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isCapabilitySwitching()Z

    move-result v12

    if-nez v12, :cond_1

    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 183
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    const-string/jumbo v14, "false"

    invoke-static {v12, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v12, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 186
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    .line 185
    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap17(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 199
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    const-string/jumbo v14, "false"

    invoke-static {v12, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 204
    :catch_0
    move-exception v3

    .line 205
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 189
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap16(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_2

    .line 191
    :cond_c
    const-string/jumbo v12, "OM"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_2

    .line 193
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 194
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap18(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_2

    .line 195
    :cond_e
    const-string/jumbo v12, "OP18"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap19(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 209
    .end local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_f
    const-string/jumbo v12, "ABSENT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 211
    const-string/jumbo v12, "0"

    .line 210
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 212
    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearRilMccMnc(I)V

    goto/16 :goto_0

    .line 213
    :cond_10
    const-string/jumbo v12, "NOT_READY"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 215
    const-string/jumbo v12, "0"

    .line 214
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 217
    .end local v10    # "simStatus":Ljava/lang/String;
    .end local v11    # "slotId":I
    :cond_11
    const-string/jumbo v12, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 218
    const-string/jumbo v12, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 217
    if-eqz v12, :cond_1a

    .line 219
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mIsNeedWaitUnlock = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v15, "persist.radio.unlock"

    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 220
    const-string/jumbo v14, ", mIsNeedWaitUnlockRoaming = "

    .line 219
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 220
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .line 221
    const-string/jumbo v15, "persist.radio.unlock.roaming"

    .line 220
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v14

    .line 219
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    .line 223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    .line 222
    if-eqz v12, :cond_1

    .line 224
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock"

    const-string/jumbo v14, "false"

    invoke-static {v12, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v12, "OP01"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 243
    :cond_14
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "persist.radio.unlock.roaming"

    const-string/jumbo v14, "false"

    invoke-static {v12, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_0

    .line 228
    :cond_15
    const-string/jumbo v12, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 229
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    .line 230
    const/4 v13, 0x0

    .line 229
    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 231
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap17(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_3

    .line 233
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap16(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_3

    .line 235
    :cond_17
    const-string/jumbo v12, "OM"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_3

    .line 237
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap18(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 239
    :cond_19
    const-string/jumbo v12, "OP18"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 240
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap19(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 248
    :cond_1a
    const-string/jumbo v12, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "ACTION_LOCATED_PLMN_CHANGED"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_1

    .line 251
    const-string/jumbo v12, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 252
    const-string/jumbo v12, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "plmn":Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string/jumbo v12, ""

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "plmn = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 256
    const-string/jumbo v12, "first_time_roaming"

    const/4 v13, 0x0

    .line 255
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 257
    .local v9, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 259
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v12, "need_to_execute_roaming"

    const/4 v13, 0x1

    .line 258
    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 260
    .local v5, "firstTimeRoaming":Z
    const-string/jumbo v12, "460"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1c

    .line 261
    if-eqz v5, :cond_1

    .line 262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-nez v12, :cond_1b

    .line 263
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_0

    .line 267
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto/16 :goto_0

    .line 272
    :cond_1c
    if-nez v5, :cond_1

    .line 274
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "reset roaming flag"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 275
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 282
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "firstTimeRoaming":Z
    .end local v8    # "plmn":Ljava/lang/String;
    .end local v9    # "preference":Landroid/content/SharedPreferences;
    :cond_1d
    const-string/jumbo v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v12, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1f

    const/4 v12, 0x1

    :goto_4
    invoke-static {v13, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ACTION_AIRPLANE_MODE_CHANGED, enabled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 288
    const-string/jumbo v12, "OP01"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 303
    :cond_1e
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 305
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_0

    .line 283
    :cond_1f
    const/4 v12, 0x0

    goto :goto_4

    .line 290
    :cond_20
    const-string/jumbo v12, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 291
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 293
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap17(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_5

    .line 295
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap16(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_5

    .line 297
    :cond_22
    const-string/jumbo v12, "OM"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_5

    .line 299
    :cond_23
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap18(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 308
    :cond_24
    const-string/jumbo v12, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 309
    const-string/jumbo v12, "subscription"

    .line 310
    const/4 v13, -0x1

    .line 309
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 311
    .local v7, "nDefaultDataSubId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mIsUserConfirmDefaultData/nDefaultDataSubId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 312
    const-string/jumbo v14, "/"

    .line 311
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 314
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v12

    .line 313
    if-eqz v12, :cond_25

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 319
    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap10(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V

    goto/16 :goto_0

    .line 320
    .end local v7    # "nDefaultDataSubId":I
    :cond_26
    const-string/jumbo v12, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 325
    const-string/jumbo v12, "ro.mtk_c2k_support"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 327
    const-string/jumbo v12, "simDetectStatus"

    .line 328
    const/4 v13, 0x4

    .line 326
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 329
    .local v2, "detectedType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DataSubSelector detectedType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "OP01"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 331
    const/4 v12, 0x4

    if-ne v2, v12, :cond_27

    .line 332
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 335
    :cond_27
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "OM"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 336
    :cond_28
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 338
    const/4 v12, 0x4

    if-ne v2, v12, :cond_29

    .line 339
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap12(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 347
    .end local v2    # "detectedType":I
    :cond_29
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "sub for OP01 open market"

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap14(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto/16 :goto_0

    .line 342
    .restart local v2    # "detectedType":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap12(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_6
.end method
