.class public Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
.super Landroid/os/Handler;
.source "QtiRadioCapabilityController.java"


# static fields
.field private static final ALLOW_FLEX_MAPPING_ON_INACTIVE_SUB_PROPERTY:Ljava/lang/String; = "persist.radio.flex_map_inactive"

.field private static final DBG:Z = true

.field private static final EVENT_RADIO_CAPS_AVAILABLE:I = 0x2

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_UPDATE_BINDING_DONE:I = 0x3

.field private static final FAILURE:I = 0x0

.field private static final FLEX_MAPPING_TYPE:Ljava/lang/String; = "persist.vendor.radio.flexmap_type"

.field private static final LOG_TAG:Ljava/lang/String; = "QtiRadioCapabilityController"

.field private static final SUCCESS:I = 0x1

.field private static final VDBG:Z

.field private static mNumPhones:I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

.field private static sSetNwModeLock:Ljava/lang/Object;


# instance fields
.field private bothPhonesMappedToSameStack:Z

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mIsSetPrefNwModeInProgress:Z

.field private mNeedSetDds:Z

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

.field private mRadioAccessFamily:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStoredResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    .line 86
    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 87
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    .line 96
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 145
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 120
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 122
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 123
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    .line 124
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    .line 125
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    .line 126
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    .line 127
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    .line 129
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    .line 130
    const-string v2, "telephony_subscription_service"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 131
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 134
    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x1

    invoke-interface {v2, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    const-string v1, "Constructor - Exit"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private areAllModemCapInfoReceived()Z
    .locals 2

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 2

    .line 111
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "QtiRadioCapabilityController.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method private getNetworkModeFromDB(I)I
    .locals 7
    .param p1, "phoneId"    # I

    .line 468
    const-string v0, "preferred_network_mode"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 473
    .local v1, "subId":[I
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .local v2, "networkMode":I
    goto :goto_0

    .line 475
    .end local v2    # "networkMode":I
    :catch_0
    move-exception v2

    .line 476
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNwMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 477
    sget v3, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    move v2, v3

    .line 480
    .local v2, "networkMode":I
    :goto_0
    const-string v3, "] = "

    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v5, 0x0

    aget v6, v1, v5

    .line 481
    invoke-virtual {v4, v6}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " get sub based N/W mode, val["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " get slotId based N/W mode, val["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 489
    :goto_1
    return v2
.end method

.method private getNumOfRafSupportedForNwMode(II)I
    .locals 4
    .param p1, "nwMode"    # I
    .param p2, "radioAccessFamily"    # I

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "supportedRafMaskForNwMode":I
    if-nez p2, :cond_0

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Modem Capabilites are null. Return!!, N/W mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 565
    return v0

    .line 568
    :cond_0
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 570
    .local v1, "nwModeRaf":I
    and-int v0, p2, v1

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumOfRATsSupportedForNwMode: nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " nwModeRaf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] raf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " supportedRafMaskForNwMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 575
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    return v2
.end method

.method private handleRadioCapsAvailable()V
    .locals 2

    .line 270
    const-string v0, "handleRadioCapsAvailable... "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    .line 276
    :goto_0
    return-void
.end method

.method private handleUpdateBindingDone(I)V
    .locals 7
    .param p1, "result"    # I

    .line 207
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_2

    .line 208
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    .line 210
    nop

    .line 211
    const-string v0, "persist.vendor.radio.flexmap_type"

    const-string v3, "dds"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "flexMapSupportType":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    const-string v3, "handleUpdateBindingDone: set dds "

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    .line 218
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v4

    .line 217
    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_1

    .line 220
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v3, v4, :cond_2

    .line 221
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 222
    .local v4, "resp":Landroid/os/Message;
    if-eqz v4, :cond_1

    .line 223
    const-string v5, "handleUpdateBindingDone: try initiate pending flex map req "

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 225
    return-void

    .line 220
    .end local v4    # "resp":Landroid/os/Message;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "flexMapSupportType":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-ne p1, v2, :cond_3

    .line 237
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateNewNwModeToDB()V

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v3, :cond_3

    .line 239
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    check-cast v3, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->fetchIMEI()V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 243
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v3, :cond_4

    .line 244
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendSubscriptionSettings(I)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 247
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setDdsIfRequired(Z)V

    .line 250
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 253
    if-ne p1, v2, :cond_5

    move v1, v2

    :cond_5
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    .line 256
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_8

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "errorCode":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 259
    .local v3, "resp":Landroid/os/Message;
    if-eqz v3, :cond_7

    .line 260
    if-eq p1, v2, :cond_6

    .line 261
    const/4 v1, 0x2

    .line 263
    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 264
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v1    # "errorCode":I
    .end local v3    # "resp":Landroid/os/Message;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 267
    .end local v0    # "i":I
    :cond_8
    return-void
.end method

.method private internalSetNetworkMode(IILandroid/os/Message;)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 794
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v0

    .line 795
    .local v0, "modemRaf":I
    if-nez v0, :cond_0

    .line 796
    const-string v1, "internalSetNetworkMode: modem rat is unknown"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 798
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->notifyNetworkTypeChanged(I)V

    .line 799
    return-void

    .line 801
    :cond_0
    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 802
    .local v1, "rafFromType":I
    and-int v2, v1, v0

    int-to-long v2, v2

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, p1

    .line 803
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getEffectiveAllowedNetworkTypes()J

    move-result-wide v4

    and-long/2addr v2, v4

    long-to-int v2, v2

    .line 804
    .local v2, "filteredRaf":I
    invoke-static {v2}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v3

    .line 806
    .local v3, "filteredType":I
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v4, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 808
    .local v4, "subId":[I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internalSetNetworkMode: subId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " new n/w mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " old n/w mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " requested n/w mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 808
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 811
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v6, 0x0

    aget v7, v4, v6

    invoke-virtual {v5, v7}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v5

    const-string v7, "preferred_network_mode"

    if-eqz v5, :cond_1

    .line 812
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v4, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 816
    :cond_1
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v7, p1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 819
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, p1

    invoke-interface {v5, v3, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 820
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->notifyNetworkTypeChanged(I)V

    .line 821
    return-void
.end method

.method private isAnyCallsInProgress()Z
    .locals 4

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "isCallInProgress":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 620
    goto :goto_1

    .line 617
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isAnyPhoneInEcmState()Z
    .locals 3

    .line 627
    const/4 v0, 0x0

    .line 628
    .local v0, "isInEcmState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 629
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    const/4 v0, 0x1

    .line 631
    goto :goto_1

    .line 628
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isCardAbsent(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 649
    const/4 v0, -0x1

    .line 651
    .local v0, "provisionStatus":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 653
    .local v1, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provisionStatus["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 657
    :cond_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isFlexMappingAllowedOnInactiveSub()Z
    .locals 2

    .line 203
    const-string v0, "persist.radio.flex_map_inactive"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNwModeSupportedOnStack(II)Z
    .locals 5
    .param p1, "nwMode"    # I
    .param p2, "stackId"    # I

    .line 441
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v0, v0, [I

    .line 442
    .local v0, "numRafSupported":[I
    const/4 v1, 0x0

    .line 443
    .local v1, "maxNumRafSupported":I
    const/4 v2, 0x0

    .line 446
    .local v2, "isSupported":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v3, v4, :cond_1

    .line 447
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    aget v4, v4, v3

    invoke-direct {p0, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNumOfRafSupportedForNwMode(II)I

    move-result v4

    aput v4, v0, v3

    .line 448
    aget v4, v0, v3

    if-ge v1, v4, :cond_0

    aget v1, v0, v3

    .line 446
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    .end local v3    # "i":I
    :cond_1
    aget v3, v0, p2

    if-ne v3, v1, :cond_2

    const/4 v2, 0x1

    .line 454
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nwMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", on stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    if-eqz v2, :cond_3

    const-string v4, "Supported"

    goto :goto_1

    :cond_3
    const-string v4, "Not Supported"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 457
    return v2
.end method

.method private isUiccProvisionInProgress()Z
    .locals 4

    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "retVal":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 641
    .local v1, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    if-eqz v1, :cond_0

    .line 642
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAnyProvisionRequestInProgress()Z

    move-result v0

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccProvisionInProgress: retVal =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 645
    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 824
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 832
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 828
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 837
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 101
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v1, :cond_0

    .line 103
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    goto :goto_0

    .line 105
    :cond_0
    const-string v1, "QtiRadioCapabilityController.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method private notifyNetworkTypeChanged(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 784
    :try_start_0
    const-class v0, Lcom/android/internal/telephony/Phone;

    const-string v1, "mPreferredNetworkTypeRegistrants"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 785
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 786
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RegistrantList;

    .line 787
    .local v1, "registrants":Lcom/android/internal/telephony/RegistrantList;
    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "registrants":Lcom/android/internal/telephony/RegistrantList;
    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "notifyNetworkTypeChanged failed"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 791
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private notifyRadioCapsUpdated(Z)V
    .locals 3
    .param p1, "isCrossMapDone"    # Z

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRadioCapsUpdated: radio caps updated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 597
    if-eqz p1, :cond_0

    .line 598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 605
    return-void
.end method

.method private processRadioNotAvailable(Landroid/os/AsyncResult;I)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRadioNotAvailable on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 282
    return-void
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .line 608
    if-eqz p1, :cond_0

    .line 609
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 611
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private sendSubscriptionSettings(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 579
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    .line 580
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 581
    .local v1, "type":I
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->internalSetNetworkMode(IILandroid/os/Message;)V

    .line 583
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 584
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v4, 0x0

    aget v4, v2, v4

    .line 585
    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 588
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v3

    .line 589
    .local v3, "dataEnabledSettings":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    nop

    .line 590
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v4

    .line 589
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setUserDataEnabled(Z)V

    .line 592
    .end local v3    # "dataEnabledSettings":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    :cond_0
    return-void
.end method

.method private setNWModeInProgressFlag(Z)V
    .locals 2
    .param p1, "newStatus"    # Z

    .line 661
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_0
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 663
    monitor-exit v0

    .line 664
    return-void

    .line 663
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private syncCurrentStackInfo()V
    .locals 4

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 288
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    aput v3, v1, v2

    .line 291
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v2, v0

    if-ltz v3, :cond_0

    aget v2, v2, v0

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    aput v2, v1, v0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCurrentStackInfo, current stackId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " raf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 3

    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v2

    aput v2, v1, v0

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateNewNwModeToDB()V
    .locals 7

    .line 495
    const/4 v0, -0x1

    .line 496
    .local v0, "nwModeFromDB":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v2, :cond_2

    .line 497
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v0

    .line 501
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v1

    if-eq v2, v0, :cond_1

    .line 502
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 504
    .local v2, "subId":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNewNwModeToDB: subId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " new Nw mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " old n/w mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 506
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v4, 0x0

    aget v5, v2, v4

    invoke-virtual {v3, v5}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v3

    const-string v5, "preferred_network_mode"

    if-eqz v3, :cond_0

    .line 507
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v2, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v6, v6, v1

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 511
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v4, v4, v1

    invoke-static {v3, v5, v1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 496
    .end local v2    # "subId":[I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private updatePreferredStackIds(Z)V
    .locals 8
    .param p1, "isNwModeRequest"    # Z

    .line 387
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferredStackIds: Modem Caps not Available, request ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 389
    return-void

    .line 392
    :cond_0
    if-nez p1, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->syncCurrentStackInfo()V

    .line 398
    const/4 v0, 0x0

    .local v0, "curPhoneId":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_8

    .line 400
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v1

    const-string v2, "] on phoneId["

    const-string v3, "]"

    if-eqz v1, :cond_2

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePreferredStackIds: current stack["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]supports NwMode["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 404
    goto/16 :goto_3

    .line 406
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePreferredStackIds:  current stack["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "],  NwMode["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 412
    const/4 v1, 0x0

    .local v1, "otherPhoneId":I
    :goto_1
    sget v5, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v5, :cond_7

    .line 414
    if-ne v1, v0, :cond_3

    goto/16 :goto_2

    .line 415
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePreferredStackIds:  other stack["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 419
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v6, v6, v1

    invoke-direct {p0, v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 425
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v6, v6, v0

    .line 426
    invoke-direct {p0, v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 428
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePreferredStackIds: Cross Binding is possible between phoneId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] and phoneId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 432
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v7, v6, v1

    aput v7, v5, v0

    .line 433
    aget v6, v6, v0

    aput v6, v5, v1

    .line 412
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 398
    .end local v1    # "otherPhoneId":I
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 438
    .end local v0    # "curPhoneId":I
    :cond_8
    return-void
.end method

.method private declared-synchronized updateStackBindingIfRequired(Z)Z
    .locals 10
    .param p1, "isNwModeRequest"    # Z

    monitor-enter p0

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "isUpdateStackBindingRequired":Z
    const/4 v1, 0x0

    .line 307
    .local v1, "response":Z
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isAnyCallsInProgress()Z

    move-result v2

    .line 308
    .local v2, "callInProgress":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isAnyPhoneInEcmState()Z

    move-result v3

    .line 309
    .local v3, "isInEcmState":Z
    const-string v4, "persist.vendor.radio.flexmap_type"

    const-string v5, "dds"

    .line 310
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "flexMapSupportType":Ljava/lang/String;
    const-string v5, "updateStackBindingIfRequired"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 313
    sget v5, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c

    const-string v5, "nw_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_6

    .line 319
    :cond_0
    if-nez v2, :cond_b

    if-nez v3, :cond_b

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 324
    :cond_1
    if-nez p1, :cond_4

    .line 325
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v5, v6, :cond_4

    .line 326
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v6, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v6

    .line 330
    .local v6, "subId":[I
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v6, :cond_2

    array-length v7, v6

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v8, 0x0

    aget v8, v6, v8

    .line 331
    invoke-virtual {v7, v8}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 332
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: subId not generated yet "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return v1

    .line 325
    .end local v6    # "subId":[I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 338
    .end local v5    # "i":I
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isBothPhonesMappedToSameStack()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->is7Plus7DeviceFlexMapped()Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_4

    .line 342
    :cond_5
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updatePreferredStackIds(Z)V

    .line 343
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v5, v6, :cond_7

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pref stack["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " current stack["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 346
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v6, v6, v5

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v7, v7, v5

    if-eq v6, v7, :cond_6

    .line 348
    const/4 v0, 0x1

    .line 349
    goto :goto_2

    .line 343
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 353
    .end local v5    # "i":I
    :cond_7
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateStackBindingIfRequired, required =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 354
    if-eqz v0, :cond_9

    .line 355
    sget v5, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v5, v5, [Landroid/telephony/RadioAccessFamily;

    .line 356
    .local v5, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    sget v7, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v6, v7, :cond_8

    .line 357
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v9, v9, v6

    aget v8, v8, v9

    invoke-direct {v7, v6, v8}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v5, v6

    .line 356
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 359
    .end local v6    # "i":I
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v6

    .line 361
    .end local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_9
    monitor-exit p0

    return v1

    .line 339
    :cond_a
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->initNormalMappingRequest()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v5

    .line 320
    :cond_b
    :goto_5
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Call state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", ecm state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    monitor-exit p0

    return v1

    .line 314
    :cond_c
    :goto_6
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No need to update Stack Bindingm prop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ph count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    monitor-exit p0

    return v1

    .line 304
    .end local v0    # "isUpdateStackBindingRequired":Z
    .end local v1    # "response":Z
    .end local v2    # "callInProgress":Z
    .end local v3    # "isInEcmState":Z
    .end local v4    # "flexMapSupportType":Ljava/lang/String;
    .end local p1    # "isNwModeRequest":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    const-string v0, " EVENT_UPDATE_BINDING_DONE "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 170
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->handleUpdateBindingDone(I)V

    .line 171
    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->handleRadioCapsAvailable()V

    .line 166
    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 176
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 178
    .local v1, "phoneId":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_NOT_AVAILABLE, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->processRadioNotAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 181
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :cond_3
    const-string v1, "Invalid user obj"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    const-string v0, "Invalid msg obj"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 186
    nop

    .line 191
    :goto_0
    return-void
.end method

.method initNormalMappingRequest()Z
    .locals 13

    .line 737
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v0, v0, [Lcom/android/internal/telephony/RadioCapability;

    .line 738
    .local v0, "oldRadioCapability":[Lcom/android/internal/telephony/RadioCapability;
    const/16 v1, 0x16

    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 740
    .local v1, "maxRaf":I
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v3

    .line 742
    .local v3, "minRaf":I
    const-string v4, " initNormalMappingRequest  "

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 743
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 749
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget v5, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v4, v5, :cond_2

    .line 750
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v5

    aput-object v5, v0, v4

    .line 751
    new-instance v12, Lcom/android/internal/telephony/RadioCapability;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v4, :cond_0

    move v9, v3

    goto :goto_1

    :cond_0
    move v9, v1

    .line 752
    :goto_1
    if-nez v4, :cond_1

    const-string v5, "1"

    goto :goto_2

    :cond_1
    const-string v5, "0"

    :goto_2
    move-object v10, v5

    const/4 v11, 0x1

    move-object v5, v12

    move v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 753
    .local v5, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v4

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 749
    .end local v5    # "rc":Lcom/android/internal/telephony/RadioCapability;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 756
    .end local v4    # "i":I
    :cond_2
    new-array v4, v5, [Landroid/telephony/RadioAccessFamily;

    .line 757
    .local v4, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v5, v6, :cond_4

    .line 758
    new-instance v6, Landroid/telephony/RadioAccessFamily;

    if-nez v5, :cond_3

    move v7, v1

    goto :goto_4

    :cond_3
    move v7, v3

    :goto_4
    invoke-direct {v6, v5, v7}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v6, v4, v5

    .line 757
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 763
    .end local v5    # "i":I
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 765
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    sget v5, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v5, :cond_5

    .line 766
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v2

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 768
    .end local v2    # "i":I
    :cond_5
    const-string v2, " initNormalMappingRequest:  Fail, request in progress "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 769
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 770
    return v2

    .line 772
    :cond_6
    return v2
.end method

.method is7Plus7DeviceFlexMapped()Z
    .locals 5

    .line 701
    const/4 v0, 0x0

    .line 703
    .local v0, "retVal":Z
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    .line 705
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    .line 706
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is flex mapped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " raf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    .line 708
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 709
    const/4 v0, 0x1

    .line 712
    :cond_0
    return v0
.end method

.method isBothPhonesMappedToSameStack()Z
    .locals 5

    .line 716
    const/4 v0, 0x0

    .line 718
    .local v0, "retVal":Z
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    .line 721
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: both Phones mapped same stackId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " raf = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v4, v3

    .line 723
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 722
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 724
    const/4 v0, 0x1

    .line 725
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    .line 728
    :cond_0
    return v0
.end method

.method public isFlexMappingRequired(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 776
    nop

    .line 777
    const-string v0, "persist.vendor.radio.flexmap_type"

    const-string v1, "dds"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "flexMapSupportType":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 779
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSetNWModeInProgress()Z
    .locals 3

    .line 667
    const/4 v0, 0x0

    .line 669
    .local v0, "retVal":Z
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 670
    :try_start_0
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    move v0, v2

    .line 671
    monitor-exit v1

    .line 672
    return v0

    .line 671
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .line 676
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " radioCapabilityUpdated phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] rc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 680
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 684
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radioCapabilityUpdated: Invalid phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " or SetNWModeInProgress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 686
    :cond_1
    :goto_0
    return-void
.end method

.method public setDdsIfRequired(Z)V
    .locals 4
    .param p1, "forceSetDds"    # Z

    .line 689
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 690
    .local v0, "ddsSubId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 691
    .local v1, "ddsPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDdsIfRequired: ddsSub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ddsPhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " needSetDds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 693
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    if-eqz v2, :cond_1

    .line 695
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onRadioCapChanged(I)V

    .line 696
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 698
    :cond_1
    return-void
.end method

.method public declared-synchronized setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "response"    # Landroid/os/Message;

    monitor-enter p0

    .line 523
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isUiccProvisionInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v0

    .line 529
    .local v0, "subId":[I
    const/4 v1, 0x0

    .line 531
    .local v1, "isSubActive":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 532
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v3

    move v1, v3

    .line 535
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferredNetworkType: nwMode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 538
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 539
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 542
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aput p2, v4, p1

    .line 550
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isFlexMappingAllowedOnInactiveSub()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_3

    .line 551
    :cond_2
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: store msg, nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 555
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferredNetworkType: sending nwMode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->internalSetNetworkMode(IILandroid/os/Message;)V

    .line 557
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :goto_0
    monitor-exit p0

    return-void

    .line 524
    .end local v0    # "subId":[I
    .end local v1    # "isSubActive":Z
    :cond_4
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetworkType: In Progress, nwmode["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 525
    const/4 v0, 0x2

    invoke-direct {p0, p3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    .line 522
    .end local p1    # "phoneId":I
    .end local p2    # "networkType":I
    .end local p3    # "response":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
