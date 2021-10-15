.class public Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
.super Ljava/lang/Object;
.source "QtiRadioHidlClient.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;,
        Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QtiRadioHidlClient"

.field private static instanse:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;


# instance fields
.field private final MAX_SLOTS:I

.field private final UNSOL:Lorg/codeaurora/internal/Token;

.field private mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

.field private mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/internal/Token;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSerial:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->instanse:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->MAX_SLOTS:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mSerial:I

    .line 49
    new-instance v1, Lorg/codeaurora/internal/Token;

    invoke-direct {v1, v0}, Lorg/codeaurora/internal/Token;-><init>(I)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->UNSOL:Lorg/codeaurora/internal/Token;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 476
    const-string v0, "QtiRadioHidlClient"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->register()V

    .line 479
    sput-object p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->instanse:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    .line 481
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    .line 42
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->isEnableOrDisableSucess(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    .line 42
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->UNSOL:Lorg/codeaurora/internal/Token;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(I)Lorg/codeaurora/internal/Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    .line 42
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lorg/codeaurora/internal/DcParam;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 42
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lorg/codeaurora/internal/DcParam;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/BearerAllocationStatus;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidlBearerStatus2Aidl(I)Lorg/codeaurora/internal/BearerAllocationStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lorg/codeaurora/internal/UpperLayerIndInfo;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    .line 42
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lorg/codeaurora/internal/UpperLayerIndInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/NrConfigType;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidlConfigType2Aidl(I)Lorg/codeaurora/internal/NrConfigType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/NrIconType;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidlNrIconType2Aidl(I)Lorg/codeaurora/internal/NrIconType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lorg/codeaurora/internal/SignalStrength;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    .line 42
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lorg/codeaurora/internal/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lorg/codeaurora/internal/DcParam;
    .locals 3
    .param p1, "dcParam"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 62
    new-instance v0, Lorg/codeaurora/internal/DcParam;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->endc:I

    iget v2, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->dcnr:I

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/internal/DcParam;-><init>(II)V

    return-object v0
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lorg/codeaurora/internal/SignalStrength;
    .locals 3
    .param p1, "signalStrength"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    .line 80
    new-instance v0, Lorg/codeaurora/internal/SignalStrength;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->rsrp:I

    iget v2, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->snr:I

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/internal/SignalStrength;-><init>(II)V

    return-object v0
.end method

.method private convertHidl2Aidl(I)Lorg/codeaurora/internal/Status;
    .locals 2
    .param p1, "rilErrorCode"    # I

    .line 84
    new-instance v0, Lorg/codeaurora/internal/Status;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lorg/codeaurora/internal/Status;-><init>(I)V

    return-object v0
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lorg/codeaurora/internal/UpperLayerIndInfo;
    .locals 3
    .param p1, "ulInfo"    # Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    .line 67
    new-instance v0, Lorg/codeaurora/internal/UpperLayerIndInfo;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->plmnInfoList:I

    iget v2, p1, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->upplerLayerInd:I

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(II)V

    return-object v0
.end method

.method private convertHidlBearerStatus2Aidl(I)Lorg/codeaurora/internal/BearerAllocationStatus;
    .locals 1
    .param p1, "bearerStatus"    # I

    .line 88
    new-instance v0, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/BearerAllocationStatus;-><init>(I)V

    return-object v0
.end method

.method private convertHidlConfigType2Aidl(I)Lorg/codeaurora/internal/NrConfigType;
    .locals 1
    .param p1, "configType"    # I

    .line 71
    new-instance v0, Lorg/codeaurora/internal/NrConfigType;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/NrConfigType;-><init>(I)V

    return-object v0
.end method

.method private convertHidlNrIconType2Aidl(I)Lorg/codeaurora/internal/NrIconType;
    .locals 1
    .param p1, "iconType"    # I

    .line 75
    new-instance v0, Lorg/codeaurora/internal/NrIconType;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/NrIconType;-><init>(I)V

    return-object v0
.end method

.method public static getInstanse()Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .locals 1

    .line 700
    sget-object v0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->instanse:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    return-object v0
.end method

.method private getNextToken()Lorg/codeaurora/internal/Token;
    .locals 2

    .line 484
    new-instance v0, Lorg/codeaurora/internal/Token;

    iget v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mSerial:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mSerial:I

    invoke-direct {v0, v1}, Lorg/codeaurora/internal/Token;-><init>(I)V

    return-object v0
.end method

.method private getPhoneCount()I
    .locals 1

    .line 57
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method private getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
    .locals 1

    .line 459
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method private isEnableOrDisableSucess(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .line 92
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private register()V
    .locals 4

    .line 470
    const-string v0, "QtiRadioHidlClient"

    const-string v1, "Register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getPhoneCount()I

    move-result v1

    .line 472
    .local v1, "phones":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/-$$Lambda$QtiRadioHidlClient$fDxYx_TYBjQqOTTFKsiClnVL8ic;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/-$$Lambda$QtiRadioHidlClient$fDxYx_TYBjQqOTTFKsiClnVL8ic;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 474
    return-void
.end method

.method private setCallbacks(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 463
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v0

    .line 464
    .local v0, "factory":Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;

    invoke-direct {v2, p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)V

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;

    invoke-direct {v3, p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)V

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->setCallbacks(Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;)V

    .line 467
    return-void
.end method


# virtual methods
.method public disable5g(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable5g: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 507
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->disable5g(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    nop

    .line 517
    return-void

    .line 510
    :catch_0
    move-exception v3

    .line 511
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    throw v3
.end method

.method public enable5g(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5g: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 491
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->enable5g(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    nop

    .line 501
    return-void

    .line 494
    :catch_0
    move-exception v3

    .line 495
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    throw v3
.end method

.method public enable5gOnly(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5gOnly: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 523
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->enable5gOnly(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    nop

    .line 533
    return-void

    .line 526
    :catch_0
    move-exception v3

    .line 527
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 531
    throw v3
.end method

.method public enableEndc(IZLorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "enable"    # Z
    .param p3, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEndc: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {p3}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 651
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->enableEndc(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    nop

    .line 661
    return-void

    .line 654
    :catch_0
    move-exception v3

    .line 655
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 659
    throw v3
.end method

.method public generateNextToken()Lorg/codeaurora/internal/Token;
    .locals 1

    .line 681
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$register$0$QtiRadioHidlClient(I)V
    .locals 0
    .param p1, "i"    # I

    .line 473
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->setCallbacks(I)V

    return-void
.end method

.method public query5gConfigInfo(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gConfigInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 619
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->query5gConfigInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    nop

    .line 629
    return-void

    .line 622
    :catch_0
    move-exception v3

    .line 623
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 627
    throw v3
.end method

.method public query5gStatus(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 539
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->query5gStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    nop

    .line 549
    return-void

    .line 542
    :catch_0
    move-exception v3

    .line 543
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 547
    throw v3
.end method

.method public queryEndcStatus(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryEndcStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 667
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryEndcStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    nop

    .line 677
    return-void

    .line 670
    :catch_0
    move-exception v3

    .line 671
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 675
    throw v3
.end method

.method public queryNrBearerAllocation(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrBearerAllocation: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 571
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrBearerAllocation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    nop

    .line 581
    return-void

    .line 574
    :catch_0
    move-exception v3

    .line 575
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 579
    throw v3
.end method

.method public queryNrDcParam(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrDcParam: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 555
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrDcParam(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    nop

    .line 565
    return-void

    .line 558
    :catch_0
    move-exception v3

    .line 559
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 563
    throw v3
.end method

.method public queryNrIconType(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrIconType: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 635
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrIconType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    nop

    .line 645
    return-void

    .line 638
    :catch_0
    move-exception v3

    .line 639
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 643
    throw v3
.end method

.method public queryNrSignalStrength(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrSignalStrength: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 587
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrSignalStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    nop

    .line 597
    return-void

    .line 590
    :catch_0
    move-exception v3

    .line 591
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 592
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 595
    throw v3
.end method

.method public queryUpperLayerIndInfo(ILorg/codeaurora/internal/Token;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryUpperLayerIndInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioHidlClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result v0

    .line 603
    .local v0, "serial":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryUpperLayerIndInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    nop

    .line 613
    return-void

    .line 606
    :catch_0
    move-exception v3

    .line 607
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Exception = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 611
    throw v3
.end method

.method public registerCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback: callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioHidlClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 688
    return-void
.end method

.method public unRegisterCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterCallback: callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioHidlClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    if-ne v0, p1, :cond_0

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 696
    :cond_0
    return-void
.end method
