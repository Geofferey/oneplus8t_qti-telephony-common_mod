.class public final Lcom/qualcomm/qti/internal/telephony/QtiRIL;
.super Lcom/android/internal/telephony/RIL;
.source "QtiRIL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;,
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;,
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;,
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;
    }
.end annotation


# static fields
.field static final QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "QTIRILJ"


# instance fields
.field mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

.field mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

.field final mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

.field mOEMRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

.field private mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

.field mQtiPhoneId:I

.field private mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

.field mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;

.field final mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

.field private final mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    const-string v0, "slot1"

    const-string v1, "slot2"

    const-string v2, "slot3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    .line 181
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    .line 182
    const-string v0, "QTIRILJ"

    const-string v1, "QtiRIL"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    .line 184
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->registerForQtiRadioServiceNotification()V

    .line 186
    iput-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mOEMRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 66
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetServiceAndRequestList()V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 66
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isQtiRadioServiceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 66
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->initQtiRadio()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 66
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    return-object v0
.end method

.method private addRanToOperatorNumeric(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "ran"    # I

    .line 432
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 428
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private declared-synchronized initQtiRadio()V
    .locals 4

    monitor-enter p0

    .line 156
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->getService(Ljava/lang/String;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 157
    if-nez v0, :cond_0

    .line 158
    const-string v0, "QTIRILJ"

    const-string v1, "initQtiRadio: mQtiRadio is null. Return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 161
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiRIL;
    :cond_0
    :try_start_1
    const-string v0, "QTIRILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initQtiRadio: mQtiRadio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 163
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 162
    invoke-interface {v0, v1, v2, v3}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 164
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

    invoke-direct {v0, p0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

    .line 165
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;I)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;

    .line 166
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

    invoke-interface {v1, v2, v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->setCallback(Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "QTIRILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initQtiRadio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetServiceAndRequestList()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private isQtiRadioServiceConnected()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerForQtiRadioServiceNotification()V
    .locals 5

    .line 139
    const-string v0, "QTIRILJ"

    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    const-string v2, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadio"

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    .line 140
    invoke-interface {v1, v2, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v1

    .line 142
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 143
    const-string v2, "Failed to register for service start notifications"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "ret":Z
    :cond_0
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register for service start notifications. Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private resetServiceAndRequestList()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetProxyAndRequestList()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 101
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

    .line 102
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;

    .line 103
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 104
    return-void
.end method

.method private sendCdmaSms([BLandroid/os/Message;Z)V
    .locals 8
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "expectMore"    # Z

    .line 486
    const-string v0, "persist.radio.feature"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "feature":Ljava/lang/String;
    const-string v1, "CDMA_SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "QTIRILJ"

    if-nez v1, :cond_0

    .line 488
    const-string v1, "Feature not enabled, fall back to default sendCdmaSms"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSms([BLandroid/os/Message;)V

    .line 490
    return-void

    .line 492
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getQtiRadioProxy(Landroid/os/Message;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    move-result-object v1

    .line 493
    .local v1, "radioProxy":Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;
    nop

    .line 494
    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v3

    .line 495
    .local v3, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v3, :cond_1

    .line 496
    const/16 v4, 0x57

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p0, v4, p2, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->obtainRequestSerial(ILandroid/os/Message;Landroid/os/WorkSource;)I

    move-result v4

    .line 500
    .local v4, "serial":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] >  RIL_REQUEST_CDMA_SEND_SMS expectMore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 503
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {p0, v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    .line 506
    :try_start_0
    invoke-interface {v3, v4, v2, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;Z)V

    .line 507
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v4, v7, v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    goto :goto_0

    .line 509
    :catch_0
    move-exception v5

    .line 510
    .local v5, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetServiceAndRequestList()V

    .line 512
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .end local v4    # "serial":I
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 513
    :cond_1
    const-string v4, "fall back to default sendCdmaSms"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSms([BLandroid/os/Message;)V

    .line 516
    :goto_1
    return-void
.end method


# virtual methods
.method public disable5g(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 235
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 236
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->disable5g(I)V

    .line 241
    return-void

    .line 239
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enable5g(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 225
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 226
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->enable5g(I)V

    .line 231
    return-void

    .line 229
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enable5gOnly(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 245
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 246
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->enable5gOnly(I)V

    .line 251
    return-void

    .line 249
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableEndc(IZ)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 381
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v0

    .line 382
    .local v0, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->enableEndc(IZ)V

    .line 387
    return-void

    .line 385
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    move v0, p2

    .line 345
    .local v0, "propVal":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 346
    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v1

    .line 347
    .local v1, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v1, :cond_0

    .line 349
    :try_start_0
    invoke-interface {v1, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 352
    goto :goto_0

    .line 350
    :catch_0
    move-exception v2

    .line 351
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "API Error"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "QTIRILJ"

    const-string v3, "getPropertyValueBool HAL API not available"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 358
    :goto_0
    return v0
.end method

.method public getPropertyValueInt(Ljava/lang/String;I)I
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    move v0, p2

    .line 327
    .local v0, "propVal":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 328
    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v1

    .line 329
    .local v1, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v1, :cond_0

    .line 331
    :try_start_0
    invoke-interface {v1, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 334
    goto :goto_0

    .line 332
    :catch_0
    move-exception v2

    .line 333
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "API Error"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 336
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "QTIRILJ"

    const-string v3, "getPropertyValueInt HAL API not available"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 340
    :goto_0
    return v0
.end method

.method public getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    move-object v0, p2

    .line 363
    .local v0, "propVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 364
    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v1

    .line 365
    .local v1, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v1, :cond_0

    .line 367
    :try_start_0
    invoke-interface {v1, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 370
    goto :goto_0

    .line 368
    :catch_0
    move-exception v2

    .line 369
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "API Error"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "QTIRILJ"

    const-string v3, "getPropertyValueString HAL API not available"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0
.end method

.method public getQtiRadioProxy(Landroid/os/Message;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 196
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mIsCellularSupported:Z

    const/4 v1, 0x1

    const-string v2, "QTIRILJ"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 197
    const-string v0, "getQtiRadioProxy: Not calling getService(): wifi-only"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz p1, :cond_0

    .line 199
    nop

    .line 200
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 199
    invoke-static {p1, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 201
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 203
    :cond_0
    return-object v3

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    if-nez v0, :cond_2

    .line 208
    const-string v0, "getQtiRadioProxy: mRadioProxy == null"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-eqz p1, :cond_2

    .line 210
    nop

    .line 211
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 210
    invoke-static {p1, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 212
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    return-object v0
.end method

.method qtiGetMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "request"    # Ljava/lang/Object;

    .line 520
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method qtiProcessResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 525
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method qtiProcessResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ret"    # Ljava/lang/Object;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "str"    # Ljava/lang/Object;

    .line 529
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->processResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 530
    return-void
.end method

.method public query5gConfigInfo(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 317
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;

    move-result-object v0

    .line 318
    .local v0, "radioProxy2_1":Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;
    if-eqz v0, :cond_0

    .line 319
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->query5gConfigInfo(I)V

    .line 323
    return-void

    .line 321
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public query5gStatus(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 255
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 256
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->query5gStatus(I)V

    .line 261
    return-void

    .line 259
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryEndcStatus(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 391
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v0

    .line 392
    .local v0, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v0, :cond_0

    .line 393
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->queryEndcStatus(I)V

    .line 397
    return-void

    .line 395
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrBearerAllocation(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 275
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 276
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrBearerAllocation(I)V

    .line 281
    return-void

    .line 279
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrDcParam(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 265
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 266
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrDcParam(I)V

    .line 271
    return-void

    .line 269
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrIconType(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 306
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;

    move-result-object v0

    .line 307
    .local v0, "radioProxy2_2":Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;
    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;->queryNrIconType(I)V

    .line 312
    return-void

    .line 310
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrSignalStrength(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 285
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 286
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrSignalStrength(I)V

    .line 291
    return-void

    .line 289
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryUpperLayerIndInfo(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 295
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;

    move-result-object v0

    .line 296
    .local v0, "radioProxy2_1":Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;
    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->queryUpperLayerIndInfo(I)V

    .line 301
    return-void

    .line 299
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestArfcnChange(Landroid/os/Message;I)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "change"    # I

    .line 955
    const-string v0, "QTIRILJ"

    const-string v1, "requestArfcnChange"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v2, 0xb4

    invoke-virtual {p0, v2, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->obtainRequestSerial(ILandroid/os/Message;Landroid/os/WorkSource;)I

    move-result v1

    .line 959
    .local v1, "serial":I
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    invoke-interface {v2, v1, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->requestArfcnChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    goto :goto_0

    .line 960
    :catch_0
    move-exception v2

    .line 961
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestArfcnChange: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetServiceAndRequestList()V

    .line 964
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendCdmaSMSExpectMore([BLandroid/os/Message;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 478
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->canToggleUiccApplicationsEnablement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSMSExpectMore([BLandroid/os/Message;)V

    .line 480
    return-void

    .line 482
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->sendCdmaSms([BLandroid/os/Message;Z)V

    .line 483
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 467
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->canToggleUiccApplicationsEnablement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSms([BLandroid/os/Message;)V

    .line 469
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->sendCdmaSms([BLandroid/os/Message;Z)V

    .line 473
    return-void
.end method

.method public setCallbacks(Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;)V
    .locals 0
    .param p1, "qtiRadioResponse"    # Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;
    .param p2, "qtiRadioIndication"    # Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    .line 536
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;

    .line 537
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    .line 538
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;)V
    .locals 9
    .param p1, "serial"    # I
    .param p2, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 400
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 401
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_4/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_4/IQtiRadio;

    move-result-object v0

    .line 402
    .local v0, "radioProxy2_4":Lvendor/qti/hardware/radio/qtiradio/V2_4/IQtiRadio;
    const-string v1, "QTIRILJ"

    if-nez v0, :cond_0

    .line 403
    const-string v2, "radioProxy2_4 not available!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 406
    :cond_0
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;-><init>()V

    .line 408
    .local v2, "halImsiInfo":Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;
    iget-object v3, v2, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 409
    iget-object v3, v2, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 410
    iget-object v3, v2, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 411
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 412
    iget-object v3, v2, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    .line 413
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->expirationTime:J

    .line 415
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-byte v6, v3, v5

    .line 416
    .local v6, "b":B
    iget-object v7, v2, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    iget-object v7, v7, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->carrierKey:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/Byte;

    invoke-direct {v8, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result v3

    iput v3, v2, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->keyType:I

    .line 420
    :try_start_0
    const-string v3, "setCarrierInfoForImsiEncryption request to RIL"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-interface {v0, p1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_4/IQtiRadio;->setCarrierInfoForImsiEncryption(ILvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_1

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 425
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setImsiEncryptionResponseCallback(Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;)V
    .locals 0
    .param p1, "qtiCarrierInfo"    # Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 220
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 221
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "ran"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 438
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p0, p3}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 445
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 446
    const/16 v1, 0x2f

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p0, v1, p3, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 449
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    :try_start_0
    invoke-static {p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->convertAntToRan(I)I

    move-result v2

    .line 450
    .local v2, "halRan":I
    nop

    .line 451
    invoke-direct {p0, p1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->addRanToOperatorNumeric(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, "operatorNumericWithRan":Ljava/lang/String;
    const-string v4, "QTIRILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " operatorNumeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " [PHONE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result v4

    invoke-interface {v0, v4, v3}, Landroid/hardware/radio/V1_0/IRadio;->setNetworkSelectionModeManual(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v2    # "halRan":I
    .end local v3    # "operatorNumericWithRan":Ljava/lang/String;
    goto :goto_0

    .line 457
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setNetworkSelectionModeManual"

    invoke-virtual {p0, v1, v3, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 462
    .end local v0    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
