.class public Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.super Ljava/lang/Object;
.source "QtiRilInterface.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;,
        Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;
    }
.end annotation


# static fields
.field private static final BYTE_SIZE:I = 0x1

.field private static final INT_SIZE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "QtiRilInterface"

.field private static final NULL_TERMINATOR:C = '\u0000'

.field private static final NULL_TERMINATOR_LENGTH:I = 0x1

.field public static final SET_HM00117_1X_TO_LTE_1XPS_ACTIVE_DURATION:I = 0x2

.field public static final SET_HM00117_1X_TO_LTE_1XPS_DORMANCY:I = 0x3

.field public static final SET_HM00117_1X_TO_LTE_HANDUP_ENABLED:I = 0x1

.field public static final SET_HM00117_1X_TO_LTE_MAX_SCAN_TIME:I = 0x4

.field public static final SET_HM00117_1X_TO_LTE_SETTINGSFILE:I = 0x5

.field public static final SET_HM00117_LTE_CUSTOM_SCAN_DISABLE:I = 0x6

.field public static final SET_HM00117_LTE_UED2LREDIR_LTE_HDR_SCAN:I = 0x7

.field private static final SHORT_SIZE:I = 0x2

.field private static mIsServiceReady:Z

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# instance fields
.field private final ACTION_ADN_INIT_DONE:Ljava/lang/String;

.field private final ACTION_ADN_RECORDS_IND:Ljava/lang/String;

.field private mAdnInitDoneRegistrantList:Landroid/os/RegistrantList;

.field private mAdnRecordsInfoRegistrantList:Landroid/os/RegistrantList;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mServiceReadyRegistrantList:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "qualcomm.intent.action.ACTION_ADN_INIT_DONE"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->ACTION_ADN_INIT_DONE:Ljava/lang/String;

    .line 74
    const-string v1, "qualcomm.intent.action.ACTION_ADN_RECORDS_IND"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->ACTION_ADN_RECORDS_IND:Ljava/lang/String;

    .line 90
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 619
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    const-string v2, " in constructor "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 122
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    .line 123
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnInitDoneRegistrantList:Landroid/os/RegistrantList;

    .line 124
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnRecordsInfoRegistrantList:Landroid/os/RegistrantList;

    .line 126
    :try_start_0
    new-instance v2, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v2, p1, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "se":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException during QcRilHook init: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 129
    const/4 v3, 0x0

    sput-boolean v3, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    .line 132
    .end local v2    # "se":Ljava/lang/SecurityException;
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 55
    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    return p0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 55
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 55
    sput-object p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    return-object p0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[BI)[I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->parseInts([BI)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 55
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnInitDoneRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[BI)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->responseAdnRecords([BI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 55
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnRecordsInfoRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    goto :goto_0

    .line 113
    :cond_0
    const-string v1, "QtiRilInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 109
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 1034
    const-string v0, "QtiRilInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 1042
    const-string v0, "QtiRilInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 1038
    const-string v0, "QtiRilInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return-void
.end method

.method private parseInts([BI)[I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "numInts"    # I

    .line 305
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 306
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numInts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 309
    new-array v1, p2, [I

    .line 310
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 311
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v1, v2

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response[i]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private responseAdnRecords([B)Ljava/lang/Object;
    .locals 14
    .param p1, "data"    # [B

    .line 526
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 527
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 529
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 531
    .local v1, "numRecords":I
    new-array v2, v1, [Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    .line 534
    .local v2, "AdnRecordsInfoGroup":[Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_6

    .line 535
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    invoke-direct {v4}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;-><init>()V

    aput-object v4, v2, v3

    .line 537
    aget-object v4, v2, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput v5, v4, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mRecordIndex:I

    .line 539
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 540
    .local v4, "nameLength":I
    const-string v5, "UTF-8"

    if-lez v4, :cond_0

    .line 541
    new-array v6, v4, [B

    .line 542
    .local v6, "alphaTag":[B
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 544
    :try_start_0
    aget-object v7, v2, v3

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v7, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    goto :goto_1

    .line 545
    :catch_0
    move-exception v5

    .line 546
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v7, "Unsupport UTF-8 to parse name"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 547
    goto/16 :goto_9

    .line 551
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "alphaTag":[B
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 552
    .local v6, "numberLength":I
    if-lez v6, :cond_1

    .line 553
    new-array v7, v6, [B

    .line 554
    .local v7, "number":[B
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 556
    :try_start_1
    aget-object v8, v2, v3

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 557
    invoke-static {v9}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->ConvertToPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 561
    goto :goto_2

    .line 558
    :catch_1
    move-exception v5

    .line 559
    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    const-string v8, "Unsupport UTF-8 to parse number"

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 560
    goto/16 :goto_9

    .line 564
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "number":[B
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 565
    .local v7, "numEmails":I
    if-lez v7, :cond_3

    .line 566
    aget-object v8, v2, v3

    iput v7, v8, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmailCount:I

    .line 567
    aget-object v8, v2, v3

    new-array v9, v7, [Ljava/lang/String;

    iput-object v9, v8, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    .line 568
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v8, v7, :cond_3

    .line 569
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 570
    .local v9, "emailLength":I
    if-lez v9, :cond_2

    .line 571
    new-array v10, v9, [B

    .line 572
    .local v10, "email":[B
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 574
    :try_start_2
    aget-object v11, v2, v3

    iget-object v11, v11, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v12, v11, v8
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 578
    goto :goto_4

    .line 575
    :catch_2
    move-exception v11

    .line 576
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    const-string v12, "Unsupport UTF-8 to parse email"

    invoke-direct {p0, v12}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 577
    goto :goto_5

    .line 568
    .end local v9    # "emailLength":I
    .end local v10    # "email":[B
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 583
    .end local v8    # "j":I
    :cond_3
    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 584
    .local v8, "numAnrs":I
    if-lez v8, :cond_5

    .line 585
    aget-object v9, v2, v3

    iput v8, v9, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumCount:I

    .line 586
    aget-object v9, v2, v3

    new-array v10, v8, [Ljava/lang/String;

    iput-object v10, v9, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    .line 587
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_6
    if-ge v9, v8, :cond_5

    .line 588
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 589
    .local v10, "anrLength":I
    if-lez v10, :cond_4

    .line 590
    new-array v11, v10, [B

    .line 591
    .local v11, "anr":[B
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 593
    :try_start_3
    aget-object v12, v2, v3

    iget-object v12, v12, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v11, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 594
    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->ConvertToPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 598
    goto :goto_7

    .line 595
    :catch_3
    move-exception v5

    .line 596
    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    const-string v12, "Unsupport UTF-8 to parse anr"

    invoke-direct {p0, v12}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 597
    goto :goto_8

    .line 587
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "anrLength":I
    .end local v11    # "anr":[B
    :cond_4
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 534
    .end local v4    # "nameLength":I
    .end local v6    # "numberLength":I
    .end local v7    # "numEmails":I
    .end local v8    # "numAnrs":I
    .end local v9    # "k":I
    :cond_5
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 603
    .end local v3    # "i":I
    :cond_6
    :goto_9
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 605
    return-object v2
.end method

.method private responseAdnRecords([BI)Ljava/lang/Object;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "phoneId"    # I

    .line 611
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 612
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->responseAdnRecords([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    const-string v2, "adn_records"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 615
    return-object v0
.end method


# virtual methods
.method public abortIncrementalScan(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortIncrementalScan, slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilAbortNetworkScan(I)Z

    move-result v0

    return v0
.end method

.method public akaEndEapSession(II)Z
    .locals 3
    .param p1, "eap_method"    # I
    .param p2, "eap_sim_aka_algo"    # I

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaEndEapSession()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 672
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public akaGetBindSubscription()Ljava/lang/String;
    .locals 3

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaGetBindSubscription()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 698
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public akaGetEapSessionKey()Ljava/lang/String;
    .locals 3

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaGetEapSessionKey()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 690
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public akaSendEapPackage(I[B)[B
    .locals 3
    .param p1, "len"    # I
    .param p2, "pkg_data"    # [B

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaSendEapPackage(I[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 681
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public akaSetBindSubscription(I)Ljava/lang/String;
    .locals 3
    .param p1, "subs"    # I

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaSetBindSubscription(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 706
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public akaStartEapSession(IIILjava/lang/String;)Z
    .locals 3
    .param p1, "eap_method"    # I
    .param p2, "eap_sim_aka_algo"    # I
    .param p3, "user_id_len"    # I
    .param p4, "user_id"    # Ljava/lang/String;

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaStartEapSession(IIILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 663
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public getAdnRecord(Landroid/os/Message;I)V
    .locals 6
    .param p1, "callbackMsg"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .line 353
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 354
    .local v0, "requestData":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 355
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/16 v2, 0xa

    .line 357
    .local v2, "rspLength":I
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 358
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;

    const/16 v4, 0xa

    invoke-direct {v3, p0, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Landroid/os/Message;I)V

    .line 360
    .local v3, "oemHookCb":Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v5, 0x800dd

    invoke-virtual {v4, v5, v0, v3, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 366
    const-string v4, "getAdnRecord()"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public getCABandCombo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "numeric"    # Ljava/lang/String;

    .line 967
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v0, :cond_0

    goto :goto_0

    .line 973
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetCABandCombo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCABandCombo exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 978
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1

    .line 968
    :cond_1
    :goto_0
    const-string v0, "sprintRilIoControl fail due to QcRilHook not ready"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 969
    return-object v1
.end method

.method public getDssSetting()Z
    .locals 7

    .line 1022
    const/4 v0, 0x0

    .line 1023
    .local v0, "isDssEnabled":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_UST_CAPABILITY_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    invoke-virtual {v1, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 1025
    .local v1, "queryAr":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1026
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1027
    .local v2, "state":[B
    aget-byte v4, v2, v6

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    move v0, v3

    .line 1029
    .end local v2    # "state":[B
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDssSetting, isDssEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QtiRilInterface"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return v0
.end method

.method public getHiddenMenuDataHM00117()[I
    .locals 4

    .line 902
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v0, :cond_0

    goto :goto_2

    .line 907
    :cond_0
    const/4 v1, 0x0

    .line 909
    .local v1, "response":[I
    :try_start_0
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetHiddenMenuDataLteHM00117()[I

    move-result-object v0

    move-object v1, v0

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rilIoControl response="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    goto :goto_1

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",rilIoControl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 915
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-object v1

    .line 903
    .end local v1    # "response":[I
    :cond_2
    :goto_2
    const-string v0, "sprintRilIoControl fail due to QcRilHook not ready"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 904
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHiddenMenuValue(II)[Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "request"    # I

    .line 769
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sprintRilIoControl phoneId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not valid."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 771
    return-object v1

    .line 774
    :cond_0
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v0, :cond_1

    goto :goto_2

    .line 779
    :cond_1
    const/4 v1, 0x0

    .line 781
    .local v1, "response":[Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetHiddenMenuValue(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rilIoControl response="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",phone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    goto :goto_1

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",rilIoControl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 788
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-object v1

    .line 775
    .end local v1    # "response":[Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v0, "sprintRilIoControl fail due to QcRilHook not ready"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 776
    return-object v1
.end method

.method public getLpluslSupportStatus()Z
    .locals 5

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "status":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v2, 0x8005e

    invoke-virtual {v1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 263
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 264
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 265
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v0, v4

    .line 268
    .end local v2    # "response":[B
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLpluslSupportStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 269
    return v0
.end method

.method public getMaxDataAllowed()I
    .locals 4

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "maxData":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v2, 0x8005d

    invoke-virtual {v1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 250
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 252
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 255
    .end local v2    # "response":[B
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxDataAllowed maxData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 256
    return v0
.end method

.method public getSimLockStatus()I
    .locals 6

    .line 841
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v0, :cond_0

    goto :goto_0

    .line 847
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemGetQcomSimLockStatus()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .local v0, "simLockStatus":Z
    if-eqz v0, :cond_1

    .line 849
    return v2

    .line 851
    :cond_1
    return v3

    .line 853
    .end local v0    # "simLockStatus":Z
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemGetQcomSimLockStatus()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 856
    .local v1, "simLockStatus":Z
    if-eqz v1, :cond_2

    .line 857
    return v2

    .line 859
    :cond_2
    return v3

    .line 861
    .end local v1    # "simLockStatus":Z
    :catch_1
    move-exception v4

    .line 863
    .local v4, "e1":Ljava/lang/Exception;
    :try_start_2
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemGetQcomSimLockStatus()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 864
    .restart local v1    # "simLockStatus":Z
    if-eqz v1, :cond_3

    .line 865
    return v2

    .line 867
    :cond_3
    return v3

    .line 869
    .end local v1    # "simLockStatus":Z
    :catch_2
    move-exception v2

    .line 870
    .local v2, "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 871
    const-string v3, "get oemGetQcomSimLockStatus error"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 872
    return v1

    .line 842
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/lang/Exception;
    :cond_4
    :goto_0
    const-string v0, "getSimLockStatus fail due to QcRilHook not ready"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 843
    return v1
.end method

.method public getUiccIccId(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "iccId":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 222
    .local v1, "requestData":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 224
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 225
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v4, 0x8005c

    invoke-virtual {v3, v4, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 227
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 228
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object v0, v4

    .line 232
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_1

    .line 233
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUiccIccId iccId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 243
    return-object v0
.end method

.method public getUiccProvisionPreference(I)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .locals 6
    .param p1, "phoneId"    # I

    .line 139
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    .line 140
    .local v0, "provStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 142
    .local v1, "requestData":[B
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v3, 0x8005a

    invoke-virtual {v2, v3, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 144
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 146
    .local v3, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 151
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 154
    .end local v3    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get pref, phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 155
    return-object v0
.end method

.method public isServiceReady()Z
    .locals 1

    .line 463
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    return v0
.end method

.method public pciEarfcnLockOrClear(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "parm1"    # Ljava/lang/String;
    .param p4, "parm2"    # Ljava/lang/String;

    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "ret":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pciEarfcnLockOrClear phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 747
    return v0

    .line 750
    :cond_0
    sget-boolean v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v1, :cond_1

    goto :goto_2

    .line 755
    :cond_1
    const/4 v2, 0x0

    .line 757
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p3, p4, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilRecNvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pciEarfcnLockOrClear response="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    move-object v3, v2

    goto :goto_0

    :cond_2
    const-string v3, "null"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",phone="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    const/4 v0, 0x1

    .line 763
    goto :goto_1

    .line 761
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",rtnSctnReset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 764
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return v0

    .line 751
    .end local v2    # "response":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v1, "pciEarfcnLockOrClear fail due to QcRilHook not ready"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 752
    return v0
.end method

.method public performIncrementalScan(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performIncrementalScan, slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilPerformIncrManualScan(I)Z

    move-result v0

    return v0
.end method

.method public qcRilSendDDSInfo(III)V
    .locals 1
    .param p1, "ddsPhoneId"    # I
    .param p2, "reason"    # I
    .param p3, "rilId"    # I

    .line 496
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSendDDSInfo(III)Z

    .line 497
    return-void
.end method

.method public registerForAdnInitDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 484
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 486
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnInitDoneRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 487
    return-void
.end method

.method public registerForAdnRecordsInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 490
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 492
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnRecordsInfoRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 493
    return-void
.end method

.method public registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 475
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 477
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 478
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    new-instance v1, Landroid/os/AsyncResult;

    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 481
    :cond_0
    return-void
.end method

.method public registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "event"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 467
    invoke-static {p1, p2, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->register(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 468
    return-void
.end method

.method public rtnScrtnReset(IIII)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "offset"    # I
    .param p4, "data"    # I

    .line 717
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtnSctnReset phoneId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not valid."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 719
    return-object v1

    .line 722
    :cond_0
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v0, :cond_1

    goto :goto_2

    .line 727
    :cond_1
    const/4 v1, 0x0

    .line 729
    .local v1, "response":Ljava/lang/String;
    nop

    .line 730
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 731
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 729
    invoke-virtual {v0, v2, v3, v4, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilRecNvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtnSctnReset response="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",phone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    goto :goto_1

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",rtnSctnReset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 739
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-object v1

    .line 723
    .end local v1    # "response":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v0, "rtnSctnReset fail due to QcRilHook not ready"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 724
    return-object v1
.end method

.method public sendPhoneStatus(II)V
    .locals 5
    .param p1, "isReady"    # I
    .param p2, "phoneId"    # I

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "iccId":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 275
    .local v1, "requestData":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 277
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    int-to-byte v3, p1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 278
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v4, 0x8001a

    invoke-virtual {v3, v4, v1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 280
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    return-void
.end method

.method public setCABandCombo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "CACombos"    # Ljava/lang/String;

    .line 982
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v0, :cond_0

    goto :goto_0

    .line 988
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetCABandCombo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCABandCombo exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 993
    .end local v0    # "e":Ljava/lang/Exception;
    return v1

    .line 983
    :cond_1
    :goto_0
    const-string v0, "sprintRilIoControl fail due to QcRilHook not ready"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 984
    return v1
.end method

.method public setDssSetting(Z)V
    .locals 12
    .param p1, "enabled"    # Z

    .line 999
    move v0, p1

    .line 1001
    .local v0, "dssSetting":I
    const/4 v1, 0x6

    .line 1002
    .local v1, "setNetworkConfigReq":I
    const/4 v2, -0x1

    .line 1003
    .local v2, "setSABandN2Value":I
    const/4 v3, -0x1

    .line 1004
    .local v3, "setSABandN41Value":I
    const/4 v4, -0x1

    .line 1005
    .local v4, "setSABandN66Value":I
    const/4 v5, -0x1

    .line 1006
    .local v5, "setSABandN71Value":I
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    sget-object v7, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_UST_CAPABILITY_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v8, 0x6

    new-array v9, v8, [B

    const/4 v10, 0x0

    int-to-byte v11, v1

    aput-byte v11, v9, v10

    const/4 v10, 0x1

    int-to-byte v11, v0

    aput-byte v11, v9, v10

    const/4 v10, 0x2

    int-to-byte v11, v2

    aput-byte v11, v9, v10

    const/4 v10, 0x3

    int-to-byte v11, v3

    aput-byte v11, v9, v10

    const/4 v10, 0x4

    int-to-byte v11, v4

    aput-byte v11, v9, v10

    const/4 v10, 0x5

    int-to-byte v11, v5

    aput-byte v11, v9, v10

    invoke-virtual {v6, v7, v9, v8}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v6

    .line 1014
    .local v6, "setAr":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v6, :cond_0

    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    .line 1015
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQcRilHook.oemAPSendRequest2Modem, set DSS state request to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1017
    :cond_0
    const-string v7, "mQcRilHook.oemAPSendRequest2Modem, set DSS state error, return false."

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 1019
    :goto_0
    return-void
.end method

.method public setHiddenMenuDataHM00117(II)Z
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "value"    # I

    .line 920
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v0, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_1

    .line 944
    nop

    .line 945
    return v1

    .line 937
    :cond_1
    :try_start_0
    invoke-virtual {v0, p2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117LteHdrScanInterval(II)Z

    move-result v0

    return v0

    .line 935
    :cond_2
    invoke-virtual {v0, p2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117CustomScanEnabled(II)Z

    move-result v0

    return v0

    .line 933
    :cond_3
    invoke-virtual {v0, p2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117MaxScanTime(II)Z

    move-result v0

    return v0

    .line 931
    :cond_4
    invoke-virtual {v0, p2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117PsDormancy(II)Z

    move-result v0

    return v0

    .line 929
    :cond_5
    invoke-virtual {v0, p2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117PsActiveDuration(II)Z

    move-result v0

    return v0

    .line 927
    :cond_6
    invoke-virtual {v0, p2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117HandupEnabled(II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHiddenMenuDataHM00117 exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 943
    return v1

    .line 921
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_0
    const-string v0, "sprintRilIoControl fail due to QcRilHook not ready"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 922
    return v1
.end method

.method public setHiddenMenuValue(IILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "request"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, "ret":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sprintRilIoControl phoneId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not valid."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 796
    return v2

    .line 799
    :cond_0
    sget-boolean v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v1, :cond_1

    goto :goto_0

    .line 805
    :cond_1
    :try_start_0
    invoke-virtual {v1, p2, p3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuValue(ILjava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 809
    nop

    .line 811
    return v0

    .line 806
    :catch_0
    move-exception v1

    .line 807
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",rilIoControl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 808
    return v2

    .line 800
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    const-string v1, "sprintRilIoControl fail due to QcRilHook not ready"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 801
    return v2
.end method

.method public setLocalCallHold(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 522
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->setLocalCallHold(IZ)Z

    move-result v0

    return v0
.end method

.method public setLteBandPriority([Ljava/lang/String;I)Z
    .locals 5
    .param p1, "bandPriorityList"    # [Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "ret":Z
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLteBandPriority phoneId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not valid."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 819
    return v2

    .line 822
    :cond_0
    sget-boolean v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v1, :cond_1

    goto :goto_0

    .line 828
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetLteBandPriority([Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 832
    nop

    .line 834
    return v0

    .line 829
    :catch_0
    move-exception v1

    .line 830
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",setLteBandPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 831
    return v2

    .line 823
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    const-string v1, "setLteBandPriority fail due to QcRilHook not ready"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 824
    return v2
.end method

.method public setUiccProvisionPreference(II)Z
    .locals 6
    .param p1, "userPref"    # I
    .param p2, "phoneId"    # I

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "retval":Z
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 286
    .local v1, "requestData":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 288
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 289
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 291
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v4, 0x8005b

    invoke-virtual {v3, v4, v1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 293
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 294
    const/4 v0, 0x1

    .line 297
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set provision userPref "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 299
    return v0
.end method

.method public setVoiceRoamingRequest(I)Z
    .locals 4
    .param p1, "value"    # I

    .line 951
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v0, :cond_0

    goto :goto_0

    .line 957
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetVoiceRoamingRequest(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceRoamingRequest exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 962
    .end local v0    # "e":Ljava/lang/Exception;
    return v1

    .line 952
    :cond_1
    :goto_0
    const-string v0, "sprintRilIoControl fail due to QcRilHook not ready"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 953
    return v1
.end method

.method public spRemoteSimLock(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 882
    const/4 v0, 0x0

    .line 884
    .local v0, "ret":Ljava/lang/String;
    sget-boolean v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    if-nez v1, :cond_0

    goto :goto_0

    .line 890
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemSprintUiccUnlockRequest(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 894
    nop

    .line 895
    return-object v0

    .line 891
    :catch_0
    move-exception v1

    .line 892
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spRemoteSimLock requestId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 893
    return-object v2

    .line 885
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    const-string v1, "spRemoteSimLock fail due to QcRilHook not ready"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 886
    return-object v2
.end method

.method public supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V
    .locals 7
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/codeaurora/internal/IDepersoResCallback;
    .param p4, "phoneId"    # I

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supplyDepersonalization: netpin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    .line 196
    .local v1, "payload":[B
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 197
    if-nez p1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    :goto_0
    add-int/2addr v2, v3

    .line 204
    .local v2, "payloadLength":I
    new-array v1, v2, [B

    .line 205
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 207
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 208
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 210
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 211
    :cond_1
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 213
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;

    invoke-direct {v4, p0, p3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Lorg/codeaurora/internal/IDepersoResCallback;Landroid/os/Message;)V

    .line 214
    .local v4, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v6, 0x800d8

    invoke-virtual {v5, v6, v1, v4, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 217
    return-void
.end method

.method public unRegisterForServiceReadyEvent(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 510
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 511
    return-void
.end method

.method public unRegisterForUnsol(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 471
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->unregister(Landroid/os/Handler;)V

    .line 472
    return-void
.end method

.method public unregisterForAdnInitDone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 514
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnInitDoneRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 515
    return-void
.end method

.method public unregisterForAdnRecordsInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 518
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnRecordsInfoRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 519
    return-void
.end method

.method public updateAdnRecord(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;Landroid/os/Message;I)V
    .locals 16
    .param p1, "adnRecordInfo"    # Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    .param p2, "callbackMsg"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 371
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getNumEmails()I

    move-result v2

    .line 372
    .local v2, "numEmails":I
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getNumAdNumbers()I

    move-result v3

    .line 373
    .local v3, "numAdNumbers":I
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 376
    .local v5, "number":Ljava/lang/String;
    nop

    .line 377
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v7

    :goto_0
    add-int/lit8 v0, v0, 0xa

    .line 378
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 379
    move v8, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v8, v7

    :goto_1
    add-int/2addr v0, v8

    .line 380
    .local v0, "dataSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v2, :cond_2

    .line 381
    add-int/lit8 v0, v0, 0x2

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v9, v7

    add-int/2addr v0, v9

    .line 380
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 384
    .end local v8    # "i":I
    :cond_2
    const/4 v8, 0x0

    move v15, v8

    move v8, v0

    move v0, v15

    .local v0, "j":I
    .local v8, "dataSize":I
    :goto_3
    if-ge v0, v3, :cond_3

    .line 385
    add-int/lit8 v8, v8, 0x2

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAdNumbers()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v9, v7

    add-int/2addr v8, v9

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 389
    .end local v0    # "j":I
    :cond_3
    new-array v9, v8, [B

    .line 390
    .local v9, "requestData":[B
    invoke-static {v9}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 391
    .local v10, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v11, 0x1

    .line 393
    .local v11, "rspLength":I
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;

    move-object/from16 v12, p2

    invoke-direct {v0, v1, v12, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Landroid/os/Message;I)V

    move-object v7, v0

    .line 395
    .local v7, "oemHookCb":Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getRecordIndex()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 396
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v13, "UTF-8"

    if-nez v0, :cond_4

    .line 397
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 399
    :try_start_0
    invoke-virtual {v4, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 400
    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    goto :goto_4

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "usee":Ljava/io/UnsupportedEncodingException;
    const-string v6, "Unsupport UTF-8 to parse name"

    invoke-direct {v1, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 404
    return-void

    .line 407
    .end local v0    # "usee":Ljava/io/UnsupportedEncodingException;
    :cond_4
    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 410
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 411
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 413
    nop

    .line 414
    :try_start_1
    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->ConvertToRecordNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 413
    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 415
    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    goto :goto_5

    .line 417
    :catch_1
    move-exception v0

    .line 418
    .restart local v0    # "usee":Ljava/io/UnsupportedEncodingException;
    const-string v6, "Unsupport UTF-8 to parse number"

    invoke-direct {v1, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 419
    return-void

    .line 422
    .end local v0    # "usee":Ljava/io/UnsupportedEncodingException;
    :cond_5
    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 425
    :goto_5
    int-to-short v0, v2

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 426
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_6
    if-ge v14, v2, :cond_6

    .line 427
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v14

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 429
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v14

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 430
    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 435
    nop

    .line 426
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 432
    :catch_2
    move-exception v0

    .line 433
    .restart local v0    # "usee":Ljava/io/UnsupportedEncodingException;
    const-string v6, "Unsupport UTF-8 to parse email"

    invoke-direct {v1, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 434
    return-void

    .line 438
    .end local v0    # "usee":Ljava/io/UnsupportedEncodingException;
    .end local v14    # "i":I
    :cond_6
    int-to-short v0, v3

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 439
    const/4 v0, 0x0

    move v14, v0

    .local v14, "j":I
    :goto_7
    if-ge v14, v3, :cond_7

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAdNumbers()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v14

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 442
    nop

    .line 444
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAdNumbers()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v14

    .line 443
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->ConvertToRecordNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 442
    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 445
    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 450
    nop

    .line 439
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 447
    :catch_3
    move-exception v0

    .line 448
    .restart local v0    # "usee":Ljava/io/UnsupportedEncodingException;
    const-string v6, "Unsupport UTF-8 to parse anr"

    invoke-direct {v1, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 449
    return-void

    .line 453
    .end local v0    # "usee":Ljava/io/UnsupportedEncodingException;
    .end local v14    # "j":I
    :cond_7
    iget-object v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v6, 0x800de

    move/from16 v13, p3

    invoke-virtual {v0, v6, v9, v7, v13}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAdnRecord() with "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 460
    return-void
.end method
