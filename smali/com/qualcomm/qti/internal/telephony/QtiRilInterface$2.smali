.class Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;
.super Landroid/content/BroadcastReceiver;
.source "QtiRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 619
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 622
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 625
    nop

    .line 626
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 625
    const-string v1, "phone"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 629
    .local v0, "phoneId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "qualcomm.intent.action.ACTION_ADN_INIT_DONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 632
    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 636
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$500(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .end local v1    # "ar":Landroid/os/AsyncResult;
    goto :goto_0

    .line 638
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "qualcomm.intent.action.ACTION_ADN_RECORDS_IND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 639
    const-string v1, "adn_records"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 643
    .local v1, "data":[B
    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v4, v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$600(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[BI)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 647
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->access$700(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 638
    .end local v1    # "data":[B
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_1
    :goto_0
    nop

    .line 649
    :goto_1
    return-void
.end method
