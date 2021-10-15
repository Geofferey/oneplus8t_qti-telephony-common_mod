.class final Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$SsHandler;
.super Landroid/os/Handler;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 2268
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$SsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .param p2, "x1"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;

    .line 2268
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$SsHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 2271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.telselfcheck.ss"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2273
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$SsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SS_ACTION handleMessage msg.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$100(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V

    .line 2274
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "what"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2277
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 2278
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2281
    :cond_0
    const/4 v2, 0x0

    .local v2, "error":I
    goto :goto_1

    .line 2279
    .end local v2    # "error":I
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 2283
    .restart local v2    # "error":I
    :goto_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$SsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SS_ACTION handleMessage error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$100(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V

    .line 2284
    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2286
    if-nez v2, :cond_6

    .line 2287
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3eb

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3ed

    if-eq v3, v4, :cond_2

    goto :goto_3

    .line 2313
    :cond_2
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 2314
    .local v3, "cwResult":[I
    const-string v4, "cwResult"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2315
    goto :goto_3

    .line 2296
    .end local v3    # "cwResult":[I
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2297
    .local v3, "cfResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2298
    .local v4, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 2299
    .local v7, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2305
    .local v8, "result":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2298
    .end local v7    # "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v8    # "result":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2307
    :cond_4
    const-string v5, "cfResult"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2308
    goto :goto_3

    .line 2289
    .end local v3    # "cfResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_5
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 2290
    .local v3, "cbResult":[I
    const-string v4, "cbResult"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2324
    .end local v3    # "cbResult":[I
    :cond_6
    :goto_3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$500()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2325
    return-void
.end method
