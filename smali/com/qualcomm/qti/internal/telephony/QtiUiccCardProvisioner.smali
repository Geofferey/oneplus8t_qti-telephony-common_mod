.class public Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
.super Landroid/os/Handler;
.source "QtiUiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    }
.end annotation


# static fields
.field public static final ACTION_SIP_ADD_PHONE:Ljava/lang/String; = "com.android.phone.SIP_ADD_PHONE"

.field public static final ACTION_SIP_REMOVE_PHONE:Ljava/lang/String; = "com.android.phone.SIP_REMOVE_PHONE"

.field private static final ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field private static final DBG:Z = true

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final EVENT_MANUAL_PROVISION_DONE:I = 0x7

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x3

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_SIM_REFRESH:I = 0x6

.field private static final EVENT_UNSOL_MANUAL_PROVISION_STATUS_CHANGED:I = 0x2

.field private static final EXTRA_NEW_PROVISION_STATE:Ljava/lang/String; = "newProvisionState"

.field private static final GENERIC_FAILURE:I = -0x1

.field private static final INVALID_INPUT:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "QtiUiccCardProvisioner"

.field private static final PROPERTY_RO_PRJ_VERSION:Ljava/lang/String; = "ro.boot.prj_version"

.field private static final PROPERTY_RO_RF_VERSION:Ljava/lang/String; = "ro.boot.rf_version"

.field private static final REQUEST_IN_PROGRESS:I = -0x3

.field private static final SIMLOCK_OPERATOR:Ljava/lang/String; = "persist.sys.oppo.simlockoperator"

.field private static final SUCCESS:I

.field private static final VDBG:Z

.field private static mNumPhones:I

.field private static mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

.field private static sManualProvLock:Ljava/lang/Object;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private final mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIsIccIdQueryPending:[Z

.field private mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

.field private mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

.field private mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mSimFullIccId:[Ljava/lang/String;

.field private mSimIccId:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 223
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 91
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    .line 267
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 226
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 227
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Invoking constructor, no of phones = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 230
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 231
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v1, v0, [Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 232
    new-array v1, v0, [Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 233
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    .line 234
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    .line 235
    new-array v1, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 236
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    .line 237
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 239
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 240
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    aput-object v2, v1, v0

    .line 241
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v2, v1, v0

    .line 242
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 243
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    aput-object v2, v1, v0

    .line 245
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/4 v2, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "index":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 249
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 252
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v1, "com.android.phone.SIP_ADD_PHONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v1, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 69
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->updateIccAvailability(I)V

    return-void
.end method

.method private broadcastManualProvisionStatusChanged(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "newProvisionState"    # I

    .line 709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    const-string v1, "newProvisionState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 713
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 714
    return-void
.end method

.method private canProcessRequest(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .line 855
    const/4 v0, 0x0

    .line 857
    .local v0, "retVal":Z
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    const/4 v0, 0x1

    goto :goto_0

    .line 860
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request can\'t be processed, slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " numPhones "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 862
    :goto_0
    return v0
.end method

.method private enforceModifyPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 849
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method private getCurrentProvisioningStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 718
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 720
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFullIccIdFromUicc(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "fullIccId":Ljava/lang/String;
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 622
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    .line 623
    .local v2, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_0

    .line 624
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 625
    :cond_0
    const-string v3, "] object is null"

    if-eqz v2, :cond_1

    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " queryUiccProvisionInfo, uiccCard["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " queryUiccProvisionInfo, uiccSlot["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 631
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " queryUiccProvisionInfo, full iccId for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 632
    return-object v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2

    .line 217
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 218
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method private handleUnsolManualProvisionEvent(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 477
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 482
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 484
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 485
    .local v1, "rspId":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 487
    .local v2, "slotId":I
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x80404

    if-ne v1, v3, :cond_1

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol: rspId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 490
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    .line 491
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 492
    .local v4, "dataSubId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v5

    .line 493
    .local v5, "dataSlotId":I
    if-ne v2, v5, :cond_1

    .line 494
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 495
    const-string v6, "Set dds after SSR"

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setDdsIfRequired(Z)V

    .line 499
    .end local v4    # "dataSubId":I
    .end local v5    # "dataSlotId":I
    :cond_1
    return-void

    .line 478
    .end local v0    # "payload":Ljava/nio/ByteBuffer;
    .end local v1    # "rspId":I
    .end local v2    # "slotId":I
    :cond_2
    :goto_0
    const-string v0, "Null data received in handleUnsolManualProvisionEvent"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method private isValidSlotId(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 866
    const/4 v0, 0x0

    .line 868
    .local v0, "retVal":Z
    if-ltz p1, :cond_0

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge p1, v1, :cond_0

    .line 869
    const/4 v0, 0x1

    .line 871
    :cond_0
    return v0
.end method

.method private loadIccId(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 636
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 637
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_2

    .line 638
    const/4 v1, 0x0

    .line 639
    .local v1, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v2

    .line 640
    .local v2, "numApps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 641
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 642
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v6, :cond_0

    .line 643
    move-object v1, v4

    .line 644
    goto :goto_1

    .line 640
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 647
    .end local v3    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 648
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 649
    .local v3, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v3, :cond_2

    .line 650
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, p1

    .line 651
    const/16 v4, 0x2fe2

    const/4 v5, 0x4

    .line 652
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 651
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 656
    .end local v1    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "numApps":I
    .end local v3    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 908
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 916
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 912
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 191
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    goto :goto_0

    .line 194
    :cond_0
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 182
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    goto :goto_0

    .line 185
    :cond_0
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method private queryAllUiccProvisionInfo()V
    .locals 3

    .line 502
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " query  provision info, card state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 506
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    .line 502
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method private queryUiccProvisionInfo(IZ)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "useSimIORequest"    # Z

    .line 520
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v0, v0, p1

    .line 526
    .local v0, "oldStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccProvisionPreference(I)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    move-result-object v1

    .line 527
    .local v1, "subStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 528
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 529
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v2

    .line 530
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aput-object v1, v3, p1

    .line 531
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 536
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getFullIccIdFromUicc(I)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "fullIccId":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, "iccId":Ljava/lang/String;
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .line 539
    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v5

    .line 541
    .local v5, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v7, v6, p1

    if-eqz v7, :cond_2

    aget-object v6, v6, p1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 542
    :cond_2
    if-eqz v4, :cond_8

    .line 543
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v6

    .line 544
    .local v6, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-eqz v5, :cond_7

    .line 545
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v7

    .line 546
    .local v7, "eUiccSupported":Z
    if-eqz v6, :cond_7

    .line 547
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result v8

    .line 548
    .local v8, "numOfApps":I
    if-nez v8, :cond_3

    if-eqz v7, :cond_3

    .line 549
    const-string v9, "Can\'t addsubinforecord as num_apps 0 and slot is Euicc"

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 551
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 552
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v2, v9, p1

    .line 553
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v9

    .line 554
    invoke-virtual {v9, p1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->addSubInfoRecord(ILjava/lang/String;)V

    .line 555
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v9, p1

    goto :goto_1

    .line 557
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " queryUiccProvisionInfo: useSimIORequest=  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 559
    if-eqz p2, :cond_5

    .line 560
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loadIccId(I)V

    goto :goto_1

    .line 562
    :cond_5
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v9, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 566
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OEM add subInfo record, iccId["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 568
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v2, v9, p1

    .line 569
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v9

    .line 570
    invoke-virtual {v9, p1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->addSubInfoRecord(ILjava/lang/String;)V

    .line 571
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v9, p1

    goto :goto_1

    .line 573
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " queryUiccProvisionInfo, ICCID["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 581
    .end local v6    # "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    .end local v7    # "eUiccSupported":Z
    .end local v8    # "numOfApps":I
    :cond_7
    :goto_1
    goto :goto_2

    .line 582
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " queryUiccProvisionInfo, uiccCard["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] object is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 585
    :cond_9
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " queryUiccProvisionInfo, iccId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v7, v7, p1

    .line 589
    invoke-static {v7}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", oldStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 585
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 592
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v6, v6, p1

    invoke-virtual {v0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->equals(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 593
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v6, v6, p1

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 594
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v6

    .line 595
    .local v6, "subIds":[I
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 596
    const-string v8, "telephony_subscription_service"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionManager;

    .line 602
    .local v7, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v6, :cond_a

    array-length v8, v6

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    aget v8, v6, v8

    .line 603
    invoke-virtual {v7, v8}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 604
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateUserPreferences()V

    .line 607
    .end local v6    # "subIds":[I
    .end local v7    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_a
    if-eqz p2, :cond_b

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v6, v6, p1

    if-eqz v6, :cond_c

    .line 608
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " broadcasting ProvisionInfo, phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 609
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v6, v6, p1

    .line 611
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v6

    .line 609
    invoke-direct {p0, p1, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 614
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v7, v7, p1

    aput-object v7, v6, p1

    .line 617
    :cond_c
    return-void

    .line 521
    .end local v0    # "oldStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .end local v1    # "subStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .end local v2    # "fullIccId":Ljava/lang/String;
    .end local v3    # "iccId":Ljava/lang/String;
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v5    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    :cond_d
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method private updateIccAvailability(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 659
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid phone Index!!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 661
    return-void

    .line 663
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 664
    .local v0, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    .line 665
    .local v1, "newSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_6

    .line 666
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccAvailability, card state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 673
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v0, v2, p1

    .line 674
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    .line 675
    .local v2, "currentState":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v5, -0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aget-boolean v3, v3, p1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 683
    invoke-direct {p0, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    goto :goto_0

    .line 684
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_3

    .line 685
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isStateUnknown()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_5

    .line 687
    :cond_4
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v3

    .line 688
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 689
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 690
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 692
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 693
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, p1

    .line 694
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v5, v4, p1

    .line 698
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 699
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    aput-object v5, v4, p1

    .line 701
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 703
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateUserPreferences()V

    goto :goto_0

    .line 701
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 706
    :cond_5
    :goto_0
    return-void

    .line 668
    .end local v2    # "currentState":I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccAvailability, uicc card null, ignore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 669
    return-void
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 6
    .param p1, "slotId"    # I

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " activateUiccCard: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 764
    const/4 v0, -0x1

    return v0

    .line 767
    :cond_0
    const-string v0, "activateUiccCard"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 769
    const/4 v0, 0x0

    .line 771
    .local v0, "activateStatus":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 772
    const/4 v0, -0x2

    goto/16 :goto_1

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->canToggleUiccApplicationsEnablement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 774
    const-string v1, "activateUiccCard is not appropriate to use. For 1.5 HAL use enableUiccApplications"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 776
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 777
    :cond_2
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Uicc card in slot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] already activated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 779
    :cond_3
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 780
    const/4 v1, 0x0

    .line 782
    .local v1, "retVal":Z
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4, v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 784
    if-nez v1, :cond_4

    .line 785
    const/4 v0, -0x1

    goto :goto_0

    .line 787
    :cond_4
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v4

    .line 788
    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    invoke-virtual {v5, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 789
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    const/4 v4, 0x7

    invoke-virtual {p0, v4, p1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sendMessage(Landroid/os/Message;)Z

    .line 795
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " activation result["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 796
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 797
    .end local v1    # "retVal":Z
    goto :goto_1

    .line 789
    .restart local v1    # "retVal":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 798
    .end local v1    # "retVal":Z
    :cond_5
    const/4 v0, -0x3

    .line 801
    :goto_1
    return v0
.end method

.method public deactivateUiccCard(I)I
    .locals 5
    .param p1, "slotId"    # I

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deactivateUiccCard: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 809
    const/4 v0, -0x1

    return v0

    .line 812
    :cond_0
    const-string v0, "deactivateUiccCard"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "deactivateState":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 816
    const/4 v0, -0x2

    goto/16 :goto_1

    .line 817
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->canToggleUiccApplicationsEnablement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 818
    const-string v1, "deactivateUiccCard is not appropriate to use. For 1.5 HAL use enableUiccApplications"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 820
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 821
    :cond_2
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Uicc card in slot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] already in deactive state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 823
    :cond_3
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 824
    const/4 v1, 0x0

    .line 826
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 828
    if-nez v1, :cond_4

    .line 829
    const/4 v0, -0x1

    goto :goto_0

    .line 831
    :cond_4
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v2

    .line 832
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 833
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    const/4 v2, 0x7

    invoke-virtual {p0, v2, p1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sendMessage(Landroid/os/Message;)Z

    .line 839
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " deactivation result["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 840
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 841
    .end local v1    # "retVal":Z
    goto :goto_1

    .line 833
    .restart local v1    # "retVal":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 842
    .end local v1    # "retVal":Z
    :cond_5
    const/4 v0, -0x3

    .line 845
    :goto_1
    return v0
.end method

.method public dispose()V
    .locals 2

    .line 202
    const-string v0, " disposing... "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 205
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 207
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unRegisterForServiceReadyEvent(Landroid/os/Handler;)V

    .line 208
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unRegisterForUnsol(Landroid/os/Handler;)V

    .line 209
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 212
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 6
    .param p1, "slotId"    # I

    .line 724
    const/4 v0, -0x1

    .line 726
    .local v0, "currentStatus":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 727
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->canToggleUiccApplicationsEnablement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 728
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 729
    .local v1, "subIds":[I
    if-eqz v1, :cond_1

    array-length v2, v1

    if-eqz v2, :cond_1

    .line 730
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 731
    const-string v3, "telephony_subscription_service"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 732
    .local v2, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 733
    .local v4, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 734
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move v0, v3

    .line 735
    .end local v2    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v4    # "si":Landroid/telephony/SubscriptionInfo;
    goto :goto_1

    .line 736
    :cond_1
    const/4 v0, -0x2

    .line 738
    .end local v1    # "subIds":[I
    :goto_1
    goto :goto_2

    .line 739
    :cond_2
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v0

    .line 742
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCurrentUiccCardProvisioningStatus, state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 744
    return v0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 748
    const/4 v0, -0x1

    .line 750
    .local v0, "userPref":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v1

    .line 752
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v2

    move v0, v2

    .line 753
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 756
    :cond_0
    :goto_0
    return v0
.end method

.method public getUiccFullIccId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 516
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUiccIccId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 512
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 322
    const/4 v0, -0x1

    .line 324
    .local v0, "phoneId":I
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const-string v3, "] = "

    packed-switch v1, :pswitch_data_0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: hit default case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 464
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MANUAL_PROVISION_STATUS_CHANGED, pref["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 466
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 467
    goto/16 :goto_2

    .line 442
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 444
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_f

    .line 445
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SIM refresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 447
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 448
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 452
    .local v2, "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    iget v3, v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 453
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 454
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v4, v3, v0

    .line 456
    .end local v2    # "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_0
    goto/16 :goto_2

    .line 457
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM refresh Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 326
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 327
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_f

    .line 328
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RADIO_AVAILABLE for phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 332
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 333
    .local v3, "subIds":[I
    if-eqz v3, :cond_2

    array-length v4, v3

    if-eqz v4, :cond_2

    .line 334
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v4

    aget v2, v3, v2

    .line 335
    invoke-virtual {v4, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    .line 337
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_4

    .line 339
    :cond_3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 342
    :cond_4
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 343
    .end local v3    # "subIds":[I
    goto/16 :goto_2

    .line 388
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 389
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    .line 390
    .local v4, "iccId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 391
    .local v5, "fullIccId":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 392
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 393
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 394
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    .line 395
    .local v6, "data":[B
    array-length v7, v6

    invoke-static {v6, v2, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    .end local v6    # "data":[B
    goto :goto_0

    .line 398
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in GET iccId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 401
    :cond_6
    :goto_0
    if-ltz v0, :cond_f

    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v0, v6, :cond_f

    .line 402
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aput-boolean v2, v6, v0

    .line 404
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 408
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM_IO add subInfo record, iccId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 410
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v5, v6, v0

    .line 411
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->addSubInfoRecord(ILjava/lang/String;)V

    .line 412
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v4, v6, v0

    .line 413
    aget-object v6, v6, v0

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 414
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 415
    const-string v7, "telephony_subscription_service"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionManager;

    .line 417
    .local v6, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v7

    .line 419
    .local v7, "subIds":[I
    if-eqz v7, :cond_7

    array-length v8, v7

    if-eqz v8, :cond_7

    aget v2, v7, v2

    .line 420
    invoke-virtual {v6, v2}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 421
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateUserPreferences()V

    .line 425
    .end local v6    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v7    # "subIds":[I
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOldProvisionStatus["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v6, v6, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mProvisionStatus["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    if-eqz v2, :cond_f

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v3, v3, v0

    .line 429
    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->equals(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " broadcasting ProvisionInfo, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 431
    nop

    .line 432
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    .line 431
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 433
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    goto/16 :goto_2

    .line 436
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " EVENT_GET_ICCID_DONE, ICCID is empty, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 355
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "iccId":Ljava/lang/String;
    .end local v5    # "fullIccId":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 356
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_c

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_c

    .line 357
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 358
    .local v2, "isServiceReady":Z
    if-eqz v2, :cond_b

    .line 361
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getSimLockStatus()I

    move-result v3

    .line 362
    .local v3, "simLockStatus":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QtiUiccCardProvisioner - simLockStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 363
    const-string v4, "persist.sys.oppo.simlockoperator"

    if-nez v3, :cond_9

    .line 364
    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_9
    const/4 v5, 0x1

    if-ne v3, v5, :cond_a

    .line 366
    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 368
    :cond_a
    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryAllUiccProvisionInfo()V

    .line 373
    .end local v2    # "isServiceReady":Z
    .end local v3    # "simLockStatus":I
    :cond_b
    goto :goto_2

    .line 374
    :cond_c
    const-string v2, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 376
    goto :goto_2

    .line 379
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 381
    .local v1, "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_d

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_d

    .line 382
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->handleUnsolManualProvisionEvent(Landroid/os/Message;)V

    goto :goto_2

    .line 384
    :cond_d
    const-string v2, "Error: empty result, UNSOL_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 386
    goto :goto_2

    .line 347
    .end local v1    # "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 348
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_e

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_e

    .line 349
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->updateIccAvailability(I)V

    goto :goto_2

    .line 351
    :cond_e
    const-string v2, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 353
    nop

    .line 474
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_f
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAllCardProvisionInfoReceived()Z
    .locals 5

    .line 893
    const/4 v0, 0x1

    .line 894
    .local v0, "received":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v1, v2, :cond_2

    .line 895
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    .line 896
    .local v2, "provPref":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 894
    .end local v2    # "provPref":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 899
    .restart local v2    # "provPref":I
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllCardProvisionInfoReceived, prov pref["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 900
    const/4 v0, 0x0

    .line 904
    .end local v1    # "index":I
    .end local v2    # "provPref":I
    :cond_2
    return v0
.end method

.method public isAnyProvisionRequestInProgress()Z
    .locals 1

    .line 887
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isFlexMapInProgress()Z
    .locals 4

    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, "retVal":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    .line 878
    .local v1, "rcController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v1, :cond_0

    .line 879
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v0

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFlexMapInProgress: = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 883
    :cond_0
    return v0
.end method

.method public registerForManualProvisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 306
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 307
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 309
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 310
    monitor-exit v1

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unregisterForManualProvisionChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 314
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 316
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
