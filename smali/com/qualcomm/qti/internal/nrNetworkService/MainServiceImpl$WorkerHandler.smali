.class Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;
.super Landroid/os/Handler;
.source "MainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainServiceImplHandler: "


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 98
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImplHandler: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3ea

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3ee

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 175
    :pswitch_0
    const-string v0, "EVENT_ON_ENDC_STATUS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 177
    .local v0, "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 178
    .local v1, "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$800(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 179
    goto/16 :goto_0

    .line 167
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_1
    const-string v0, "EVENT_ON_ENABLE_ENDC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 169
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 170
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    invoke-static {v2, v0, v3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$700(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 171
    goto/16 :goto_0

    .line 158
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_2
    const-string v0, "EVENT_ON_NR_ICON_TYPE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 160
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 161
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/NrIconType;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$600(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 163
    goto/16 :goto_0

    .line 149
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_3
    const-string v0, "EVENT_ON_5G_CONFIG_INFO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 151
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 152
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/NrConfigType;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$500(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 154
    goto/16 :goto_0

    .line 140
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :pswitch_4
    const-string v0, "EVENT_ON_UPPER_LAYER_INDICATION_INFO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 142
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 143
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/UpperLayerIndInfo;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$400(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 145
    goto/16 :goto_0

    .line 188
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->triggerQueryIcon()V

    goto :goto_0

    .line 184
    :cond_1
    const-string v0, "EVENT_STATE_INIT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)V

    .line 186
    goto :goto_0

    .line 133
    :cond_2
    const-string v0, "EVENT_ON_NR_DUAL_CONNECTIVITY_CHANGE_IND"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 135
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 136
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/DcParam;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$300(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 137
    goto :goto_0

    .line 124
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :cond_3
    const-string v0, "EVENT_ON_5G_SIGNAL_STRENGTH_CHANGE_IND"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 126
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 127
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/SignalStrength;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$200(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 129
    goto :goto_0

    .line 116
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :cond_4
    const-string v0, "EVENT_ON_5G_ENABLE_STATUS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 118
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 119
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$100(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 120
    goto :goto_0

    .line 107
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :cond_5
    const-string v0, "EVENT_ON_BEARER_ALLOCATION_CHANGE_IND"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 109
    .restart local v0    # "slotId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    .line 110
    .restart local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v3, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mToken:Lorg/codeaurora/internal/Token;

    iget-object v4, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mStatus:Lorg/codeaurora/internal/Status;

    iget-object v5, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;->mData:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$000(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 112
    nop

    .line 192
    .end local v0    # "slotId":I
    .end local v1    # "result":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
