.class final Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;
.super Landroid/os/Handler;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 1127
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .param p2, "x1"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;

    .line 1127
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1133
    const/4 v0, 0x0

    .line 1134
    .local v0, "targetPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1136
    .local v1, "b":Landroid/os/Bundle;
    iget v2, p1, Landroid/os/Message;->what:I

    .line 1138
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;

    .line 1140
    .local v2, "request":Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1141
    monitor-enter v2

    .line 1142
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1143
    monitor-exit v2

    .line 1146
    return-void

    .line 1143
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
