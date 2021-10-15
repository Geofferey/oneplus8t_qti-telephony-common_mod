.class public Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
.super Ljava/lang/Object;
.source "MainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;,
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;,
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;,
        Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;
    }
.end annotation


# static fields
.field private static final EVENT_EDNC_CHANGE:I = 0x3ec

.field private static final EVENT_FIVEG_CHANGE:I = 0x3eb

.field private static final EVENT_NRBR_CHANGE:I = 0x3e9

.field private static final EVENT_NRDC_CHANGE:I = 0x3e8

.field private static final EVENT_ON_5G_CONFIG_INFO:I = 0x6

.field private static final EVENT_ON_5G_ENABLE_STATUS_CHANGE_IND:I = 0x1

.field private static final EVENT_ON_5G_SIGNAL_STRENGTH_CHANGE_IND:I = 0x2

.field private static final EVENT_ON_BEARER_ALLOCATION_CHANGE_IND:I = 0x0

.field private static final EVENT_ON_ENABLE_ENDC:I = 0x8

.field private static final EVENT_ON_ENDC_STATUS:I = 0x9

.field private static final EVENT_ON_NR_DUAL_CONNECTIVITY_CHANGE_IND:I = 0x3

.field private static final EVENT_ON_NR_ICON_TYPE:I = 0x7

.field private static final EVENT_ON_RESTRICT_DCNR_CHANGE:I = 0x4

.field private static final EVENT_ON_UPPER_LAYER_INDICATION_INFO:I = 0x5

.field private static final EVENT_RAT_CHANGE:I = 0x3ee

.field private static final EVENT_RF_BAND_CHANGE:I = 0x3ed

.field private static final EVENT_STATE_INIT:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "MainServiceImpl"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;


# instance fields
.field private FAILED:Z

.field private SUCCESS:Z

.field private isChinaMobile:Ljava/lang/String;

.field private isChinaTelecom:Ljava/lang/String;

.field private m5gStatus:[I

.field private mAllocationBear:I

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/internal/INetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientIndex:I

.field mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

.field private mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

.field private mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mOemHandler:Landroid/os/Handler;

.field private mOemHandlerInit:[Z

.field mSystemUIClient:Lorg/codeaurora/internal/Client;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->FAILED:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    .line 71
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MainServiceImplBgThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAllocationBear:I

    .line 87
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->m5gStatus:[I

    .line 88
    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandlerInit:[Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mSystemUIClient:Lorg/codeaurora/internal/Client;

    .line 92
    const-string v0, "persist.radio.ischinatelecom"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isChinaTelecom:Ljava/lang/String;

    .line 93
    const-string v0, "persist.radio.ischinamobile"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isChinaMobile:Ljava/lang/String;

    .line 249
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 356
    const-string v0, "MainServiceImpl"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sput-object p1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    .line 358
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 359
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setHidlClient(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;)V

    .line 360
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 361
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setLooper(Landroid/os/Looper;)V

    .line 363
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 365
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hidlClient"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;
    .param p3, "workerLooper"    # Landroid/os/Looper;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->FAILED:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    .line 71
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MainServiceImplBgThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAllocationBear:I

    .line 87
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->m5gStatus:[I

    .line 88
    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandlerInit:[Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mSystemUIClient:Lorg/codeaurora/internal/Client;

    .line 92
    const-string v0, "persist.radio.ischinatelecom"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isChinaTelecom:Ljava/lang/String;

    .line 93
    const-string v0, "persist.radio.ischinamobile"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isChinaMobile:Ljava/lang/String;

    .line 249
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 370
    const-string v0, "MainServiceImpl"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    sput-object p1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    .line 372
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 373
    invoke-virtual {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setHidlClient(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;)V

    .line 374
    invoke-virtual {p0, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->setLooper(Landroid/os/Looper;)V

    .line 375
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/BearerAllocationStatus;

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Z

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 51
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/SignalStrength;

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/DcParam;

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/UpperLayerIndInfo;

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/NrConfigType;

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Lorg/codeaurora/internal/NrIconType;

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/codeaurora/internal/Token;
    .param p3, "x3"    # Lorg/codeaurora/internal/Status;
    .param p4, "x4"    # Z

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 51
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->initForOem()V

    return-void
.end method

.method private addCallback(Lorg/codeaurora/internal/INetworkCallback;)Z
    .locals 5
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;

    .line 503
    invoke-interface {p1}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 504
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 505
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 506
    .local v3, "it":Lorg/codeaurora/internal/INetworkCallback;
    invoke-interface {v3}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->FAILED:Z

    monitor-exit v1

    return v2

    .line 510
    .end local v3    # "it":Lorg/codeaurora/internal/INetworkCallback;
    :cond_0
    goto :goto_0

    .line 511
    :cond_1
    const-string v2, "MainServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add callback= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    return v1

    .line 513
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private checkCallPackageIsSystemUiOrModem(I)Z
    .locals 2
    .param p1, "tokenKey"    # I

    .line 905
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 906
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 907
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Client;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 908
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private dumpAidlClients(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 870
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 871
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/internal/INetworkCallback;

    .line 872
    .local v2, "callback":Lorg/codeaurora/internal/INetworkCallback;
    invoke-interface {v2}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 873
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "-> Binder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    .end local v2    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    .end local v3    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 875
    :cond_0
    monitor-exit v0

    .line 876
    return-void

    .line 875
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpInflightRequests(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 879
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 880
    .local v1, "key":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 882
    :cond_0
    return-void
.end method

.method private getDefaultDataPhoneId()I
    .locals 2

    .line 900
    const-string v0, "persist.radio.dds.phone"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "defaultPhoneId":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .locals 2

    .line 349
    sget-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    if-nez v0, :cond_0

    .line 350
    const-string v0, "MainServiceImpl"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 337
    const-class v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    monitor-enter v0

    .line 338
    :try_start_0
    sput-object p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    .line 339
    sget-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    if-nez v1, :cond_0

    .line 340
    new-instance v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    goto :goto_0

    .line 342
    :cond_0
    const-string v1, "MainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    monitor-exit v0

    return-object v1

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initForOem()V
    .locals 6

    .line 199
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandlerInit:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 203
    aget-boolean v2, v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOemHandlerInit :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->m5gStatus:[I

    aget v4, v4, v1

    invoke-virtual {v2, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private isClientValid(Lorg/codeaurora/internal/Client;)Z
    .locals 6
    .param p1, "client"    # Lorg/codeaurora/internal/Client;

    .line 545
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/codeaurora/internal/Client;->getCallback()Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 550
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 551
    .local v3, "it":Lorg/codeaurora/internal/INetworkCallback;
    invoke-interface {v3}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/codeaurora/internal/Client;->getCallback()Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v5

    invoke-interface {v5}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 552
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 554
    .end local v3    # "it":Lorg/codeaurora/internal/INetworkCallback;
    :cond_1
    goto :goto_0

    .line 555
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This client is unregistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return v0

    .line 555
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 546
    :cond_3
    :goto_1
    const-string v1, "MainServiceImpl"

    const-string v2, "Invalid client"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return v0
.end method

.method private on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrConfigType"    # Lorg/codeaurora/internal/NrConfigType;

    .line 720
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 721
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 723
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on5gConfigInfo: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 724
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 723
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 726
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 728
    :cond_0
    monitor-exit v1

    .line 731
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 728
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "nrConfigType":Lorg/codeaurora/internal/NrConfigType;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 729
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "nrConfigType":Lorg/codeaurora/internal/NrConfigType;
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gConfigInfo: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "enableStatus"    # Z

    .line 642
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 643
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 645
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on5gStatus: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 646
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 645
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 648
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 650
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    :try_start_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->m5gStatus:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    aput v4, v1, p1

    .line 654
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 655
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    const/16 v4, 0x3eb

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    const/16 v1, 0x3ee

    if-eqz p4, :cond_2

    .line 657
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getDefaultDataPhoneId()I

    move-result v5

    if-ne p1, v5, :cond_3

    .line 658
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 662
    :cond_2
    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 664
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    .line 665
    if-eqz p4, :cond_4

    move v2, v3

    .line 664
    :cond_4
    invoke-virtual {v5, v4, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 667
    :cond_5
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandlerInit:[Z

    aput-boolean v3, v1, p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 672
    .end local v0    # "tokenKey":I
    :goto_3
    goto :goto_4

    .line 650
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "enableStatus":Z
    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 670
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "enableStatus":Z
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatus: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void
.end method

.method private onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "bearerStatus"    # Lorg/codeaurora/internal/BearerAllocationStatus;

    .line 737
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 738
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 740
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAnyNrBearerAllocation: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 741
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 740
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 743
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 745
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAllocationBear:I

    .line 748
    if-lez v1, :cond_1

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 756
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 757
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAllocationBear:I

    invoke-virtual {v3, v2, v4, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bearerStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 764
    .end local v0    # "tokenKey":I
    :cond_2
    goto :goto_1

    .line 745
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "bearerStatus":Lorg/codeaurora/internal/BearerAllocationStatus;
    :try_start_3
    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 762
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "bearerStatus":Lorg/codeaurora/internal/BearerAllocationStatus;
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatus: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;

    .line 822
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 823
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 825
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEnableEndc: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 826
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 825
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-interface {v3, p1, p2, p3}, Lorg/codeaurora/internal/INetworkCallback;->onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 828
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 830
    :cond_0
    monitor-exit v1

    .line 833
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 830
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 831
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableEndc: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "enableStatus"    # Z

    .line 838
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 839
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 841
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEndcStatus: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 842
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 841
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 844
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 846
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 848
    :try_start_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 849
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 850
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    .line 851
    if-eqz p4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 850
    :goto_1
    invoke-virtual {v3, v2, v4, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 856
    .end local v0    # "tokenKey":I
    :cond_2
    goto :goto_2

    .line 846
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "enableStatus":Z
    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 854
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "enableStatus":Z
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEndcStatus: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "dcParam"    # Lorg/codeaurora/internal/DcParam;

    .line 677
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 678
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 680
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNrDcParam: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 681
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 680
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 683
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 685
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    const/4 v1, -0x1

    .line 688
    .local v1, "has5G":I
    :try_start_2
    invoke-virtual {p4}, Lorg/codeaurora/internal/DcParam;->getEndc()I

    move-result v2

    invoke-virtual {p4}, Lorg/codeaurora/internal/DcParam;->getDcnr()I

    move-result v3

    and-int v1, v2, v3

    .line 689
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 690
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mOemHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 697
    .end local v0    # "tokenKey":I
    .end local v1    # "has5G":I
    :cond_1
    goto :goto_1

    .line 685
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "dcParam":Lorg/codeaurora/internal/DcParam;
    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 695
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "dcParam":Lorg/codeaurora/internal/DcParam;
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatus: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrIconType"    # Lorg/codeaurora/internal/NrIconType;

    .line 787
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 788
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :try_start_1
    const-string v2, "0"

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isChinaTelecom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isChinaMobile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    .line 791
    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 793
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->m5gStatus:[I

    aget v3, v3, p1

    if-ne v3, v2, :cond_1

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result v3

    if-nez v3, :cond_1

    .line 794
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getDefaultDataPhoneId()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 795
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->checkCallPackageIsSystemUiOrModem(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 801
    .local v3, "isNrValidCell":Z
    if-eqz v3, :cond_1

    .line 802
    invoke-virtual {p4, v2}, Lorg/codeaurora/internal/NrIconType;->set(I)V

    .line 803
    const-string v2, "MainServiceImpl"

    const-string v4, "set NR Basic"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v3    # "isNrValidCell":Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 809
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNrIconType: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 810
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 809
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 812
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 814
    :cond_2
    monitor-exit v1

    .line 817
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 814
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "nrIconType":Lorg/codeaurora/internal/NrIconType;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 815
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "nrIconType":Lorg/codeaurora/internal/NrIconType;
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrIconType: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "signalStrength"    # Lorg/codeaurora/internal/SignalStrength;

    .line 770
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 771
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 773
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrength: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 774
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 773
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 776
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 778
    :cond_0
    monitor-exit v1

    .line 781
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 778
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "signalStrength":Lorg/codeaurora/internal/SignalStrength;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 779
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "signalStrength":Lorg/codeaurora/internal/SignalStrength;
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatus: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "ulInfo"    # Lorg/codeaurora/internal/UpperLayerIndInfo;

    .line 703
    :try_start_0
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 704
    .local v0, "tokenKey":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 706
    .local v3, "callback":Lorg/codeaurora/internal/INetworkCallback;
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpperLayerIndInfo: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 707
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 706
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-interface {v3, p1, p2, p3, p4}, Lorg/codeaurora/internal/INetworkCallback;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 709
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    nop

    .end local v3    # "callback":Lorg/codeaurora/internal/INetworkCallback;
    goto :goto_0

    .line 711
    :cond_0
    monitor-exit v1

    .line 714
    .end local v0    # "tokenKey":I
    goto :goto_1

    .line 711
    .restart local v0    # "tokenKey":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .end local p1    # "slotId":I
    .end local p2    # "token":Lorg/codeaurora/internal/Token;
    .end local p3    # "status":Lorg/codeaurora/internal/Status;
    .end local p4    # "ulInfo":Lorg/codeaurora/internal/UpperLayerIndInfo;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 712
    .end local v0    # "tokenKey":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .restart local p1    # "slotId":I
    .restart local p2    # "token":Lorg/codeaurora/internal/Token;
    .restart local p3    # "status":Lorg/codeaurora/internal/Status;
    .restart local p4    # "ulInfo":Lorg/codeaurora/internal/UpperLayerIndInfo;
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpperLayerIndInfo: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private removeCallback(Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 6
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;

    .line 518
    invoke-interface {p1}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 519
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback: callback= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 521
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/INetworkCallback;

    .line 522
    .local v3, "it":Lorg/codeaurora/internal/INetworkCallback;
    invoke-interface {v3}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 523
    const-string v2, "MainServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove callback= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 525
    monitor-exit v1

    return-void

    .line 527
    .end local v3    # "it":Lorg/codeaurora/internal/INetworkCallback;
    :cond_0
    goto :goto_0

    .line 528
    :cond_1
    monitor-exit v1

    .line 529
    return-void

    .line 528
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeClientFromInflightRequests(Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 8
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;

    .line 532
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 534
    .local v2, "key":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    .line 535
    .local v3, "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    iget-object v4, v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v4}, Lorg/codeaurora/internal/Client;->getCallback()Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v4

    invoke-interface {v4}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 536
    const-string v4, "MainServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeClientFromInflightRequests: Token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 537
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 536
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .end local v2    # "key":I
    .end local v3    # "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    :cond_0
    goto :goto_0

    .line 541
    :cond_1
    monitor-exit v0

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public disable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable5g: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 403
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "disable5g"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->disable5g(ILorg/codeaurora/internal/Token;)V

    .line 405
    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printwriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 886
    move-object v0, p2

    .line 887
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "5G-Middleware:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHidlConnectionInterface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    const-string v1, "AIDL clients : "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->dumpAidlClients(Ljava/io/PrintWriter;)V

    .line 891
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 893
    const-string v1, "Inflight requests : "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->dumpInflightRequests(Ljava/io/PrintWriter;)V

    .line 895
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 896
    return-void
.end method

.method public enable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 389
    .local v0, "uid":I
    sget-object v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable5g: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v2

    .line 394
    .local v2, "token":Lorg/codeaurora/internal/Token;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v6, "Enable5g"

    invoke-direct {v5, p0, v2, v6, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v3, p1, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->enable5g(ILorg/codeaurora/internal/Token;)V

    .line 396
    return-object v2
.end method

.method public enable5gOnly(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5gOnly: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 411
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableEndc(IZLorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z
    .param p3, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEndc: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct {p0, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 486
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "enableEndc"

    invoke-direct {v3, p0, v0, v4, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->enableEndc(IZLorg/codeaurora/internal/Token;)V

    .line 489
    return-object v0
.end method

.method public getAidlClientsCount()I
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInflightRequestsCount()I
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gConfigInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 466
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "query5gConfigInfo"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->query5gConfigInfo(ILorg/codeaurora/internal/Token;)V

    .line 469
    return-object v0
.end method

.method public query5gStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 418
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "query5gStatus"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->query5gStatus(ILorg/codeaurora/internal/Token;)V

    .line 420
    return-object v0
.end method

.method public queryEndcStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryEndcStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 496
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryEndcStatus"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryEndcStatus(ILorg/codeaurora/internal/Token;)V

    .line 499
    return-object v0
.end method

.method public queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrBearerAllocation: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 436
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrBearerAllocation"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrBearerAllocation(ILorg/codeaurora/internal/Token;)V

    .line 439
    return-object v0
.end method

.method public queryNrDcParam(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrDcParam: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 427
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrDcParam"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrDcParam(ILorg/codeaurora/internal/Token;)V

    .line 429
    return-object v0
.end method

.method public queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrIconType: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 476
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrIconType"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrIconType(ILorg/codeaurora/internal/Token;)V

    .line 479
    return-object v0
.end method

.method public queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrSignalStrength: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 446
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryNrSignalStrength"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryNrSignalStrength(ILorg/codeaurora/internal/Token;)V

    .line 449
    return-object v0
.end method

.method public queryUpperLayerIndInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryUpperLayerIndInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->generateNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 456
    .local v0, "token":Lorg/codeaurora/internal/Token;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    const-string v4, "queryUpperLayerIndInfo"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Ljava/lang/String;Lorg/codeaurora/internal/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->queryUpperLayerIndInfo(ILorg/codeaurora/internal/Token;)V

    .line 459
    return-object v0
.end method

.method public registerCallback(Ljava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)Lorg/codeaurora/internal/Client;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/codeaurora/internal/INetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "client":Lorg/codeaurora/internal/Client;
    invoke-interface {p2}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 565
    .local v1, "binder":Landroid/os/IBinder;
    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/INetworkCallback;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 567
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 568
    .local v2, "uid":I
    sget-object v3, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "callerPackageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerCallback: uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callerPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "binder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MainServiceImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 573
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->addCallback(Lorg/codeaurora/internal/INetworkCallback;)Z

    move-result v4

    iget-boolean v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->SUCCESS:Z

    if-ne v4, v6, :cond_0

    .line 574
    new-instance v4, Lorg/codeaurora/internal/Client;

    iget v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mClientIndex:I

    invoke-direct {v4, v6, v2, p1, p2}, Lorg/codeaurora/internal/Client;-><init>(IILjava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)V

    move-object v0, v4

    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerCallback: client = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v4, "android.uid.systemui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerCallback callerPackageName is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " save client: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mSystemUIClient:Lorg/codeaurora/internal/Client;

    goto :goto_0

    .line 584
    :cond_0
    const-string v4, "registerCallback: callback could not be added."

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_1
    :goto_0
    return-object v0
.end method

.method retrieveCallbacks(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "tokenKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/internal/INetworkCallback;",
            ">;"
        }
    .end annotation

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/internal/INetworkCallback;>;"
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 623
    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;

    .line 624
    .local v1, "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    if-eqz v1, :cond_1

    .line 625
    iget-object v2, v1, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;->mClient:Lorg/codeaurora/internal/Client;

    .line 626
    .local v2, "client":Lorg/codeaurora/internal/Client;
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->isClientValid(Lorg/codeaurora/internal/Client;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 627
    invoke-virtual {v2}, Lorg/codeaurora/internal/Client;->getCallback()Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 629
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This client is invalid now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MainServiceImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .end local v1    # "txn":Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Transaction;
    .end local v2    # "client":Lorg/codeaurora/internal/Client;
    :cond_1
    :goto_0
    goto :goto_1

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mCallbackList:Ljava/util/ArrayList;

    .line 636
    :goto_1
    return-object v0
.end method

.method public setHidlClient(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;)V
    .locals 1
    .param p1, "hidlClient"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    .line 382
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionInterface:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;

    .line 383
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mHidlConnectionCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    invoke-interface {p1, v0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;->registerCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V

    .line 384
    return-void
.end method

.method public setLooper(Landroid/os/Looper;)V
    .locals 1
    .param p1, "workerLooper"    # Landroid/os/Looper;

    .line 378
    new-instance v0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$WorkerHandler;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 379
    return-void
.end method

.method public triggerQueryIcon()V
    .locals 3

    .line 914
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mSystemUIClient:Lorg/codeaurora/internal/Client;

    if-eqz v0, :cond_0

    .line 916
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getDefaultDataPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->mSystemUIClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerQueryIcon: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public unRegisterCallback(Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->removeCallback(Lorg/codeaurora/internal/INetworkCallback;)V

    .line 591
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->removeClientFromInflightRequests(Lorg/codeaurora/internal/INetworkCallback;)V

    .line 592
    return-void
.end method
