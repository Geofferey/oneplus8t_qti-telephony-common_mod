.class Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiUiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 267
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 269
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->access$000(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;)V

    .line 271
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "stateExtra":Ljava/lang/String;
    const/4 v2, -0x1

    const-string v3, "phone"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 274
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   sim_state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->access$000(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;)V

    .line 277
    const-string v3, "ABSENT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 282
    :cond_0
    const-string v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "LOADED"

    if-nez v3, :cond_1

    .line 283
    const-string v3, "NOT_READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 284
    const-string v3, "LOCKED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 285
    const-string v3, "IMSI"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 286
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-static {v3, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->access$200(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;I)V

    .line 291
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 292
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    goto :goto_0

    .line 295
    .end local v1    # "stateExtra":Ljava/lang/String;
    .end local v2    # "phoneId":I
    :cond_3
    const-string v1, "com.android.phone.SIP_ADD_PHONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    goto :goto_2

    .line 296
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    const-string v2, "onReceive SIP phone change updateUserPreferences"

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->access$000(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 300
    :goto_2
    return-void
.end method
