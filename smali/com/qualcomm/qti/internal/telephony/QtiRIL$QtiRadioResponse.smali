.class public Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;
.super Lvendor/qti/hardware/radio/qtiradio/V2_4/IQtiRadioResponse$Stub;
.source "QtiRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QtiRadioResponse"
.end annotation


# static fields
.field static final QTI_RILJ_LOG_TAG:Ljava/lang/String; = "QtiRadioResponse"


# instance fields
.field mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;
    .param p2, "ril"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 546
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_4/IQtiRadioResponse$Stub;-><init>()V

    .line 547
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 548
    return-void
.end method

.method private responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 779
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiProcessResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 780
    .local v0, "request":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 781
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiGetMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 782
    .local v1, "result":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/SmsResponse;

    iget v3, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->messageRef:I

    iget-object v4, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget v5, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->errorCode:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 783
    .local v2, "ret":Lcom/android/internal/telephony/SmsResponse;
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_0

    .line 784
    invoke-virtual {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 786
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v3, v0, p1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiProcessResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 788
    .end local v1    # "result":Landroid/os/Message;
    .end local v2    # "ret":Lcom/android/internal/telephony/SmsResponse;
    :cond_1
    return-void
.end method

.method private responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "str"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiProcessResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 573
    .local v0, "request":Ljava/lang/Object;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiGetMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 574
    .local v1, "result":Landroid/os/Message;
    if-eqz v1, :cond_1

    .line 575
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 576
    invoke-virtual {p0, v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 578
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v2, v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiProcessResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 580
    :cond_1
    return-void
.end method


# virtual methods
.method public getAtrResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "qtiResponseInfo"    # Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .param p2, "atr"    # Ljava/lang/String;

    .line 588
    const-string v0, "QtiRadioResponse"

    const-string v1, "getAtrResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->toRadioResponseInfo(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)Landroid/hardware/radio/V1_0/RadioResponseInfo;

    move-result-object v0

    .line 591
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public on5gConfigInfoResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "confType"    # I

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gConfigInfoResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ConfigType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->on5gConfigInfoResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 714
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public on5gStatusResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "enabled"    # I

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gStatusResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->on5gStatusResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 643
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onDisable5gResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "status"    # I

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisable5gResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onDisable5gResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 617
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onEnable5gOnlyResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "status"    # I

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnable5gOnlyResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onEnable5gOnlyResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 630
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onEnable5gResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "status"    # I

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnable5gResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onEnable5gResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 604
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onEnableEndcResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "status"    # I

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnableEndcResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onEnableEndcResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 756
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onEndcStatusResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "endcStatus"    # I

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEndcStatusResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " endcStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onEndcStatusResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 769
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrBearerAllocationResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "bearerStatus"    # I

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrBearerAllocationResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bearerStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onNrBearerAllocationResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 685
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrBearerAllocationResponse_2_1(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "bearerStatus"    # I

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrBearerAllocationResponse_2_1: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bearerStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onNrBearerAllocationResponse_2_1(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 671
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrDcParamResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "dcParam"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrDcParamResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dcParam = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onNrDcParamResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 657
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNrIconTypeResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "iconType"    # I

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrIconTypeResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " iconType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onNrIconTypeResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 743
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onSignalStrengthResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "signalStrength"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrengthResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " signalStrength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onSignalStrengthResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 729
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onUpperLayerIndInfoResponse(IILvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "errorCode"    # I
    .param p3, "uliInfo"    # Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpperLayerIndInfoResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " UpperLayerIndInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    if-eqz v0, :cond_0

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onUpperLayerIndInfoResponse(IILvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 700
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestArfcnChangeResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "qtiResponseInfo"    # Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .param p2, "suc"    # Ljava/lang/String;

    .line 806
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->toRadioResponseInfo(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)Landroid/hardware/radio/V1_0/RadioResponseInfo;

    move-result-object v0

    .line 807
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method public sendCdmaSmsResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 3
    .param p1, "qtiResponseInfo"    # Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 796
    const-string v0, "QTIRILJ"

    const-string v1, "sendCdmaSmsResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->toRadioResponseInfo(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)Landroid/hardware/radio/V1_0/RadioResponseInfo;

    move-result-object v0

    .line 799
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->serial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] < RIL_REQUEST_CDMA_SEND_SMS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioResponse"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 801
    return-void
.end method

.method sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;

    .line 556
    if-eqz p1, :cond_0

    .line 557
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 558
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 560
    :cond_0
    return-void
.end method

.method public setCarrierInfoForImsiEncryptionResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)V
    .locals 2
    .param p1, "info"    # Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCarrierInfoForImsiEncryptionResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->access$300(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;->setCarrierInfoForImsiEncryptionResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)V

    .line 776
    return-void
.end method

.method toRadioResponseInfo(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .locals 2
    .param p1, "qtiResponseInfo"    # Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    .line 564
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 565
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->type:I

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    .line 566
    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->serial:I

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 567
    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->error:I

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 568
    return-object v0
.end method
