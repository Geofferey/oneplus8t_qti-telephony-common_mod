.class Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;
.super Landroid/os/Handler;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 462
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15be

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    const-string v1, "JTest Received EVENT_ONLINE_CONFIG_CHANGED"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$100(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$200(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V

    .line 468
    nop

    .line 472
    :goto_0
    return-void
.end method
