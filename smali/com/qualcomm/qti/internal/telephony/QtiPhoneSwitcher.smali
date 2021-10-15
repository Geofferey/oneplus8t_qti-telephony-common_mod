.class public Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
.super Lcom/android/internal/telephony/vendor/VendorPhoneSwitcher;
.source "QtiPhoneSwitcher.java"


# static fields
.field private static final DEFAULT_PHONE_INDEX:I


# instance fields
.field private final NONUSER_INITIATED_SWITCH:I

.field private final USER_INITIATED_SWITCH:I

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "maxActivePhones"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/vendor/VendorPhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->USER_INITIATED_SWITCH:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->NONUSER_INITIATED_SWITCH:I

    .line 58
    invoke-static {p2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 59
    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method private handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 75
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 82
    .local v1, "rspId":I
    const v2, 0x8041e

    if-ne v1, v2, :cond_2

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 84
    .local v2, "response_size":I
    if-gez v2, :cond_1

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response size is Invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 86
    return-void

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxDataAttachModemCount:I

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol Max Data Changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxDataAttachModemCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 91
    .end local v2    # "response_size":I
    :cond_2
    return-void

    .line 76
    .end local v0    # "payload":Ljava/nio/ByteBuffer;
    .end local v1    # "rspId":I
    :cond_3
    :goto_0
    const-string v0, "Null data received in handleUnsolMaxDataAllowedChange"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private informDdsToRil(I)V
    .locals 4
    .param p1, "ddsSubId"    # I

    .line 174
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 176
    .local v0, "ddsPhoneId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    const-string v1, "Oem hook service is not ready yet"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->updateHalCommandToUse()Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    const-string v1, "sendRilCommands: waiting for HAL command update, may be radio is unavailable"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 182
    return-void

    .line 185
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mActiveModemCount:I

    if-ge v1, v2, :cond_3

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InformDdsToRil rild= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", DDS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isCallInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(III)V

    goto :goto_1

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(III)V

    .line 185
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private isCallInProgress()Z
    .locals 1

    .line 201
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public static make(ILandroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .locals 1
    .param p0, "maxActivePhones"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 63
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 67
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    return-object v0
.end method

.method private queryMaxDataAllowed()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getMaxDataAllowed()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxDataAttachModemCount:I

    .line 72
    return-void
.end method

.method private updateHalCommandToUse()Z
    .locals 6

    .line 225
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 226
    const/4 v0, 0x1

    .line 227
    .local v0, "isRadioAvailable":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mActiveModemCount:I

    const/4 v5, 0x2

    if-ge v3, v4, :cond_1

    .line 228
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v4

    if-eq v4, v5, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    and-int/2addr v0, v4

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    .end local v3    # "i":I
    :cond_1
    if-eqz v0, :cond_3

    .line 232
    const-string v1, "update HAL command"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    .line 235
    return v2

    .line 237
    :cond_3
    const-string v3, "radio is unavailable"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 240
    .end local v0    # "isRadioAvailable":Z
    :cond_4
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 95
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 96
    .local v0, "ddsSubId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 98
    .local v1, "ddsPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle event - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x78

    if-eq v3, v4, :cond_0

    .line 121
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorPhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 111
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 113
    .local v3, "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 114
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V

    goto :goto_1

    .line 116
    :cond_1
    const-string v4, "Error: empty result, EVENT_UNSOL_MAX_DATA_ALLOWED_CHANGED"

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 118
    goto :goto_1

    .line 102
    .end local v3    # "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->queryMaxDataAllowed()V

    goto :goto_0

    .line 105
    :cond_3
    const-string v3, "Oem hook service is not ready"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 107
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorPhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    .line 108
    nop

    .line 123
    :goto_1
    return-void
.end method

.method protected isPhoneInVoiceCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 139
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 140
    const-string v1, "isPhoneInVoiceCall: phone is null"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 141
    return v0

    .line 145
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v1

    const-string v2, "persist.vendor.radio.enable_temp_dds"

    invoke-virtual {v1, v2, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v1

    .line 148
    .local v1, "tmpSwitchProperty":Z
    const/4 v2, 0x0

    .line 149
    .local v2, "dataDuringCallsEnabled":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v3

    .line 150
    .local v3, "dataEnabledSettings":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataAllowedInVoiceCall()Z

    move-result v4

    move v2, v4

    .line 154
    :cond_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneInVoiceCall: tmpSwitchProperty="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", dataDuringCallsEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return v0

    .line 162
    .end local v1    # "tmpSwitchProperty":Z
    .end local v2    # "dataDuringCallsEnabled":Z
    .end local v3    # "dataEnabledSettings":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    :cond_2
    nop

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 165
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v2, v2, v1

    .line 166
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v2, v2, v1

    .line 167
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v2, v2, v1

    .line 168
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v2, v2, v1

    .line 169
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v2, v2, v1

    .line 170
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 165
    :cond_4
    return v0

    .line 159
    .end local v1    # "phoneId":I
    :catch_0
    move-exception v1

    .line 160
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPhoneInVoiceCall: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 161
    return v0
.end method

.method protected isUiccProvisioned(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 126
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    .line 127
    .local v0, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 128
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 129
    .local v1, "status":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccProvisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 131
    return v1
.end method

.method protected onEvaluate(ZLjava/lang/String;)Z
    .locals 1
    .param p1, "requestsChanged"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->updateHalCommandToUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const-string v0, "Wait for HAL command update"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    return v0

    .line 211
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/vendor/VendorPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected sendRilCommands(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 216
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->updateHalCommandToUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const-string v0, "Wait for HAL command update"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 218
    return-void

    .line 221
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorPhoneSwitcher;->sendRilCommands(I)V

    .line 222
    return-void
.end method
