.class public Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
.super Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;
.source "QtiGsmCdmaPhone.java"


# static fields
.field private static final BIT_IMS_STACK_UP:I = 0x3

.field private static final BIT_OEM_HOOK_READY:I = 0x2

.field private static final BIT_PHONE_READY_REQUIRED:I = 0x0

.field private static final BIT_RIL_CONNECTED:I = 0x1

.field private static final BIT_TOTAL_COUNT:I = 0x4

.field private static final DEFAULT_PHONE_INDEX:I = 0x0

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x3b

.field private static final EVENT_RESET_CARRIER_KEY_IMSI_ENCRYPTION:I = 0x3c

.field private static final LOG_TAG:Ljava/lang/String; = "QtiGsmCdmaPhone"

.field private static final PROP_EVENT_START:I = 0x3a

.field private static final READY:I = 0x1


# instance fields
.field private imsiToken:I

.field private mImsManagerConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneReadyBits:Ljava/util/BitSet;

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 90
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I
    .param p6, "precisePhoneType"    # I
    .param p7, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 97
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 82
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    .line 99
    const-string v0, "QtiGsmCdmaPhone"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getQtiRilInterface()Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    .line 101
    const/16 v2, 0x3b

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lcom/android/ims/FeatureConnector;

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;

    invoke-direct {v2, p0, p5, p1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;ILandroid/content/Context;)V

    invoke-direct {v1, p1, p5, v2, v0}, Lcom/android/ims/FeatureConnector;-><init>(Landroid/content/Context;ILcom/android/ims/FeatureConnector$Listener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    .line 125
    invoke-virtual {v1}, Lcom/android/ims/FeatureConnector;->connect()V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3c

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Ljava/util/BitSet;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .line 62
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private getQtiRilInterface()Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "getQtiRilInterface, unitTestMode = true"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    move-result-object v0

    .local v0, "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    goto :goto_0

    .line 331
    .end local v0    # "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    .line 333
    .restart local v0    # "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    :goto_0
    return-object v0
.end method

.method private isCurrentSubValid()Z
    .locals 4

    .line 200
    const/4 v0, 0x1

    .line 201
    .local v0, "provisionStatus":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 203
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    .line 204
    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    .line 206
    .local v2, "ex":Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    .line 208
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProvisionStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phone id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QtiGsmCdmaPhone"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiGsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiGsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method

.method private updatePhoneReady(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 146
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 150
    .local v0, "radioPowerOpt":I
    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    const-string v3, "persist.vendor.radio.poweron_opt"

    .line 151
    invoke-virtual {v2, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiGsmCdmaPhone"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 161
    const-string v3, "Sending Phone Ready to RIL."

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    invoke-interface {v3, v2, p1}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->sendPhoneStatus(II)V

    .line 163
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->clear(I)V

    .line 165
    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    invoke-interface {v0, p0}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->unRegisterForServiceReadyEvent(Landroid/os/Handler;)V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    .line 225
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 226
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->disconnect()V

    .line 227
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->dispose()V

    .line 228
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .line 193
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isCurrentSubValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getFullIccSerialNumber()Ljava/lang/String;
    .locals 3

    .line 355
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->getFullIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getUiccFullIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    :cond_0
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiGsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/16 v4, 0x17

    if-eq v0, v4, :cond_5

    const/16 v4, 0x29

    if-eq v0, v4, :cond_4

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_0

    .line 299
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 294
    :cond_0
    const-string v0, "Event EVENT_RESET_CARRIER_KEY_IMSI_ENCRYPTION"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->resetCarrierKeysForImsiEncryption()V

    .line 296
    goto/16 :goto_1

    .line 236
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 237
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 238
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 239
    .local v2, "isServiceReady":Z
    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 240
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    .line 241
    const-string v3, "EVENT_OEM_HOOK_SERVICE_READY received"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    goto :goto_0

    .line 244
    :cond_2
    const-string v4, "EVENT_OEM_HOOK_SERVICE_READY: service not ready"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->clear(I)V

    .line 247
    .end local v2    # "isServiceReady":Z
    :goto_0
    goto :goto_1

    .line 248
    :cond_3
    const-string v2, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    goto :goto_1

    .line 276
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 277
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 278
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    .line 279
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 280
    goto :goto_1

    .line 283
    :cond_5
    const-string v0, "Event EVENT_NV_READY Received"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 286
    const-string v0, "notifyMessageWaitingChanged"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 288
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updateVoiceMail()V

    .line 291
    goto :goto_1

    .line 257
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify call forward indication, phone id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 266
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 267
    goto :goto_1

    .line 270
    :cond_7
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneReadyBits:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 271
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    .line 272
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 273
    nop

    .line 303
    :goto_1
    return-void
.end method

.method protected phoneObjectUpdater(I)V
    .locals 1
    .param p1, "newVoiceTech"    # I

    .line 169
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->phoneObjectUpdater(I)V

    .line 170
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updatePhoneReady(I)V

    .line 171
    return-void
.end method

.method public radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    .locals 2
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .line 177
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 180
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    .line 181
    .local v0, "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V

    .line 189
    :cond_0
    return-void
.end method

.method public registerForOPIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 373
    goto :goto_0

    .line 371
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendSubscriptionSettings(Z)V
    .locals 4
    .param p1, "restoreNetworkSelection"    # Z

    .line 307
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v0

    .line 311
    .local v0, "serviceImpl":Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 312
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 313
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isPrimaryCarrierSlotId(I)Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v1

    .line 316
    .local v1, "type":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 318
    const-string v3, " settings network selection mode to AUTO "

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 320
    .end local v1    # "type":I
    goto :goto_1

    .line 321
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->sendSubscriptionSettings(Z)V

    .line 323
    :goto_1
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 2
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 346
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/CarrierInfoManager;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V

    .line 347
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    .line 348
    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;)V

    .line 349
    return-void
.end method

.method public setLocalCallHold(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 214
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const-string v0, "QtiGsmCdmaPhone"

    const-string v1, "mQtiRilInterface is not ready yet"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    return v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->setLocalCallHold(IZ)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 136
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    .line 137
    .local v0, "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    goto :goto_0

    .line 140
    :cond_0
    const-string v1, "QtiGsmCdmaPhone"

    const-string v2, "Set preferred network type without flex mapping support"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 143
    :goto_0
    return-void
.end method

.method public unRegisterForOPIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 385
    goto :goto_0

    .line 383
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
